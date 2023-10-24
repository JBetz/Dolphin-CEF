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

executeProcess
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
	Transcript display: #getDefaultClient; cr.
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

onRegisterCustomSchemes: cefApp registrar: registrar
	Transcript display: #onRegisterCustomSchemes; cr!

onScheduleMessagePumpWork: browserProcessHandler delayMs: delayMs
	^0!

runMainProcess
	| resultCode |
	resultCode := self executeProcess.
	self log: 'cef_execute_process:   ' , resultCode displayString.
	self initializeSettings.
	resultCode := self library
				initialize_args: args
				settings: settings
				application: app
				windowsSandboxInfo: 0.
	self log: 'cef_initialize:   ' , resultCode displayString!

stop
	isRunning := false! !
!CefBrowserProcessRunner categoriesForMethods!
configureProcessPriority!private! !
ensureRunning!public! !
executeProcess!private! !
getBrowserProcessHandler:!public! !
getDefaultClient:!public! !
getRenderProcessHandler:!public! !
getResourceBundleHandler:!public! !
initialize!public! !
initializeApp!private! !
initializeSettings!private! !
library!private! !
log:!private! !
onBeforeCommandLineProcessing:processType:commandLine:!private! !
onRegisterCustomSchemes:registrar:!public! !
onScheduleMessagePumpWork:delayMs:!public! !
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

onShutdown
	Current := nil!

onStartup
	Current := nil! !
!CefBrowserProcessRunner class categoriesForMethods!
new!public! !
onShutdown!public! !
onStartup!public! !
!

