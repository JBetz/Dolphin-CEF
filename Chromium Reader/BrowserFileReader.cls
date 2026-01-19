"Filed out from Dolphin Smalltalk"!

Object subclass: #BrowserFileReader
	instanceVariableNames: 'browserInfo signature version commands sessionFileStream tabsFileStream'
	classVariableNames: ''
	poolDictionaries: 'ChromiumConstants SDLConstants'
	classInstanceVariableNames: 'SessionCommandMap TabCommandMap'!

BrowserFileReader guid: (GUID fromString: '{06a9a778-750d-41bc-b3b9-7707e45581c3}')!

BrowserFileReader comment: ''!

!BrowserFileReader categoriesForClass!Unclassified! !

!BrowserFileReader methodsFor!

browserInfo: aBrowserInfo
	browserInfo := aBrowserInfo!

browserSessionsFolder
	| sdl userHomeFolder |
	sdl := SDL3Library default.
	userHomeFolder := sdl getUserFolder_folder: SDL_FOLDER_HOME.
	^'<1s>\AppData\Local\<2s>\<3s>\User Data\Default\Sessions'
		expandMacrosWith: userHomeFolder
		with: browserInfo organization
		with: browserInfo application!

commands
	commands ifNil: [self read].
	^commands!

copySessionFiles
	| timestamp newDirectory createResult files callback |
	timestamp := DateAndTime now printStringFormat: 'yyyy-MM-dd HH-mm-ss'.
	newDirectory := '<1s><2s> Session <3s>'
				expandMacrosWith: self sdl getCurrentDirectory
				with: browserInfo name
				with: timestamp.
	createResult := self sdl createDirectory_path: newDirectory.
	createResult ifFalse: [self error: self sdl getError].
	files := OrderedCollection new.
	callback := BlockCallback block: 
					[:userdata :dirname :fname |
					files add: dirname -> fname.
					SDL_ENUM_CONTINUE]
				descriptor: (ExternalDescriptor
						callingConvention: 'cdecl:'
						returnType: 'sdword'
						argumentTypes: 'void* char* char*').
	self sdl
		enumerateDirectory_path: self browserSessionsFolder
		callback: callback asParameter
		userdata: nil.
	callback free.
	files do: 
			[:each |
			| copyResult oldPath newPath |
			oldPath := each key , each value.
			newPath := newDirectory , '\' , each value.
			copyResult := self sdl copyFile_oldpath: oldPath newpath: newPath.
			copyResult ifFalse: [self error: self sdl getError]].
	^newDirectory!

findLatestFileIn: aString glob: anotherString
	| count files latestFile latestModificationTime |
	count := SDWORD new.
	files := self sdl
				globDirectory_path: aString
				pattern: anotherString
				flags: 0
				count: count.
	count value = 0 ifTrue: [^nil].
	files do: 
			[:each |
			| fileName filePath pathInfo pathInfoResult |
			fileName := Utf8String fromAddress: each.
			filePath := aString , '\' , fileName.
			pathInfo := SDL_PathInfo new.
			pathInfoResult := self sdl getPathInfo_path: filePath info: pathInfo.
			pathInfoResult ifFalse: [self error: self sdl getError].
			(latestFile isNil or: [pathInfo modify_time > latestModificationTime])
				ifTrue: 
					[latestFile := filePath.
					latestModificationTime := pathInfo modify_time]].
	^File open: latestFile!

findLatestSessionFileIn: aString
	^self findLatestFileIn: aString glob: 'Session_*'!

findLatestTabsFileIn: aString
	^self findLatestFileIn: aString glob: 'Tabs_*'!

openSessionFilesIn: aString
	| latestSessionFile latestTabsFile |
	latestSessionFile := self findLatestSessionFileIn: aString.
	latestTabsFile := self findLatestTabsFileIn: aString.
	sessionFileStream := FileStream on: latestSessionFile type: #binary.
	tabsFileStream := FileStream on: latestTabsFile type: #binary!

