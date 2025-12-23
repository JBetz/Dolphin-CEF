"Filed out from Dolphin Smalltalk"!

BrowserFileReader subclass: #SessionFileReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SessionFileReader guid: (GUID fromString: '{75c4e3bf-4fcc-4160-834d-4b0aa5c6d77e}')!

SessionFileReader comment: ''!

!SessionFileReader categoriesForClass!Unclassified! !

!SessionFileReader class methodsFor!

initialize
	"self initialize"

	CommandMap := LookupTable new.
	CommandMap
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
		at: SESSION_COMMAND_STORAGE_BACKEND put: StorageBackendCommand! !

!SessionFileReader class categoriesForMethods!
initialize!public! !
!

