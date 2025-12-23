"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetWindowTypeCommand
	instanceVariableNames: 'windowId index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetWindowTypeCommand guid: (GUID fromString: '{06a75769-f4cb-438a-80a4-8f249b631d3a}')!

SetWindowTypeCommand comment: ''!

!SetWindowTypeCommand categoriesForClass!Kernel-Objects! !

!SetWindowTypeCommand methodsFor!

index
	^index!

index: anInteger 
	index := anInteger!

windowId
	^windowId!

windowId: anObject
	windowId := anObject! !

!SetWindowTypeCommand categoriesForMethods!
index!public! !
index:!private! !
windowId!accessing!public! !
windowId:!accessing!private! !
!

!SetWindowTypeCommand class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		index: aStream nextSDWORD;
		yourself! !

!SetWindowTypeCommand class categoriesForMethods!
fromStream:!public! !
!

