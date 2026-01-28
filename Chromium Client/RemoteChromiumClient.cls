"Filed out from Dolphin Smalltalk"!

RemoteChromiumObject subclass: #RemoteChromiumClient
	instanceVariableNames: 'id process socket remoteBrowsers callbacks windowMessageId'
	classVariableNames: 'Singleton'
	poolDictionaries: 'Win32Constants'
	classInstanceVariableNames: ''!

RemoteChromiumClient guid: (GUID fromString: '{73cc809c-283a-4c54-b384-f8b4ebf6e386}')!

RemoteChromiumClient comment: ''!

!RemoteChromiumClient categoriesForClass!Kernel-Objects! !

!RemoteChromiumClient methodsFor!

connect
	| address |
	address := NET_Address fromString: 'localhost'.
	address waitUntilResolved.
	socket := NET_StreamSocket address: address port: 3000!

createBrowser: aUrl rectangle: aRectangle html: aString for: aRemoteChromiumBrowser
	self send: (Dictionary new
				at: #class put: #Client;
				at: #method put: #CreateBrowser;
				at: #instanceId put: id;
				at: #id put: GUID newUnique idlString;
				at: #arguments
					put: (Dictionary new
							at: #url put: aUrl asString;
							at: #rectangle put: aRectangle asCefRect asDictionary;
							at: #html put: aString;
							yourself);
				yourself)
		onSuccess: 
			[:browserId |
			aRemoteChromiumBrowser id: browserId.
			remoteBrowsers at: browserId put: aRemoteChromiumBrowser]!

disconnect
	socket ifNil: [^self].
	[socket destroy] on: Error
		do: 
			[:error |
			Transcript
				display: error;
				cr].
	socket := nil.
	remoteBrowsers removeAll.
	callbacks removeAll!

ensureRunning
	self start!

forceStop
	process := nil.
	socket := nil!

initialize
	super initialize.
	id := 1.
	remoteBrowsers := Dictionary new.
	callbacks := Dictionary new!

receiveMessages
	| messages messageJson |
	messages := OrderedCollection new.
	messageJson := [socket receive] on: Error
				do: 
					[:error |
					Transcript
						display: error;
						cr.
					self disconnect.
					^messages].
	[messageJson notNil] whileTrue: 
			[messages add: messageJson.
			messageJson := socket receive].
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

send: aDictionary
	socket ifNil: [^self].
	socket send: aDictionary!

send: aDictionary onSuccess: aBlock
	| requestId |
	requestId := aDictionary at: #id.
	callbacks at: requestId put: aBlock.
	socket send: aDictionary!

shutdown
	socket ifNil: [^self].
	self send: (Dictionary new
				at: #class put: #Client;
				at: #method put: #Shutdown;
				at: #id put: GUID newUnique idlString;
				yourself)!

start
	[self startProcess] on: Error
		do: 
			[:error |
			Transcript
				display: ('Error starting Chromium process: <1d>' expandMacrosWith: error);
				cr.
			(Delay forSeconds: 1) wait.
			self start].
	[self connect] on: Error
		do: 
			[:error |
			Transcript
				display: ('Error connecting to Chromium process: <1d>' expandMacrosWith: error);
				cr.
			(Delay forSeconds: 1) wait.
			self start]!

startProcess
	| processId messageWindowHandle commandLine readyEvent |
	(process notNil and: [process isAlive]) ifTrue: [^self].
	processId := KernelLibrary default getCurrentProcessId.
	messageWindowHandle := VMLibrary default registryAt: #MsgWndHandle.
	windowMessageId := UserLibrary default
				registerWindowMessage: ('ChromiumRPC_<1d>' expandMacrosWith: processId).
	commandLine := 'cef/CefProcessRunner --application-process-id=<1d> --application-message-window-handle=<2d> --window-message-id=<3d>'
				expandMacrosWith: processId
				with: messageWindowHandle
				with: windowMessageId.
	readyEvent := KernelLibrary default
				createEvent: nil
				bManualReset: true
				bInitialState: false
				lpName: 'ChromiumSocketReady'.
	process := ExternalProcess new
				directory: (FileLocator imageRelative: 'cef');
				commandLine: commandLine;
				stdoutFilename: 'cef.out';
				stderrFilename: 'cef.err';
				executeAsync.
	KernelLibrary default waitForSingleObject: readyEvent dwMilliseconds: INFINITE!

stop
	self
		shutdown;
		disconnect;
		stopProcess!

stopProcess
	process ifNil: [^self].
	process kill.
	[process isAlive] whileTrue: 
			[Transcript
				display: 'Waiting for Chromium process to terminate ...';
				cr.
			(Delay forSeconds: 1) wait].
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
					[| browser |
					browser := remoteBrowsers at: (each at: #instanceId) ifAbsent: [nil].
					browser
						ifNotNil: 
							[| selector arguments returnValue |
							selector := ((each at: #method) uncapitalized , ':') asSymbol.
							arguments := each at: #arguments.
							returnValue := browser perform: selector with: arguments.
							self respond: (each at: #id) value: returnValue]]
				ifNotNil: 
					[| response callback |
					response := RpcResponse fromDictionary: each.
					callback := callbacks at: requestId.
					response success
						ifTrue: [callback value: response returnValue]
						ifFalse: [self error: response error displayString]]]! !

!RemoteChromiumClient categoriesForMethods!
connect!private! !
createBrowser:rectangle:html:for:!public!rpc! !
disconnect!private! !
ensureRunning!public! !
forceStop!public! !
initialize!public! !
receiveMessages!private! !
respond:!public! !
respond:value:!public! !
send:!public! !
send:onSuccess:!public! !
shutdown!private! !
start!public! !
startProcess!private! !
stop!public! !
stopProcess!private! !
update!public! !
!

!RemoteChromiumClient class methodsFor!

current
	Singleton ifNil: [Singleton := super new initialize].
	^Singleton!

ensureRunning
	self current ensureRunning!

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

!RemoteChromiumClient class categoriesForMethods!
current!public! !
ensureRunning!public! !
initialize!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
reset!public! !
rpcClassName!public! !
update!public! !
!

