"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetWindowUserTitleCommand
	instanceVariableNames: 'windowId userTitle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetWindowUserTitleCommand guid: (GUID fromString: '{693f5b54-38eb-4903-8c97-4f141b023d65}')!

SetWindowUserTitleCommand comment: ''!

!SetWindowUserTitleCommand categoriesForClass!Kernel-Objects! !

!SetWindowUserTitleCommand methodsFor!

userTitle
	^userTitle!

userTitle: anObject
	userTitle := anObject!

windowId
	^windowId!

windowId: anObject
	windowId := anObject! !

!SetWindowUserTitleCommand categoriesForMethods!
userTitle!accessing!public! !
userTitle:!accessing!private! !
windowId!accessing!public! !
windowId:!accessing!private! !
!

!SetWindowUserTitleCommand class methodsFor!

fromStream: aStream
	aStream checkLength.
	^self new
		windowId: aStream nextSDWORD;
		userTitle: aStream nextString;
		yourself! !

!SetWindowUserTitleCommand class categoriesForMethods!
fromStream:!public! !
!

