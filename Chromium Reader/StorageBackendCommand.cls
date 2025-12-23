"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #StorageBackendCommand
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

StorageBackendCommand guid: (GUID fromString: '{2bb9ce54-0a40-4e21-be3f-46ef770881b4}')!

StorageBackendCommand comment: ''!

!StorageBackendCommand categoriesForClass!Kernel-Objects! !

!StorageBackendCommand methodsFor!

contents
	^contents!

contents: anObject
	contents := anObject! !

!StorageBackendCommand categoriesForMethods!
contents!accessing!public! !
contents:!accessing!private! !
!

!StorageBackendCommand class methodsFor!

fromStream: aStream
	^self new contents: aStream upToEnd! !

!StorageBackendCommand class categoriesForMethods!
fromStream:!public! !
!

