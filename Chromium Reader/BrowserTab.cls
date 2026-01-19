"Filed out from Dolphin Smalltalk"!

BrowserObject subclass: #BrowserTab
	instanceVariableNames: 'id windowId index title isPinned isClosed navigationIndex navigationEntries lastActiveTime'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BrowserTab guid: (GUID fromString: '{5e8b3068-66e5-4df0-9c3a-74fa7b59b049}')!

BrowserTab comment: ''!

!BrowserTab categoriesForClass!Kernel-Objects! !

!BrowserTab methodsFor!

currentUrl
	| urlString |
	navigationEntries do: [:each | each key = navigationIndex ifTrue: [urlString := each value]].
	^urlString asUrl!

id
	^id!

id: anInteger
	id := anInteger!

index: anInteger
	index := anInteger!

initialize
	super initialize.
	isClosed := false.
	navigationEntries := OrderedCollection new!

isClosed
	^isClosed!

isPinned: aBoolean
	isPinned := aBoolean!

lastActiveTime: anInteger 
	lastActiveTime := anInteger!

navigationEntries
	^navigationEntries!

navigationIndex
	^navigationIndex!

navigationIndex: anInteger
	navigationIndex := anInteger!

windowId
	^windowId!

windowId: anInteger 
	windowId := anInteger! !

!BrowserTab categoriesForMethods!
currentUrl!public! !
id!public! !
id:!private! !
index:!public! !
initialize!public! !
isClosed!public! !
isPinned:!private! !
lastActiveTime:!public! !
navigationEntries!public! !
navigationIndex!public! !
navigationIndex:!public! !
windowId!public! !
windowId:!public! !
!

