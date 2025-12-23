"Filed out from Dolphin Smalltalk"!

Object subclass: #CefBrowserProcessRunner
	instanceVariableNames: 'cefMainArgs cefApp cefSettings isRunning messagePumpCallbackCode apiVersion'
	classVariableNames: 'Singleton'
	poolDictionaries: 'CefConstants'
	classInstanceVariableNames: ''!

CefBrowserProcessRunner guid: (GUID fromString: '{a2d64bd2-4dd7-431d-a764-321e2869bfba}')!

CefBrowserProcessRunner comment: ''!

!CefBrowserProcessRunner categoriesForClass!Kernel-Objects! !

!CefBrowserProcessRunner methodsFor!

ensureRunning
	cefSettings ifNil: [self run]!

executeCefProcess
	| handle resultCode |
	handle := VMLibrary default applicationHandle.
	cefMainArgs := CefMainArgs new.
	cefMainArgs instance: handle.
	resultCode := self library
				executeProcess_args: cefMainArgs
				application: nil
				windowsSandboxInfo: nil.
	resultCode ~= -1 ifTrue: [self error: 'Error executing CEF process']!

getBrowserProcessHandler: aCefApp
	^cefApp getBrowserProcessHandler: aCefApp!

getDefaultClient: browserProcessHandler
	^0!

getRenderProcessHandler: aCefApp
	^cefApp getRenderProcessHandler: aCefApp!

getResourceBundleHandler: aCefApp
	^cefApp getResourceBundleHandler: aCefApp!

initialize
	super initialize.
	isRunning := false!

initializeApp
	cefApp := CefApp new.
	cefApp
		delegate: self;
		enableBrowserProcessHandlerAndDelegateTo: self!

initializeCef
	| resultCode |
	Transcript
		display: ('CEF Version <D>' expandMacrosWith: apiVersion);
		cr.
	self useMultiThreadedMessageLoop ifFalse: [self initializeApp].
	resultCode := self library
				initialize_args: cefMainArgs
				settings: cefSettings
				application: cefApp
				windowsSandboxInfo: nil.
	resultCode = 0 ifTrue: [self error: 'Error initializing CEF']!

initializeSettings
	| subprocessPath logFile cachePath |
	subprocessPath := FileLocator imageRelative localFileSpecFor: 'CefProcessRunner.exe'.
	logFile := FileLocator imageRelative localFileSpecFor: 'cef.log'.
	cachePath := FileLocator imageRelative localFileSpecFor: 'cef-cache'.
	File createDirectoryPath: cachePath.
	cefSettings := CefSettings new
				no_sandbox: true;
				browser_subprocess_path: subprocessPath asCefString;
				log_severity: LOGSEVERITY_DEFAULT;
				log_file: logFile asCefString;
				cache_path: cachePath asCefString;
				windowless_rendering_enabled: true!

library
	^CefLibrary default!

onAlreadyRunningAppRelaunch: aCefBrowserProcessHandler commandLine: aCefCommandLine currentDirectory: aCefString 
	^Error notYetImplemented!

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

onUnhandledError: anError
	SessionManager current onUnhandledError: anError!

run
	| cefMask |
	cefMask := Float exceptionMask | CRTConstants._EM_ZERODIVIDE | CRTConstants._EM_INVALID.
	Float exceptionMask: cefMask.
	apiVersion := self library apiHash_version: CEF_API_VERSION_EXPERIMENTAL
				entry: CEF_API_HASH_PLATFORM.
	self
		executeCefProcess;
		initializeSettings;
		initializeCef.
	isRunning := true!

setupMessagePumpCallback
	| cInteropLibrary msgWindow callbackFunction |
	cInteropLibrary := CInteropLibrary default.
	msgWindow := SessionManager inputState msgWindow.
	messagePumpCallbackCode := UserLibrary default registerWindowMessage: 'on_schedule_message_pump'.
	msgWindow cefCallbackCode: messagePumpCallbackCode.
	cInteropLibrary initializeCefCallback_hwnd: msgWindow asParameter msgId: messagePumpCallbackCode.
	callbackFunction := (CInteropLibrary lookupMethod: #cefCallback_browserProcessHandler:delayMs:)
				procAddress.
	cefApp browserProcessHandler on_schedule_message_pump_work: callbackFunction!

stop
	isRunning ifFalse: [^self].
	Transcript
		display: '[START] CEF shutdown';
		cr.
	[self library shutdown] ensure: 
			[isRunning := false.
			cefMainArgs := nil.
			cefApp := nil.
			cefSettings := nil].
	Transcript
		display: '[END] CEF shutdown';
		cr!

update
	isRunning ifFalse: [^self].
	self library doMessageLoopWork!

useMultiThreadedMessageLoop
	^cefSettings multi_threaded_message_loop asBoolean! !

!CefBrowserProcessRunner categoriesForMethods!
ensureRunning!public! !
executeCefProcess!private! !
getBrowserProcessHandler:!cef event handler!private! !
getDefaultClient:!cef event handler!private! !
getRenderProcessHandler:!cef event handler!private! !
getResourceBundleHandler:!cef event handler!private! !
initialize!public! !
initializeApp!private! !
initializeCef!private! !
initializeSettings!private! !
library!private! !
onAlreadyRunningAppRelaunch:commandLine:currentDirectory:!private! !
onBeforeChildProcessLaunch:commandLine:!cef event handler!private! !
onBeforeCommandLineProcessing:processType:commandLine:!cef event handler!private! !
onContextInitialized:!cef event handler!private! !
onRegisterCustomPreferences:type:registrar:!cef event handler!private! !
onRegisterCustomSchemes:registrar:!cef event handler!private! !
onScheduleMessagePumpWork:delayMs:!cef event handler!private! !
onUnhandledError:!public! !
run!public! !
setupMessagePumpCallback!public! !
stop!public! !
update!public! !
useMultiThreadedMessageLoop!private! !
!

!CefBrowserProcessRunner class methodsFor!

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
	Transcript
		display: 'WARNING: CefBrowserProcessRunner wasn''t stopped on previous shutdown. Stopping now.';
		cr.
	Singleton := nil!

reset
	Singleton := nil!

update
	Singleton ifNil: [^self].
	[Singleton update] on: Error do: [:error | Singleton onUnhandledError: error]! !

!CefBrowserProcessRunner class categoriesForMethods!
current!public! !
ensureRunning!public! !
initialize!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
reset!public! !
update!public! !
!

