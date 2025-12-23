"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetWindowWorkspace2Command
	instanceVariableNames: 'windowId workspace'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetWindowWorkspace2Command guid: (GUID fromString: '{803bb2df-8400-4d30-b9d7-56ed34731808}')!

SetWindowWorkspace2Command comment: ''!

!SetWindowWorkspace2Command categoriesForClass!Kernel-Objects! !

!SetWindowWorkspace2Command methodsFor!

windowId
	^windowId!

windowId: anObject
	windowId := anObject!

workspace
	^workspace!

workspace: anObject
	workspace := anObject! !

!SetWindowWorkspace2Command categoriesForMethods!
windowId!accessing!public! !
windowId:!accessing!private! !
workspace!accessing!public! !
workspace:!accessing!private! !
!

!SetWindowWorkspace2Command class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		windowId: aStream nextSDWORD;
		workspace: aStream nextString;
		yourself
	"TODO: What is this extra field?"! !

!SetWindowWorkspace2Command class categoriesForMethods!
fromStream:!public! !
!

