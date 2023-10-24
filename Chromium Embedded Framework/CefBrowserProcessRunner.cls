"Filed out from Dolphin Smalltalk"!

CefProcessRunner subclass: #CefBrowserProcessRunner
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefBrowserProcessRunner guid: (GUID fromString: '{bcda8cd4-b7f7-464b-8aa9-4d04cb4ce5b9}')!
CefBrowserProcessRunner comment: ''!
!CefBrowserProcessRunner categoriesForClass!Kernel-Objects! !
!CefBrowserProcessRunner methodsFor!

getDefaultClient: browserProcessHandler
	Transcript display: #getDefaultClient; cr.
	^0!

initializeSettings
	| subprocessPath logFile cachePath |
	subprocessPath := FileLocator imageRelative localFileSpecFor: 'BrowserSubprocess.exe'.
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

onBeforeCommandLineProcessing: cefApp processType: processType commandLine: commandLine
	commandLine
		appendSwitch_name: 'process-per-site' asCefString;
		appendSwitchWithValue_name: 'renderer-process-limit' asCefString value: '1' asCefString!

onScheduleMessagePumpWork: browserProcessHandler delayMs: delayMs
	^0!

runMainProcess
	| resultCode |
	self log: '===== BROWSER PROCESS ====='.
	resultCode := self executeProcess.
	self log: 'cef_execute_process:   ' , resultCode displayString.
	self initializeSettings.
	resultCode := self library
				initialize_args: args
				settings: settings
				application: app
				windowsSandboxInfo: 0.
	self log: 'cef_initialize:   ' , resultCode displayString! !
!CefBrowserProcessRunner categoriesForMethods!
getDefaultClient:!public! !
initializeSettings!private! !
onBeforeCommandLineProcessing:processType:commandLine:!private! !
onScheduleMessagePumpWork:delayMs:!public! !
runMainProcess!public! !
!