printResultStats
	| failedCommands failureStats incompleteCommands incompleteStats unknownCommands successRate |
	commands isEmpty
		ifTrue: 
			[Transcript
				display: 'No commands';
				cr.
			^self].
	failedCommands := commands select: [:each | each hasError].
	incompleteCommands := commands select: [:each | each isIncomplete].
	unknownCommands := commands select: [:each | each isUnknown].
	failureStats := Bag new.
	failedCommands do: [:each | failureStats add: each class].
	incompleteStats := Bag new.
	incompleteCommands do: [:each | incompleteStats add: each class].
	successRate := commands size
				- (failedCommands size + incompleteCommands size + unknownCommands size)
					asPercentageOf: commands size.
	Transcript
		cr;
		display: successRate;
		display: '% successfully read';
		cr;
		display: ('Total commands: <1d>' expandMacrosWith: commands size);
		cr;
		display: ('Unknown commands: <1d>' expandMacrosWith: unknownCommands size);
		cr;
		display: ('Incomplete commands: <1d>' expandMacrosWith: incompleteCommands size);
		cr.
	incompleteStats valuesAndCountsDo: 
			[:class :count |
			Transcript
				tab;
				display: class -> count;
				cr].
	Transcript
		display: ('Failed commands: <1d>' expandMacrosWith: failedCommands size);
		cr.
	failureStats valuesAndCountsDo: 
			[:class :count |
			Transcript
				tab;
				display: class -> count;
				cr]!

read
	| sessionFilesDirectory |
	sessionFilesDirectory := self copySessionFiles.
	self
		openSessionFilesIn: sessionFilesDirectory;
		readHeader;
		readCommands;
		printResultStats!

readCommands
	| rawCommands |
	rawCommands := OrderedCollection new.
	commands := OrderedCollection new.
	[sessionFileStream atEnd] whileFalse: 
			[| size contents |
			size := sessionFileStream nextWORD asInteger.
			contents := sessionFileStream next: size.
			rawCommands add: contents].
	rawCommands do: 
			[:each |
			| type commandClass byteStream command |
			type := each first asInteger.
			commandClass := self class sessionCommandMap at: type ifAbsent: [UnknownSessionCommand].
			byteStream := PickleStream on: each allButFirst.
			command := commandClass fromStream: byteStream.
			command unreadBytes: byteStream size - byteStream position.
			commands add: command]!

readHeader
	signature := (sessionFileStream next: 4) asString.
	self assert: [signature = 'SNSS'].
	version := sessionFileStream nextDWORD asInteger.
	self assert: [version = 3]!

reconstructSession
	| session |
	session := BrowserSession new.
	self commands do: [:each | session perform: each asSelector with: each].
	^session!

sdl
	^SDL3Library default! !

!BrowserFileReader categoriesForMethods!
browserInfo:!private! !
browserSessionsFolder!private! !
commands!private! !
copySessionFiles!private! !
findLatestFileIn:glob:!private! !
findLatestSessionFileIn:!private! !
findLatestTabsFileIn:!private! !
openSessionFilesIn:!private! !
printResultStats!private! !
read!private! !
readCommands!private! !
readHeader!private! !
reconstructSession!public! !
sdl!private! !
!

!BrowserFileReader class methodsFor!

initialize
	"self initialize"

	SessionCommandMap := LookupTable new
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
				at: SESSION_COMMAND_STORAGE_BACKEND put: StorageBackendCommand;
				yourself.
	TabCommandMap := LookupTable new
				at: TAB_COMMAND_UPDATE_TAB_NAVIGATION put: UpdateTabNavigationCommand;
				at: TAB_COMMAND_SELECT_NAVIGATION_IN_TAB put: SelectedNavigationInTabCommand;
				yourself!

sessionCommandMap
	SessionCommandMap ifNil: [self initialize].
	^SessionCommandMap!

tabCommandMap
	TabCommandMap ifNil: [self initialize].
	^TabCommandMap! !

!BrowserFileReader class categoriesForMethods!
initialize!public! !
sessionCommandMap!public! !
tabCommandMap!public! !
!

