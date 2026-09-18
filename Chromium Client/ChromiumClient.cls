"Filed out from Dolphin Smalltalk"!

Object subclass: #ChromiumClient
	instanceVariableNames: 'id process socket windowManager remoteObjects callbacks windowMessageId readyEvent'
	classVariableNames: 'Singleton'
	poolDictionaries: 'Win32Constants'
	classInstanceVariableNames: ''!

ChromiumClient guid: (GUID fromString: '{0e5e8432-e157-4367-8c28-26444a036fa5}')!

ChromiumClient comment: ''!

!ChromiumClient categoriesForClass!Unclassified! !

!ChromiumClient methodsFor!

connect
	| address runtime |
	socket ifNotNil: [^self].
	address := NET_Address fromString: 'localhost'.
	address waitUntilResolved.
	socket := NET_StreamSocket address: address port: 3000.
	runtime := [socket waitUntilConnected] timeToRun.
	Transcript
		display: 'CEF took ' , runtime asMilliseconds truncated displayString , 'ms to receive a connection';
		cr!

createBrowser: url rectangle: rectangle html: html parentWindowHandle: parentWindowHandle windowless: windowless hardwareAccelerated: hardwareAccelerated for: anObject
	self send: (Dictionary new
				at: #class put: #Client;
				at: #method put: #CreateBrowser;
				at: #instanceId put: id;
				at: #id put: GUID newUnique idlString;
				at: #arguments
					put: (Dictionary new
							at: #url put: url asString;
							at: #rectangle put: rectangle asCefRect asDictionary;
							at: #html put: html;
							at: #parentWindowHandle put: parentWindowHandle asInteger;
							at: #windowless put: windowless;
							at: #hardwareAccelerated put: hardwareAccelerated;
							yourself);
				yourself)
		onSuccess: 
			[:browserId |
			anObject id: browserId.
			remoteObjects at: browserId put: anObject]!

createHttpRequest: url method: method headers: headers body: body for: anObject
	| arguments |
	arguments := Dictionary new
				at: #url put: url asString;
				at: #method put: method;
				at: #headers put: headers;
				at: #body put: body;
				yourself.
	self send: (Dictionary new
				at: #class put: #Client;
				at: #method put: #CreateHttpRequest;
				at: #instanceId put: id;
				at: #id put: GUID newUnique idlString;
				at: #arguments put: arguments;
				yourself)
		onSuccess: [:networkRequestId | remoteObjects at: networkRequestId put: anObject]!

disconnect
	remoteObjects removeAll.
	callbacks removeAll.
	socket ifNil: [^self].
	[socket destroy] on: Error
		do: 
			[:error |
			Transcript
				display: error;
				cr].
	socket := nil!

forceStop
	process := nil.
	socket := nil.
	callbacks removeAll!

