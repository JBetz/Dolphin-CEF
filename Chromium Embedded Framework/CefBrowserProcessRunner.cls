"Filed out from Dolphin Smalltalk"!

Object subclass: #CefBrowserProcessRunner
	instanceVariableNames: 'args app settings isRunning messageLoopProcess'
	classVariableNames: ''
	poolDictionaries: 'CefConstants'
	classInstanceVariableNames: 'Singleton'!
CefBrowserProcessRunner guid: (GUID fromString: '{a2d64bd2-4dd7-431d-a764-321e2869bfba}')!
CefBrowserProcessRunner comment: ''!
!CefBrowserProcessRunner categoriesForClass!Kernel-Objects! !
!CefBrowserProcessRunner methodsFor!

ensureRunning
	settings ifNil: [self runMainProcess].
	(messageLoopProcess notNil and: [messageLoopProcess isAlive])
		ifFalse: [self startMessageLoopProcess].
	self resume!

executeCefProcess
	| handle resultCode |
	handle := VMLibrary default applicationHandle.
	args := CefMainArgs new.
	args instance: handle.
	resultCode := self library
				executeProcess_args: args
				application: nil
				windowsSandboxInfo: nil.
	resultCode ~= -1 ifTrue: [self error: 'Error executing CEF process']!

getBrowserProcessHandler: aCefApp
	^app getBrowserProcessHandler: aCefApp!

getDefaultClient: browserProcessHandler
	^0!

getRenderProcessHandler: aCefApp
	^app getRenderProcessHandler: aCefApp!

getResourceBundleHandler: aCefApp
	^app getResourceBundleHandler: aCefApp!

initialize
	super initialize.
	isRunning := false!

initializeApp
	app := CefApp new.
	app
		delegate: self;
		enableBrowserProcessHandlerAndDelegateTo: self!

initializeCef
	| resultCode |
	self useMultiThreadedMessageLoop ifFalse: [self initializeApp].
	resultCode := self library
				initialize_args: args
				settings: settings
				application: app
				windowsSandboxInfo: nil.
	resultCode = 0 ifTrue: [Error signal: 'Error initializing CEF']!

initializeSettings
	| subprocessPath logFile cachePath |
	subprocessPath := FileLocator imageRelative localFileSpecFor: 'CefSubprocessRunner.exe'.
	logFile := FileLocator imageRelative localFileSpecFor: 'cef.log'.
	cachePath := FileLocator imageRelative localFileSpecFor: 'cef-cache'.
	File createDirectoryPath: cachePath.
	settings := CefSettings new.
	settings
		browser_subprocess_path: subprocessPath asCefString;
		log_severity: LOGSEVERITY_DEFAULT;
		log_file: logFile asCefString;
		cache_path: cachePath asCefString;
		no_sandbox: true;
		windowless_rendering_enabled: true!

iterate
	isRunning
		ifTrue: 
			[self library doMessageLoopWork.
			[self iterate] postToInputQueue]!

library
	^CefLibrary default!

onBeforeChildProcessLaunch: aCefBrowserProcessHandler commandLine: aCefCommandLine 
	^0!

onBeforeCommandLineProcessing: cefApp processType: processType commandLine: commandLine
	^0!

onContextInitialized: aCefBrowserProcessHandler
	^0!

onRegisterCustomPreferences: aCefBrowserProcessHandler type: anInteger registrar: aCefPreferencesRegistrar
	^0!

onRegisterCustomSchemes: cefApp registrar: registrar
	^0!

onScheduleMessagePumpWork: browserProcessHandler delayMs: delayMs
	^0!

pause
	isRunning := false.
	messageLoopProcess priority: Processor systemBasePriority!

resume
	isRunning := true.
	messageLoopProcess priority: Processor userSchedulingPriority - 1!

runMainProcess
	| cefMask |
	cefMask := Float exceptionMask | CRTConstants._EM_ZERODIVIDE | CRTConstants._EM_INVALID.
	Float exceptionMask: cefMask.
	self
		executeCefProcess;
		initializeSettings;
		initializeCef.
	isRunning := true!

startMessageLoopProcess
	| delay |
	delay := Delay forMilliseconds: 1000 / 30.
	messageLoopProcess := 
			[
			[isRunning ifTrue: [self library doMessageLoopWork].
			delay wait] repeat]
					forkAt: Processor userSchedulingPriority - 1.
	messageLoopProcess name: 'CEF'!

stop
	self stopMessageLoopProcess.
	self library shutdown.
	args := nil.
	app := nil.
	settings := nil!

stopMessageLoopProcess
	messageLoopProcess
		ifNotNil: 
			[messageLoopProcess isAlive ifTrue: [messageLoopProcess terminate].
			messageLoopProcess := nil]!

useMultiThreadedMessageLoop
	^settings multi_threaded_message_loop asBoolean! !
!CefBrowserProcessRunner categoriesForMethods!
ensureRunning!public! !
executeCefProcess!private! !
getBrowserProcessHandler:!cef event handler!private! !
getDefaultClient:!cef event handler!private! !
getRenderProcessHandler:!cef event handler!private! !
getResourceBundleHandler:!cef event handler!private! !
initialize!private! !
initializeApp!private! !
initializeCef!private! !
initializeSettings!private! !
iterate!private! !
library!private! !
onBeforeChildProcessLaunch:commandLine:!cef event handler!private! !
onBeforeCommandLineProcessing:processType:commandLine:!cef event handler!private! !
onContextInitialized:!cef event handler!private! !
onRegisterCustomPreferences:type:registrar:!cef event handler!private! !
onRegisterCustomSchemes:registrar:!cef event handler!private! !
onScheduleMessagePumpWork:delayMs:!cef event handler!private! !
pause!public! !
resume!public! !
runMainProcess!public! !
startMessageLoopProcess!private! !
stop!public! !
stopMessageLoopProcess!public! !
useMultiThreadedMessageLoop!private! !
!

!CefBrowserProcessRunner class methodsFor!

ensureRunning
	self new ensureRunning!

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
	Singleton
		ifNil: 
			[Singleton := super new.
			Singleton initialize].
	^Singleton!

onShutdown
	Singleton ifNil: [^self].
	Singleton stop.
	Singleton := nil!

onStartup
	Singleton ifNil: [^self].
	Singleton stop.
	Singleton := nil!

pause
	self new pause! !
!CefBrowserProcessRunner class categoriesForMethods!
ensureRunning!public! !
initialize!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
pause!public! !
!

