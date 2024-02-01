"Filed out from Dolphin Smalltalk"!

Object subclass: #CefBrowserProcessRunner
	instanceVariableNames: 'isRunning args app settings'
	classVariableNames: ''
	poolDictionaries: 'CefConstants'
	classInstanceVariableNames: 'Current'!
CefBrowserProcessRunner guid: (GUID fromString: '{a2d64bd2-4dd7-431d-a764-321e2869bfba}')!
CefBrowserProcessRunner comment: ''!
!CefBrowserProcessRunner categoriesForClass!Kernel-Objects! !
!CefBrowserProcessRunner methodsFor!

ensureRunning
	isRunning ifFalse: [self runMainProcess]!

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
	| useMultiThreadedMessageLoop resultCode |
	useMultiThreadedMessageLoop := settings multi_threaded_message_loop asBoolean.
	useMultiThreadedMessageLoop ifFalse: [self initializeApp].
	resultCode := self library
				initialize_args: args
				settings: settings
				application: app
				windowsSandboxInfo: nil.
	resultCode = 0 ifTrue: [Error signal: 'Error initializing CEF'].
	useMultiThreadedMessageLoop ifFalse: [self iterate]!

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
		windowless_rendering_enabled: true;
		multi_threaded_message_loop: true!

iterate
	isRunning ifTrue: [self library doMessageLoopWork].
	[self iterate] postToInputQueue!

library
	^CefLibrary default!

onBeforeChildProcessLaunch: aCefBrowserProcessHandler commandLine: aCefCommandLine !

onBeforeCommandLineProcessing: cefApp processType: processType commandLine: commandLine!

onContextInitialized: aCefBrowserProcessHandler!

onRegisterCustomPreferences: aCefBrowserProcessHandler type: anInteger registrar: aCefPreferencesRegistrar
	!

onRegisterCustomSchemes: cefApp registrar: registrar
	!

onScheduleMessagePumpWork: browserProcessHandler delayMs: delayMs!

runMainProcess
	self
		executeCefProcess;
		initializeSettings;
		initializeCef.
	isRunning := true!

stop
	isRunning
		ifTrue: 
			[self library shutdown.
			isRunning := false].
	args := nil.
	app := nil.
	settings := nil! !
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
iterate!public! !
library!private! !
onBeforeChildProcessLaunch:commandLine:!private! !
onBeforeCommandLineProcessing:processType:commandLine:!cef event handler!private! !
onContextInitialized:!private! !
onRegisterCustomPreferences:type:registrar:!private! !
onRegisterCustomSchemes:registrar:!cef event handler!private! !
onScheduleMessagePumpWork:delayMs:!cef event handler!private! !
runMainProcess!public! !
stop!public! !
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

iterate
	Current iterate!

new
	Current
		ifNil: 
			[Current := super new.
			Current initialize].
	^Current!

onShutdown
	Current ifNil: [^self].
	Current stop.
	Current := nil!

onStartup
	Current := nil! !
!CefBrowserProcessRunner class categoriesForMethods!
ensureRunning!public! !
initialize!public! !
iterate!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
!

