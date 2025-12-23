"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetSelectedNavigationIndexCommand
	instanceVariableNames: 'tabId index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetSelectedNavigationIndexCommand guid: (GUID fromString: '{7bc9a9c9-18d1-4efb-af4d-c4612af8712d}')!

SetSelectedNavigationIndexCommand comment: ''!

!SetSelectedNavigationIndexCommand categoriesForClass!Kernel-Objects! !

!SetSelectedNavigationIndexCommand methodsFor!

index
	^index!

index: anObject
	index := anObject!

tabId
	^tabId!

tabId: anObject
	tabId := anObject! !

!SetSelectedNavigationIndexCommand categoriesForMethods!
index!accessing!public! !
index:!accessing!private! !
tabId!accessing!public! !
tabId:!accessing!private! !
!

!SetSelectedNavigationIndexCommand class methodsFor!

fromStream: aStream
	^self new
		tabId: aStream nextSDWORD;
		index: aStream nextSDWORD;
		yourself! !

!SetSelectedNavigationIndexCommand class categoriesForMethods!
fromStream:!public! !
!

