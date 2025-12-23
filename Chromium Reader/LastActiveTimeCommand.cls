"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #LastActiveTimeCommand
	instanceVariableNames: 'tabId lastActiveTime windowId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

LastActiveTimeCommand guid: (GUID fromString: '{5d9b36bf-5372-4c4b-8b04-4d2c321e9a57}')!

LastActiveTimeCommand comment: ''!

!LastActiveTimeCommand categoriesForClass!Kernel-Objects! !

!LastActiveTimeCommand methodsFor!

lastActiveTime
	^lastActiveTime!

lastActiveTime: anObject
	lastActiveTime := anObject!

tabId
	^tabId!

tabId: anObject
	tabId := anObject!

windowId: anInteger 
	windowId := anInteger! !

!LastActiveTimeCommand categoriesForMethods!
lastActiveTime!accessing!public! !
lastActiveTime:!accessing!private! !
tabId!accessing!public! !
tabId:!accessing!private! !
windowId:!public! !
!

!LastActiveTimeCommand class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		tabId: aStream nextSDWORD;
		lastActiveTime: aStream nextSQWORD;
		yourself! !

!LastActiveTimeCommand class categoriesForMethods!
fromStream:!public! !
!

