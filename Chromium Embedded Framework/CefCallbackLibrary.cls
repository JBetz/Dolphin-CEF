"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #CefCallbackLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefCallbackLibrary guid: (GUID fromString: '{88e6ab9b-7741-4bc4-8428-32fa888ee4da}')!

CefCallbackLibrary comment: ''!

!CefCallbackLibrary categoriesForClass!External-Libraries! !

!CefCallbackLibrary methodsFor!

callback_browserProcessHandler: browserProcessHandler delayMs: delayMs
	<cdecl: void CallbackFunction CefBrowserProcessHandler* sqword>
	^self invalidCall: _failureCode!

initialize_hwnd: hwnd msgId: msgId
	<stdcall: void InitializeCallback handle dword>
	^self invalidCall: _failureCode! !

!CefCallbackLibrary categoriesForMethods!
callback_browserProcessHandler:delayMs:!public! !
initialize_hwnd:msgId:!public! !
!

!CefCallbackLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'Callback'! !

!CefCallbackLibrary class categoriesForMethods!
fileName!public! !
!

