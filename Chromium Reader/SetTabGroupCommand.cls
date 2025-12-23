"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetTabGroupCommand
	instanceVariableNames: 'tabId maybeGroup hasGroup'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetTabGroupCommand guid: (GUID fromString: '{d35a8d47-397d-47e9-b5d7-45bfd0794eb4}')!

SetTabGroupCommand comment: ''!

!SetTabGroupCommand categoriesForClass!Kernel-Objects! !

!SetTabGroupCommand methodsFor!

hasGroup
	^hasGroup!

hasGroup: anObject
	hasGroup := anObject!

maybeGroup
	^maybeGroup!

maybeGroup: anObject
	maybeGroup := anObject!

tabId
	^tabId!

tabId: anObject
	tabId := anObject! !

!SetTabGroupCommand categoriesForMethods!
hasGroup!accessing!public! !
hasGroup:!accessing!private! !
maybeGroup!accessing!public! !
maybeGroup:!accessing!private! !
tabId!accessing!public! !
tabId:!accessing!private! !
!

!SetTabGroupCommand class methodsFor!

fromStream: aStream
	^self new
		tabId: aStream nextSDWORD;
		maybeGroup: aStream nextQWORD @ aStream nextQWORD;
		hasGroup: aStream nextBoolean;
		yourself
! !

!SetTabGroupCommand class categoriesForMethods!
fromStream:!public! !
!

