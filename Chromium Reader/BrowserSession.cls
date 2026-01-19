"Filed out from Dolphin Smalltalk"!

BrowserObject subclass: #BrowserSession
	instanceVariableNames: 'windows tabs'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BrowserSession guid: (GUID fromString: '{4831d08d-cf4b-4258-83d0-3eaed70d55e1}')!

BrowserSession comment: ''!

!BrowserSession categoriesForClass!Kernel-Objects! !

!BrowserSession methodsFor!

activeTabs
	| activeTabs |
	activeTabs := OrderedCollection new.
	(windows values reject: [:window | window isClosed])
		do: [:window | window tabs do: [:tab | tab isClosed ifFalse: [activeTabs add: tab]]].
	^activeTabs!

initialize
	super initialize.
	windows := Dictionary new.
	tabs := Dictionary new!

lookupTab: anInteger
	self assert: [anInteger isInteger].
	^tabs at: anInteger ifAbsentPut: [BrowserTab new id: anInteger]!

lookupWindow: anInteger
	^windows at: anInteger ifAbsentPut: [BrowserWindow new id: anInteger]!

processLastActiveTimeCommand: aLastActiveTimeCommand
	| tab |
	tab := self lookupTab: aLastActiveTimeCommand tabId.
	tab lastActiveTime: aLastActiveTimeCommand lastActiveTime!

processSessionStorageAssociatedCommand: aSessionStorageAssociatedCommand!

processSetActiveWindowCommand: aSetActiveWindowCommand 
	| window |
	window := self lookupWindow: aSetActiveWindowCommand windowId.
	window isActive: true!

processSetPinnedStateCommand: aSetPinnedStateCommand 
	| tab |
	tab := self lookupTab: aSetPinnedStateCommand tabId.
	tab isPinned: aSetPinnedStateCommand pinnedState!

processSetSelectedNavigationIndexCommand: aSetSelectedNavigationIndexCommand 
	| tab |
	tab := self lookupTab: aSetSelectedNavigationIndexCommand tabId.
	tab navigationIndex: aSetSelectedNavigationIndexCommand index + 1!

processSetSelectedTabInIndexCommand: aSetSelectedTabInIndexCommand
	| window |
	window := self lookupWindow: aSetSelectedTabInIndexCommand windowId.
	window selectedTabIndex: aSetSelectedTabInIndexCommand index + 1!

processSetTabGroupCommand: aSetTabGroupCommand!

processSetTabIndexInWindowCommand: aSetTabIndexInWindowCommand
	| tab |
	tab := self lookupTab: aSetTabIndexInWindowCommand tabId.
	tab index: aSetTabIndexInWindowCommand index!

processSetTabWindowCommand: aSetTabWindowCommand 
	| tabId tab window |
	tabId := aSetTabWindowCommand tabId.
	tab := self lookupTab: tabId.
	tab windowId: aSetTabWindowCommand windowId.
	window := self lookupWindow: aSetTabWindowCommand windowId.
	window addTab: tab!

processSetWindowAppNameCommand: aSetWindowAppNameCommand 
	| window |
	window := self lookupWindow: aSetWindowAppNameCommand windowId.
	window appName: aSetWindowAppNameCommand userTitle!

processSetWindowBounds3Command: aSetWindowBounds3Command
	| window |
	window := self lookupWindow: aSetWindowBounds3Command windowId.
	window rectangle: (Rectangle origin: aSetWindowBounds3Command x @ aSetWindowBounds3Command y
				extent: aSetWindowBounds3Command w @ aSetWindowBounds3Command h)!

processSetWindowTypeCommand: aSetWindowTypeCommand 
	| window |
	window := self lookupWindow: aSetWindowTypeCommand windowId.
	window type: aSetWindowTypeCommand windowType!

processSetWindowUserTitleCommand: aSetWindowUserTitleCommand 
	| window |
	window := self lookupWindow: aSetWindowUserTitleCommand windowId.
	window userTitle: aSetWindowUserTitleCommand userTitle!

processSetWindowVisibleOnAllWorkspacesCommand: aSetWindowVisibleOnAllWorkspacesCommand
	| window |
	window := self lookupWindow: aSetWindowVisibleOnAllWorkspacesCommand windowId.
	window visibleOnAllWorkspaces: aSetWindowVisibleOnAllWorkspacesCommand visibleOnAllWorkspaces!

processSetWindowWorkspace2Command: aSetWindowWorkspace2Command 
	| window |
	window := self lookupWindow: aSetWindowWorkspace2Command windowId.
	window workspace: aSetWindowWorkspace2Command workspace!

processStorageBackendCommand: aStorageBackendCommand!

processUnknownSessionCommand: anUnknownSessionCommand!

processUpdateTabNavigationCommand: anUpdateTabNavigationCommand
	| tab |
	tab := self lookupTab: anUpdateTabNavigationCommand tabId.
	tab navigationEntries
		add: anUpdateTabNavigationCommand index + 1 -> anUpdateTabNavigationCommand virtualUrl! !

!BrowserSession categoriesForMethods!
activeTabs!public! !
initialize!public! !
lookupTab:!public! !
lookupWindow:!public! !
processLastActiveTimeCommand:!public! !
processSessionStorageAssociatedCommand:!public! !
processSetActiveWindowCommand:!public! !
processSetPinnedStateCommand:!public! !
processSetSelectedNavigationIndexCommand:!public! !
processSetSelectedTabInIndexCommand:!public! !
processSetTabGroupCommand:!public! !
processSetTabIndexInWindowCommand:!public! !
processSetTabWindowCommand:!public! !
processSetWindowAppNameCommand:!public! !
processSetWindowBounds3Command:!public! !
processSetWindowTypeCommand:!public! !
processSetWindowUserTitleCommand:!public! !
processSetWindowVisibleOnAllWorkspacesCommand:!public! !
processSetWindowWorkspace2Command:!public! !
processStorageBackendCommand:!public! !
processUnknownSessionCommand:!public! !
processUpdateTabNavigationCommand:!public! !
!

