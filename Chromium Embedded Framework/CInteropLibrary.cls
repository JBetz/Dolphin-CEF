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

openSharedD3D11Texture2D_device: device sharedTextureHandle: sharedTextureHandle
	<cdecl: lpvoid OpenSharedD3D11Texture2D lpvoid handle>
	^self invalidCall: _failureCode!

releaseD3D11Texture2D_texture: texture
	<cdecl: dword ReleaseD3D11Texture2D lpvoid>
	^self invalidCall: _failureCode! !

!CInteropLibrary categoriesForMethods!
openSharedD3D11Texture2D_device:sharedTextureHandle:!public! !
releaseD3D11Texture2D_texture:!public! !
!

!CInteropLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'CInterop/CInterop'! !

!CInteropLibrary class categoriesForMethods!
fileName!public! !
!

