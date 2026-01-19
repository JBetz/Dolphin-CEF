"Filed out from Dolphin Smalltalk"!

BrowserObject subclass: #BrowserWindow
	instanceVariableNames: 'id tabs selectedTabIndex rectangle type isActive isClosed appName userTitle workspace visibleOnAllWorkspaces'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BrowserWindow guid: (GUID fromString: '{a5601e93-a2d1-415d-8d14-90f9f4ae803e}')!

BrowserWindow comment: ''!

!BrowserWindow categoriesForClass!Kernel-Objects! !

!BrowserWindow methodsFor!

addTab: aBrowserTab
	tabs add: aBrowserTab!

appName
	^appName!

appName: anObject
	appName := anObject!

id
	^id!

id: anInteger
	id := anInteger!

initialize
	super initialize.
	tabs := OrderedCollection new.
	isClosed := false.
	isActive := false!

isActive: aBoolean 
	isActive := aBoolean!

isClosed
	^isClosed!

rectangle: aRectangle
	rectangle := aRectangle!

selectedTabIndex
	^selectedTabIndex!

selectedTabIndex: anObject
	selectedTabIndex := anObject!

tabs
	^tabs!

type: anInteger 
	type := anInteger!

userTitle
	^userTitle!

userTitle: anObject
	userTitle := anObject!

visibleOnAllWorkspaces
	^visibleOnAllWorkspaces!

visibleOnAllWorkspaces: anObject
	visibleOnAllWorkspaces := anObject!

workspace
	^workspace!

workspace: anObject
	workspace := anObject! !

!BrowserWindow categoriesForMethods!
addTab:!public! !
appName!accessing!public! !
appName:!accessing!private! !
id!public! !
id:!private! !
initialize!public! !
isActive:!public! !
isClosed!public! !
rectangle:!public! !
selectedTabIndex!accessing!public! !
selectedTabIndex:!accessing!private! !
tabs!public! !
type:!public! !
userTitle!accessing!public! !
userTitle:!accessing!private! !
visibleOnAllWorkspaces!accessing!public! !
visibleOnAllWorkspaces:!accessing!private! !
workspace!accessing!public! !
workspace:!accessing!private! !
!

