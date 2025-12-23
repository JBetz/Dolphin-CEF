"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetPinnedStateCommand
	instanceVariableNames: 'tabId pinnedState'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetPinnedStateCommand guid: (GUID fromString: '{19314f02-8180-4fd4-9a94-937b6d0e5a63}')!

SetPinnedStateCommand comment: ''!

!SetPinnedStateCommand categoriesForClass!Kernel-Objects! !

!SetPinnedStateCommand methodsFor!

pinnedState
	^pinnedState!

pinnedState: anObject
	pinnedState := anObject!

tabId
	^tabId!

tabId: anObject
	tabId := anObject! !

!SetPinnedStateCommand categoriesForMethods!
pinnedState!accessing!public! !
pinnedState:!accessing!private! !
tabId!accessing!public! !
tabId:!accessing!private! !
!

!SetPinnedStateCommand class methodsFor!

fromStream: aStream
	^self new
		tabId: aStream nextSDWORD;
		pinnedState: aStream nextBoolean;
		yourself! !

!SetPinnedStateCommand class categoriesForMethods!
fromStream:!public! !
!

