"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #CInteropLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CInteropLibrary guid: (GUID fromString: '{88e6ab9b-7741-4bc4-8428-32fa888ee4da}')!

CInteropLibrary comment: ''!

!CInteropLibrary categoriesForClass!External-Libraries! !

!CInteropLibrary methodsFor!

cefCallback_browserProcessHandler: browserProcessHandler delayMs: delayMs
	<stdcall: void CefCallback CefBrowserProcessHandler* sqword>
	^self invalidCall: _failureCode!

initializeCefCallback_hwnd: hwnd msgId: msgId
	<cdecl: void InitializeCefCallback handle dword>
	^self invalidCall: _failureCode!

openSharedD3D11Texture2D_device: device sharedTextureHandle: sharedTextureHandle
	<cdecl: lpvoid OpenSharedD3D11Texture2D lpvoid handle>
	^self invalidCall: _failureCode! !

!CInteropLibrary categoriesForMethods!
cefCallback_browserProcessHandler:delayMs:!public! !
initializeCefCallback_hwnd:msgId:!public! !
openSharedD3D11Texture2D_device:sharedTextureHandle:!public! !
!

!CInteropLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'CInterop/CInterop'! !

!CInteropLibrary class categoriesForMethods!
fileName!public! !
!

