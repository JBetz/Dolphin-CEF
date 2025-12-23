"Filed out from Dolphin Smalltalk"!

Object subclass: #ContextMenuConfiguration
	instanceVariableNames: 'browserId commands'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ContextMenuConfiguration guid: (GUID fromString: '{c0734586-5f41-450f-a70e-6e2e5ddd7155}')!

ContextMenuConfiguration comment: ''!

!ContextMenuConfiguration categoriesForClass!Kernel-Objects! !

!ContextMenuConfiguration methodsFor!

asDictionary
	^Dictionary new
		at: #id put: GUID newUnique idlString;
		at: #browserId put: browserId;
		at: #commands put: (commands collect: [:each | each asDictionary]);
		yourself!

browserId
	^browserId!

browserId: anObject
	browserId := anObject!

commands
	^commands!

commands: anObject
	commands := anObject! !

!ContextMenuConfiguration categoriesForMethods!
asDictionary!public! !
browserId!accessing!public! !
browserId:!accessing!private! !
commands!accessing!public! !
commands:!accessing!private! !
!

