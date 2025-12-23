"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SelectedNavigationInTabCommand
	instanceVariableNames: 'tabId index timestamp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SelectedNavigationInTabCommand guid: (GUID fromString: '{3abc418d-b017-4222-a10a-c274e393f1c9}')!

SelectedNavigationInTabCommand comment: ''!

!SelectedNavigationInTabCommand categoriesForClass!Kernel-Objects! !

!SelectedNavigationInTabCommand methodsFor!

index
	^index!

index: anObject
	index := anObject!

tabId
	^tabId!

tabId: anObject
	tabId := anObject!

timestamp
	^timestamp!

timestamp: anObject
	timestamp := anObject! !

!SelectedNavigationInTabCommand categoriesForMethods!
index!accessing!public! !
index:!accessing!private! !
tabId!accessing!public! !
tabId:!accessing!private! !
timestamp!accessing!public! !
timestamp:!accessing!private! !
!

!SelectedNavigationInTabCommand class methodsFor!

fromStream: aStream
	^self new
		tabId: aStream nextSDWORD;
		index: aStream nextSDWORD;
		timestamp: aStream nextDateAndTime;
		yourself! !

!SelectedNavigationInTabCommand class categoriesForMethods!
fromStream:!public! !
!

