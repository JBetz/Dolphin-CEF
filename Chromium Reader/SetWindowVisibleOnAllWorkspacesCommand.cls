"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetWindowVisibleOnAllWorkspacesCommand
	instanceVariableNames: 'windowId visibleOnAllWorkspaces'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetWindowVisibleOnAllWorkspacesCommand guid: (GUID fromString: '{238caae2-9855-442c-8f40-9a65125d5a5b}')!

SetWindowVisibleOnAllWorkspacesCommand comment: ''!

!SetWindowVisibleOnAllWorkspacesCommand categoriesForClass!Kernel-Objects! !

!SetWindowVisibleOnAllWorkspacesCommand methodsFor!

visibleOnAllWorkspaces
	^visibleOnAllWorkspaces!

visibleOnAllWorkspaces: anObject
	visibleOnAllWorkspaces := anObject!

windowId
	^windowId!

windowId: anObject
	windowId := anObject! !

!SetWindowVisibleOnAllWorkspacesCommand categoriesForMethods!
visibleOnAllWorkspaces!accessing!public! !
visibleOnAllWorkspaces:!accessing!private! !
windowId!accessing!public! !
windowId:!accessing!private! !
!

!SetWindowVisibleOnAllWorkspacesCommand class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		visibleOnAllWorkspaces: aStream nextBoolean;
		yourself! !

!SetWindowVisibleOnAllWorkspacesCommand class categoriesForMethods!
fromStream:!public! !
!

