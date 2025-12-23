"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetTabIndexInWindowCommand
	instanceVariableNames: 'tabId index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetTabIndexInWindowCommand guid: (GUID fromString: '{ed019660-f149-4645-afda-1966dcb7c292}')!

SetTabIndexInWindowCommand comment: ''!

!SetTabIndexInWindowCommand categoriesForClass!Kernel-Objects! !

!SetTabIndexInWindowCommand methodsFor!

index
	^index!

index: anInteger 
	index := anInteger!

tabId
	^tabId!

tabId: anInteger
	tabId := anInteger! !

!SetTabIndexInWindowCommand categoriesForMethods!
index!public! !
index:!private! !
tabId!accessing!public! !
tabId:!accessing!private! !
!

!SetTabIndexInWindowCommand class methodsFor!

fromStream: aStream
	^self new
		tabId: aStream nextSDWORD;
		index: aStream nextSDWORD;
		yourself! !

!SetTabIndexInWindowCommand class categoriesForMethods!
fromStream:!public! !
!

