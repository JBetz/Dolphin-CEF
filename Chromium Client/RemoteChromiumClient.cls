"Filed out from Dolphin Smalltalk"!

RemoteChromiumObject subclass: #RemoteChromiumClient
	instanceVariableNames: 'process socket remoteBrowsers callbacks'
	classVariableNames: 'Singleton'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

RemoteChromiumClient guid: (GUID fromString: '{73cc809c-283a-4c54-b384-f8b4ebf6e386}')!

RemoteChromiumClient comment: ''!

!RemoteChromiumClient categoriesForClass!Kernel-Objects! !

!RemoteChromiumClient methodsFor!

connect
	| address |
	address := NET_Address fromString: 'localhost'.
	address waitUntilResolved.
	socket := NET_StreamSocket address: address port: 3000.
	self initializeClient!

createBrowser: aUrl rectangle: aRectangle html: aString for: aRemoteChromiumBrowser
	self send: (Dictionary new
				at: 'class' put: 'Client';
				at: 'method' put: 'CreateBrowser';
				at: 'id' put: GUID newUnique idlString;
				at: 'url' put: aUrl asString;
				at: 'rectangle' put: aRectangle asCefRect asDictionary;
				at: 'html' put: aString;
				yourself)
		onSuccess: 
			[:response |
			| browserId |
			browserId := response at: 'browserId'.
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
	socket ifNil: [self connect]!

initialize
	super initialize.
	remoteBrowsers := Dictionary new.
	callbacks := Dictionary new!

initializeClient
	| kernel processId messageWindowHandle |
	kernel := KernelLibrary default.
	processId := kernel getProcessId: kernel getCurrentProcess.
	messageWindowHandle := VMLibrary default registryAt: #MsgWndHandle.
	self send: (Dictionary new
				at: #class put: #Client;
				at: #method put: #Initialize;
				at: #id put: GUID newUnique idlString;
				at: #clientProcessId put: processId;
				at: #clientMessageWindowHandle put: messageWindowHandle asInteger;
				yourself)
		onSuccess: [:response | ]!

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

run
	| directory |
	directory := FileLocator imageRelative: 'cef'.
	process := ExternalProcess new
				directory: directory;
				commandLine: directory , '\CefProcessRunner';
				executeAsync!

send: aDictionary
	socket ifNil: [^self].
	socket send: aDictionary!

send: aDictionary onSuccess: aBlock
	| requestId |
	requestId := aDictionary at: #id.
	callbacks at: requestId put: aBlock.
	socket send: aDictionary!

shutdown
	self send: (Dictionary new
				at: #class put: #Client;
				at: #method put: #Shutdown;
				at: #id put: GUID newUnique idlString;
				yourself)!

stop
	self
		shutdown;
		disconnect!

update
	| messages |
	socket ifNil: [^self].
	messages := self receiveMessages.
	messages do: 
			[:each |
			| requestId |
			requestId := each at: 'requestId' ifAbsent: [nil].
			requestId
				ifNil: 
					[| browser selector |
					browser := remoteBrowsers at: (each at: 'instanceId') ifAbsent: [nil].
					selector := ((each at: 'method') uncapitalized , ':') asSymbol.
					browser ifNotNil: [browser perform: selector with: each]]
				ifNotNil: 
					[| callback |
					callback := callbacks at: (each at: 'requestId').
					callback value: each]]! !

!RemoteChromiumClient categoriesForMethods!
connect!private! !
createBrowser:rectangle:html:for:!public!rpc! !
disconnect!private! !
ensureRunning!public! !
initialize!public! !
initializeClient!private! !
receiveMessages!private! !
run!private! !
send:!public! !
send:onSuccess:!public! !
shutdown!private! !
stop!public! !
update!public! !
!

!RemoteChromiumClient class methodsFor!

current
	Singleton ifNil: [Singleton := super new initialize].
	^Singleton!

ensureRunning
	self current ensureRunning!

new
	^self shouldNotImplement!

onShutdown
	Singleton ifNil: [^self].
	Singleton stop.
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
new!public! !
onShutdown!public! !
reset!public! !
rpcClassName!public! !
update!public! !
!