forwardCallback: aDictionary to: anObject
	| selector arguments |
	selector := ((aDictionary at: #method) uncapitalized , ':') asSymbol.
	arguments := aDictionary at: #arguments.
	^anObject perform: selector with: arguments!

initialize
	super initialize.
	id := 1.
	remoteObjects := Dictionary new.
	callbacks := Dictionary new.
	windowManager := SDLWindowManager current!

isReady
	| waitResult |
	waitResult := KernelLibrary default waitForSingleObject: readyEvent dwMilliseconds: 0.
	waitResult = WAIT_TIMEOUT ifTrue: [^true].
	^false!

isRunning
	^process notNil and: [process isAlive and: [socket notNil]]!

receiveMessage
	| lengthBytes length payload jsonString |
	lengthBytes := socket readBytes: 4.
	lengthBytes ifNil: [^nil].
	length := lengthBytes readStream nextSDWORD.
	payload := socket readBytes: length.
	jsonString := Utf8String fromByteArray: payload.
	^STONJSON fromString: jsonString!

receiveMessages
	| messages messageJson |
	messages := OrderedCollection new.
	messageJson := [self receiveMessage] on: Error
				do: 
					[:error |
					Transcript
						display: error;
						cr.
					self error: error.
					self disconnect.
					^messages].
	[messageJson notNil] whileTrue: 
			[messages add: messageJson.
			messageJson := self receiveMessage].
	^messages!

respond: requestId
	self respond: requestId value: nil!

respond: aString value: anObject
	id ifNil: [^self].
	self send: (Dictionary new
				at: #requestId put: aString;
				at: #success put: true;
				at: #returnValue put: anObject;
				at: #error put: nil;
				yourself)!

restart
	self
		stop;
		start!

send: aDictionary
	| jsonBytes |
	socket ifNil: [^self].
	jsonBytes := (STONJSON toString: aDictionary) asByteArray.
	socket
		writeInteger: jsonBytes size;
		writeBytes: jsonBytes!

send: aDictionary onSuccess: aBlock
	| requestId |
	requestId := aDictionary at: #id.
	callbacks at: requestId put: aBlock.
	self send: aDictionary!

send: aDictionary wait: anInteger
	| requestId semaphore |
	Processor isActiveMain
		ifTrue: 
			[self
				error: 'Waiting for a RPC response in the Main process will freeze the image. Send this request in a separate process or run asynchronously using #send:onSuccess:.'].
	semaphore := Semaphore new.
	requestId := aDictionary at: #id.
	callbacks at: requestId put: semaphore.
	self send: aDictionary.
	semaphore wait: anInteger.
	^callbacks at: requestId!

shutdown
	socket ifNil: [^self].
	self send: (Dictionary new
				at: #class put: #Client;
				at: #method put: #Shutdown;
				at: #id put: GUID newUnique idlString;
				yourself)!

start
	self isRunning ifTrue: [^self].
	self
		startProcess;
		waitUntilReady;
		connect.
	windowManager registerFrameCallback: [self update] for: self!

startProcess
	| processId messageWindowHandle commandLine |
	(process notNil and: [process isAlive]) ifTrue: [^self].
	processId := KernelLibrary default getCurrentProcessId.
	messageWindowHandle := VMLibrary default registryAt: #MsgWndHandle.
	windowMessageId := UserLibrary default
				registerWindowMessage: ('ChromiumRPC_<1d>' expandMacrosWith: processId).
	commandLine := 'cef/CefProcessRunner --application-process-id=<1d> --application-message-window-handle=<2d> --window-message-id=<3d>'
				expandMacrosWith: processId
				with: messageWindowHandle asInteger
				with: windowMessageId.
	readyEvent := KernelLibrary default
				createEvent: nil
				bManualReset: true
				bInitialState: false
				lpName: 'ChromiumSocketReady'.
	process := ExternalProcess new
				directory: (FileLocator imageRelative: 'cef');
				commandLine: commandLine;
				stdoutFilename: 'cef\cef.out';
				stderrFilename: 'cef\cef.err';
				executeAsync!

stop
	self isRunning ifFalse: [^self].
	self
		shutdown;
		disconnect;
		stopProcess.
	remoteObjects removeAll.
	callbacks isEmpty
		ifFalse: 
			[Transcript
				display: ('WARNING: <1d> unanswered callbacks <2d>' expandMacrosWith: callbacks size with: callbacks);
				cr].
	callbacks removeAll.
	windowManager deregisterFrameCallbacksFor: self!

stopProcess
	process ifNil: [^self].
	process kill.
	[process isAlive] whileTrue: [(Delay forMilliseconds: 100) wait].
	process close.
	process := nil!

update
	| messages |
	socket ifNil: [^self].
	messages := self receiveMessages.
	messages do: 
			[:each |
			| requestId |
			requestId := each at: #requestId ifAbsent: [nil].
			requestId
				ifNil: 
					[| remoteObject |
					remoteObject := remoteObjects at: (each at: #instanceId) ifAbsent: [nil].
					remoteObject
						ifNotNil: 
							[| returnValue |
							returnValue := self forwardCallback: each to: remoteObject.
							self respond: (each at: #id) value: returnValue]]
				ifNotNil: 
					[| response blockOrSemaphore |
					response := RpcResponse fromDictionary: each.
					response success
						ifTrue: 
							[blockOrSemaphore := callbacks removeKey: requestId.
							blockOrSemaphore isBlock
								ifTrue: [blockOrSemaphore value: response returnValue]
								ifFalse: 
									[callbacks at: requestId put: response returnValue.
									blockOrSemaphore signal]]
						ifFalse: [response inspect]]]!

waitForResponse: aUUID
	[callbacks includesKey: aUUID] whileFalse: [(Delay forMilliseconds: 100) wait].
	^callbacks at: aUUID!

waitUntilReady
	| runtime |
	runtime := [KernelLibrary default waitForSingleObject: readyEvent dwMilliseconds: INFINITE]
				timeToRun.
	Transcript
		display: 'CEF took ' , runtime asMilliseconds truncated displayString , 'ms to start up';
		cr! !

!ChromiumClient categoriesForMethods!
connect!private! !
createBrowser:rectangle:html:parentWindowHandle:windowless:hardwareAccelerated:for:!public! !
createHttpRequest:method:headers:body:for:!public! !
disconnect!public! !
forceStop!public! !
forwardCallback:to:!private! !
initialize!public! !
isReady!public! !
isRunning!public!rpc! !
receiveMessage!private! !
receiveMessages!private! !
respond:!public! !
respond:value:!public! !
restart!public! !
send:!public! !
send:onSuccess:!public! !
send:wait:!public! !
shutdown!private! !
start!public! !
startProcess!private! !
stop!public! !
stopProcess!private! !
update!public! !
waitForResponse:!private! !
waitUntilReady!private! !
!

!ChromiumClient class methodsFor!

current
	Singleton ifNil: [Singleton := super new initialize].
	^Singleton!

initialize
	"self initialize"

	(SessionManager current)
		when: #sessionStarted
			send: #onStartup
			to: self;
		when: #sessionStopped
			send: #onShutdown
			to: self!

new
	^self shouldNotImplement!

onShutdown
	Singleton ifNil: [^self].
	Singleton stop.
	Singleton := nil!

onStartup
	Singleton ifNil: [^self].
	Singleton forceStop.
	Singleton := nil!

reset
	Singleton := nil!

rpcClassName
	^#Client!

update
	Singleton ifNil: [^self].
	Singleton update! !

!ChromiumClient class categoriesForMethods!
current!public! !
initialize!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
reset!public! !
rpcClassName!public! !
update!public! !
!

