"Filed out from Dolphin Smalltalk"!

Object subclass: #ContextMenuConfiguration
	instanceVariableNames: 'commands'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ContextMenuConfiguration guid: (GUID fromString: '{c0734586-5f41-450f-a70e-6e2e5ddd7155}')!

ContextMenuConfiguration comment: ''!

!ContextMenuConfiguration categoriesForClass!Kernel-Objects! !

!ContextMenuConfiguration methodsFor!

addCommand: aContextMenuCommand
	commands add: aContextMenuCommand!

asDictionary
	^Dictionary new
		at: #id put: GUID newUnique idlString;
		at: #commands put: (commands collect: [:each | each asDictionary]) asArray;
		yourself!

at: anInteger put: anotherInteger label: aString
	commands add: (ContextMenuCommand new
				index: anInteger;
				commandId: anotherInteger;
				label: aString)!

commands
	^commands!

commands: anObject
	commands := anObject!

initialize
	super initialize.
	commands := OrderedCollection new! !

!ContextMenuConfiguration categoriesForMethods!
addCommand:!public! !
asDictionary!public! !
at:put:label:!public! !
commands!accessing!public! !
commands:!accessing!private! !
initialize!public! !
!

!ContextMenuConfiguration class methodsFor!

new
	^super new initialize! !

!ContextMenuConfiguration class categoriesForMethods!
new!public! !
!

