"Filed out from Dolphin Smalltalk"!

BrowserFileReader subclass: #TabsFileReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

TabsFileReader guid: (GUID fromString: '{48d7360e-f627-4340-8fa8-9e586ce92367}')!

TabsFileReader comment: ''!

!TabsFileReader categoriesForClass!Unclassified! !

!TabsFileReader class methodsFor!

initialize
	"self initialize"

	CommandMap := LookupTable new.
	CommandMap
		at: TAB_COMMAND_UPDATE_TAB_NAVIGATION put: UpdateTabNavigationCommand;
		at: TAB_COMMAND_SELECT_NAVIGATION_IN_TAB put: SelectedNavigationInTabCommand! !

!TabsFileReader class categoriesForMethods!
initialize!public! !
!

