"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SessionStorageAssociatedCommand
	instanceVariableNames: 'tabId sessionStoragePersistentId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SessionStorageAssociatedCommand guid: (GUID fromString: '{8119e10c-f004-4668-b45e-8a44d058726d}')!

SessionStorageAssociatedCommand comment: ''!

!SessionStorageAssociatedCommand categoriesForClass!Kernel-Objects! !

!SessionStorageAssociatedCommand methodsFor!

sessionStoragePersistentId
	^sessionStoragePersistentId!

sessionStoragePersistentId: anObject
	sessionStoragePersistentId := anObject!

tabId
	^tabId!

tabId: anObject
	tabId := anObject! !

!SessionStorageAssociatedCommand categoriesForMethods!
sessionStoragePersistentId!accessing!public! !
sessionStoragePersistentId:!accessing!private! !
tabId!accessing!public! !
tabId:!accessing!private! !
!

!SessionStorageAssociatedCommand class methodsFor!

fromStream: aStream
	aStream checkLength.
	^self new
		tabId: aStream nextSDWORD;
		sessionStoragePersistentId: aStream nextString;
		yourself! !

!SessionStorageAssociatedCommand class categoriesForMethods!
fromStream:!public! !
!

