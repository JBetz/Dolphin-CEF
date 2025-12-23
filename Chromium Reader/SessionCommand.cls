"Filed out from Dolphin Smalltalk"!

Object subclass: #SessionCommand
	instanceVariableNames: 'unreadBytes error'
	classVariableNames: 'SessionCommandMap TabCommandMap'
	poolDictionaries: 'ChromiumConstants'
	classInstanceVariableNames: ''!

SessionCommand guid: (GUID fromString: '{64d1f89e-0917-4a6b-8ae7-00ba4725566c}')!

SessionCommand comment: ''!

!SessionCommand categoriesForClass!Kernel-Objects! !

!SessionCommand methodsFor!

error: anError
	error := anError!

hasError
	^error notNil!

isIncomplete
	^unreadBytes notNil and: [unreadBytes > 0]!

isTabNavigation 
	^false!

isUnknown
	^false!

tabId
	^nil!

timestamp
	^Error notYetImplemented!

unreadBytes
	^unreadBytes!

unreadBytes: anInteger
	unreadBytes := anInteger! !

!SessionCommand categoriesForMethods!
error:!private! !
hasError!public! !
isIncomplete!public! !
isTabNavigation!public! !
isUnknown!public! !
tabId!public! !
timestamp!public! !
unreadBytes!public! !
unreadBytes:!private! !
!

!SessionCommand class methodsFor!

initialize
	"self initialize"

	SessionCommandMap := LookupTable new.
	SessionCommandMap
		at: SESSION_COMMAND_SET_TAB_WINDOW put: SetTabWindowCommand;
		at: SESSION_COMMAND_SET_TAB_INDEX_IN_WINDOW put: SetTabIndexInWindowCommand;
		at: SESSION_COMMAND_UPDATE_TAB_NAVIGATION put: UpdateTabNavigationCommand;
		at: SESSION_COMMAND_SET_SELECTED_NAVIGATION_INDEX put: SetSelectedNavigationIndexCommand;
		at: SESSION_COMMAND_SET_SELECTED_TAB_IN_INDEX put: SetSelectedTabInIndexCommand;
		at: SESSION_COMMAND_SET_WINDOW_TYPE put: SetWindowTypeCommand;
		at: SESSION_COMMAND_SET_PINNED_STATE put: SetPinnedStateCommand;
		at: SESSION_COMMAND_SET_WINDOW_BOUNDS_3 put: SetWindowBounds3Command;
		at: SESSION_COMMAND_SET_WINDOW_APP_NAME put: SetWindowAppNameCommand;
		at: SESSION_COMMAND_SESSION_STORAGE_ASSOCIATED put: SessionStorageAssociatedCommand;
		at: SESSION_COMMAND_SET_ACTIVE_WINDOW put: SetActiveWindowCommand;
		at: SESSION_COMMAND_LAST_ACTIVE_TIME put: LastActiveTimeCommand;
		at: SESSION_COMMAND_SET_WINDOW_WORKSPACE_2 put: SetWindowWorkspace2Command;
		at: SESSION_COMMAND_SET_TAB_GROUP put: SetTabGroupCommand;
		at: SESSION_COMMAND_SET_WINDOW_USER_TITLE put: SetWindowUserTitleCommand;
		at: SESSION_COMMAND_SET_WINDOW_VISIBLE_ON_ALL_WORKSPACES
			put: SetWindowVisibleOnAllWorkspacesCommand;
		at: SESSION_COMMAND_STORAGE_BACKEND put: StorageBackendCommand.
	TabCommandMap := LookupTable new.
	TabCommandMap
		at: TAB_COMMAND_UPDATE_TAB_NAVIGATION put: UpdateTabNavigationCommand;
		at: TAB_COMMAND_SELECT_NAVIGATION_IN_TAB put: SelectedNavigationInTabCommand! !

!SessionCommand class categoriesForMethods!
initialize!public! !
!

