"Filed out from Dolphin Smalltalk"!

Object subclass: #CefProcessRunner
	instanceVariableNames: 'isRunning args app settings windowsSandboxInfo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'Current'!
CefProcessRunner guid: (GUID fromString: '{a2d64bd2-4dd7-431d-a764-321e2869bfba}')!
CefProcessRunner comment: ''!
!CefProcessRunner categoriesForClass!Kernel-Objects! !
!CefProcessRunner methodsFor!

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

library
	^CefLibrary default!

log: aMsg
	Transcript display: aMsg; cr!

onBeforeCommandLineProcessing: cefApp processType: processType commandLine: commandLine
	self subclassResponsibility!

onRegisterCustomSchemes: cefApp registrar: registrar
	Transcript display: #onRegisterCustomSchemes; cr.
	^0!

runMainProcess
	self subclassResponsibility!

stop
	isRunning := false! !
!CefProcessRunner categoriesForMethods!
configureProcessPriority!private! !
ensureRunning!public! !
executeProcess!private! !
getBrowserProcessHandler:!public! !
getRenderProcessHandler:!public! !
getResourceBundleHandler:!public! !
initialize!public! !
initializeApp!private! !
library!private! !
log:!private! !
onBeforeCommandLineProcessing:processType:commandLine:!private! !
onRegisterCustomSchemes:registrar:!public! !
runMainProcess!public! !
stop!public! !
!

!CefProcessRunner class methodsFor!

initialize
	"self initialize"

	SessionManager current
		when: #sessionStarted
			send: #onStartup
			to: self;
		when: #sessionStopped
			send: #onShutdown
			to: self.

	"We've missed the #onStartup event this time, so do it ourselves."
	self onStartup!

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
!CefProcessRunner class categoriesForMethods!
initialize!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
!

