"Filed out from Dolphin Smalltalk"!

CefProcessRunner subclass: #CefSubprocessRunner
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefSubprocessRunner guid: (GUID fromString: '{2ed66fe7-0291-46ea-9abc-49a575b562db}')!
CefSubprocessRunner comment: ''!
!CefSubprocessRunner categoriesForClass!Kernel-Objects! !
!CefSubprocessRunner methodsFor!

initializeApp
	super initializeApp.
	app enableRenderProcessHandlerAndDelegateTo: self!

log: aString
	!

logCommandLineArguments
	| sessionManager processType |
	sessionManager := SessionManager current.
	processType := ''.
	1 to: sessionManager argc
		do: 
			[:i |
			((sessionManager argv at: i) beginsWith: '--type=')
				ifTrue: [processType := sessionManager argv at: i]].
	self
		log: processType;
		log: sessionManager argv!

onBeforeCommandLineProcessing: cefApp processType: processType commandLine: commandLine!

runMainProcess
	| resultCode |
	self log: '===== SUBPROCESS ====='.
	self logCommandLineArguments.
	resultCode := self executeProcess.
	self log: 'cef_execute_process:   ' , resultCode displayString.
	resultCode >= 0 ifTrue: [^SessionManager current exit: resultCode]! !
!CefSubprocessRunner categoriesForMethods!
initializeApp!public! !
log:!private! !
logCommandLineArguments!private! !
onBeforeCommandLineProcessing:processType:commandLine:!private! !
runMainProcess!public! !
!

