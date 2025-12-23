"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetSelectedTabInIndexCommand
	instanceVariableNames: 'windowId index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetSelectedTabInIndexCommand guid: (GUID fromString: '{283e1980-357e-46bf-8683-55ce3d1c7d20}')!

SetSelectedTabInIndexCommand comment: ''!

!SetSelectedTabInIndexCommand categoriesForClass!Kernel-Objects! !

!SetSelectedTabInIndexCommand methodsFor!

index
	^index!

index: anObject
	index := anObject!

windowId
	^windowId!

windowId: anObject
	windowId := anObject! !

!SetSelectedTabInIndexCommand categoriesForMethods!
index!accessing!public! !
index:!accessing!private! !
windowId!accessing!public! !
windowId:!accessing!private! !
!

!SetSelectedTabInIndexCommand class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		index: aStream nextSDWORD;
		yourself! !

!SetSelectedTabInIndexCommand class categoriesForMethods!
fromStream:!public! !
!

