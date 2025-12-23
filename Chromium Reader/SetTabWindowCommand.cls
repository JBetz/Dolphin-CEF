"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetTabWindowCommand
	instanceVariableNames: 'windowId tabId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetTabWindowCommand guid: (GUID fromString: '{092adbe0-1193-48e5-9a1b-0e34a1287db0}')!

SetTabWindowCommand comment: ''!

!SetTabWindowCommand categoriesForClass!Kernel-Objects! !

!SetTabWindowCommand methodsFor!

tabId
	^tabId!

tabId: anObject
	tabId := anObject!

windowId
	^windowId!

windowId: anObject
	windowId := anObject! !

!SetTabWindowCommand categoriesForMethods!
tabId!accessing!public! !
tabId:!accessing!private! !
windowId!accessing!public! !
windowId:!accessing!private! !
!

!SetTabWindowCommand class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		tabId: aStream nextSDWORD;
		yourself! !

!SetTabWindowCommand class categoriesForMethods!
fromStream:!public! !
!

