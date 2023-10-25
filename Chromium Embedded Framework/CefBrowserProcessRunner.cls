"Filed out from Dolphin Smalltalk"!

Object subclass: #CefBrowserProcessRunner
	instanceVariableNames: 'isRunning args app settings windowsSandboxInfo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'Current'!
CefBrowserProcessRunner guid: (GUID fromString: '{a2d64bd2-4dd7-431d-a764-321e2869bfba}')!
CefBrowserProcessRunner comment: ''!
!CefBrowserProcessRunner categoriesForClass!Kernel-Objects! !
!CefBrowserProcessRunner methodsFor!

configureProcessPriority
	| process |
	process := KernelLibrary default getCurrentProcess.
	KernelLibrary default setPriorityClass: process dwPriorityClass: 32!

ensureRunning
	isRunning ifFalse: [self runMainProcess]!

executeCefProcess
	| handle |
	handle := VMLibrary default applicationHandle.
	args := CefMainArgs new.
	args instance: handle.
	self initializeApp.
	^self library
		executeProcess_args: args
		application: app
		windowsSandboxInfo: nil!

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
	app delegate: self!

initializeCef
	self initializeSettings.
	self library
		initialize_args: args
		settings: settings
		application: app
		windowsSandboxInfo: 0!

initializeSettings
	| subprocessPath logFile cachePath |
	subprocessPath := FileLocator imageRelative localFileSpecFor: 'cefclient.exe'.
	logFile := FileLocator imageRelative localFileSpecFor: 'cef.log'.
	cachePath := FileLocator imageRelative localFileSpecFor: 'cef-cache'.
	File createDirectoryPath: cachePath.
	settings := CefSettings new.
	settings
		browser_subprocess_path: subprocessPath asCefString;
		log_severity: 1;
		log_file: logFile asCefString;
		cache_path: cachePath asCefString;
		no_sandbox: true;
		multi_threaded_message_loop: true!

library
	^CefLibrary default!

log: aMsg
	Transcript display: aMsg; cr!

onBeforeCommandLineProcessing: cefApp processType: processType commandLine: commandLine
	commandLine
		appendSwitch_name: 'process-per-site' asCefString;
		appendSwitchWithValue_name: 'renderer-process-limit' asCefString value: '1' asCefString!

onRegisterCustomSchemes: cefApp registrar: registrar!

onScheduleMessagePumpWork: browserProcessHandler delayMs: delayMs!

runMainProcess
	self
		executeCefProcess;
		initializeCef!

stop
	isRunning := false! !
!CefBrowserProcessRunner categoriesForMethods!
configureProcessPriority!private! !
ensureRunning!public! !
executeCefProcess!public! !
getBrowserProcessHandler:!cef event handler!private! !
getDefaultClient:!cef event handler!private! !
getRenderProcessHandler:!cef event handler!private! !
getResourceBundleHandler:!cef event handler!private! !
initialize!private! !
initializeApp!private! !
initializeCef!private! !
initializeSettings!private! !
library!private! !
log:!private! !
onBeforeCommandLineProcessing:processType:commandLine:!cef event handler!private! !
onRegisterCustomSchemes:registrar:!cef event handler!private! !
onScheduleMessagePumpWork:delayMs:!cef event handler!private! !
runMainProcess!public! !
stop!public! !
!

!CefBrowserProcessRunner class methodsFor!

new
	Current
		ifNil: 
			[Current := super new.
			Current initialize].
	^Current!

stop
	Current := nil! !
!CefBrowserProcessRunner class categoriesForMethods!
new!public! !
stop!public! !
!

