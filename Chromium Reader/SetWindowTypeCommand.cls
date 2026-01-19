"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetWindowTypeCommand
	instanceVariableNames: 'windowId windowType'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetWindowTypeCommand guid: (GUID fromString: '{06a75769-f4cb-438a-80a4-8f249b631d3a}')!

SetWindowTypeCommand comment: ''!

!SetWindowTypeCommand categoriesForClass!Kernel-Objects! !

!SetWindowTypeCommand methodsFor!

windowId
	^windowId!

windowId: anObject
	windowId := anObject!

windowType
	^windowType!

windowType: anInteger
	windowType := anInteger! !

!SetWindowTypeCommand categoriesForMethods!
windowId!accessing!public! !
windowId:!accessing!private! !
windowType!public! !
windowType:!private! !
!

!SetWindowTypeCommand class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		windowType: aStream nextSDWORD;
		yourself! !

!SetWindowTypeCommand class categoriesForMethods!
fromStream:!public! !
!

