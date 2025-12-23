"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #UnknownSessionCommand
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

UnknownSessionCommand guid: (GUID fromString: '{1d7d94be-2746-4604-9647-f35b76bdcbe4}')!

UnknownSessionCommand comment: ''!

!UnknownSessionCommand categoriesForClass!Kernel-Objects! !

!UnknownSessionCommand methodsFor!

contents
	^contents!

contents: aByteArray 
	contents := aByteArray!

isUnknown
	^true! !

!UnknownSessionCommand categoriesForMethods!
contents!public! !
contents:!private! !
isUnknown!public! !
!

!UnknownSessionCommand class methodsFor!

fromStream: aStream
	^self new contents: aStream upToEnd! !

!UnknownSessionCommand class categoriesForMethods!
fromStream:!public! !
!

