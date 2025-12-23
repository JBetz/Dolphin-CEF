"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetActiveWindowCommand
	instanceVariableNames: 'windowId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetActiveWindowCommand guid: (GUID fromString: '{367a0ed7-6227-4ce3-b16d-7c54ff474b5b}')!

SetActiveWindowCommand comment: ''!

!SetActiveWindowCommand categoriesForClass!Kernel-Objects! !

!SetActiveWindowCommand methodsFor!

windowId
	^windowId!

windowId: anObject
	windowId := anObject! !

!SetActiveWindowCommand categoriesForMethods!
windowId!accessing!public! !
windowId:!accessing!private! !
!

!SetActiveWindowCommand class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		yourself! !

!SetActiveWindowCommand class categoriesForMethods!
fromStream:!public! !
!

