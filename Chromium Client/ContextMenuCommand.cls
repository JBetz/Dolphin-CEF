"Filed out from Dolphin Smalltalk"!

Object subclass: #ContextMenuCommand
	instanceVariableNames: 'index commandId label'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ContextMenuCommand guid: (GUID fromString: '{a9af9dff-c153-430c-b49e-bf0b009afb1f}')!

ContextMenuCommand comment: ''!

!ContextMenuCommand categoriesForClass!Kernel-Objects! !

!ContextMenuCommand methodsFor!

asDictionary
	^Dictionary new
		at: #index put: index;
		at: #commandId put: commandId;
		at: #label put: label;
		yourself!

commandId
	^commandId!

commandId: anObject
	commandId := anObject!

index
	^index!

index: anObject
	index := anObject!

label
	^label!

label: anObject
	label := anObject! !

!ContextMenuCommand categoriesForMethods!
asDictionary!public! !
commandId!accessing!public! !
commandId:!accessing!private! !
index!accessing!public! !
index:!accessing!private! !
label!accessing!public! !
label:!accessing!private! !
!

