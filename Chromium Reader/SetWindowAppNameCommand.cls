"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetWindowAppNameCommand
	instanceVariableNames: 'windowId userTitle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetWindowAppNameCommand guid: (GUID fromString: '{fe06fb9d-31a7-407f-ab88-f99db1c84e2d}')!

SetWindowAppNameCommand comment: ''!

!SetWindowAppNameCommand categoriesForClass!Kernel-Objects! !

!SetWindowAppNameCommand methodsFor!

userTitle
	^userTitle!

userTitle: anObject
	userTitle := anObject!

windowId
	^windowId!

windowId: anObject
	windowId := anObject! !

!SetWindowAppNameCommand categoriesForMethods!
userTitle!accessing!public! !
userTitle:!accessing!private! !
windowId!accessing!public! !
windowId:!accessing!private! !
!

!SetWindowAppNameCommand class methodsFor!

fromStream: aStream
	aStream checkLength.
	^self new
		windowId: aStream nextSDWORD;
		userTitle: aStream nextString;
		yourself! !

!SetWindowAppNameCommand class categoriesForMethods!
fromStream:!public! !
!

