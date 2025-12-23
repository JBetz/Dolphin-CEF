"Filed out from Dolphin Smalltalk"!

Object subclass: #BrowserFileReader
	instanceVariableNames: 'stream signature version commands'
	classVariableNames: ''
	poolDictionaries: 'ChromiumConstants'
	classInstanceVariableNames: 'CommandMap'!

BrowserFileReader guid: (GUID fromString: '{06a9a778-750d-41bc-b3b9-7707e45581c3}')!

BrowserFileReader comment: ''!

!BrowserFileReader categoriesForClass!Unclassified! !

!BrowserFileReader methodsFor!

commands
	commands ifNil: [self read].
	^commands!

file: aFile
	stream := FileStream on: aFile type: #binary!

printResultStats
	| failedCommands failureStats incompleteCommands incompleteStats successRate |
	commands isEmpty
		ifTrue: 
			[Transcript
				display: 'No commands';
				cr.
			^self].
	failedCommands := commands select: [:each | each hasError].
	incompleteCommands := commands select: [:each | each isIncomplete].
	failureStats := Bag new.
	failedCommands do: [:each | failureStats add: each class].
	incompleteStats := Bag new.
	incompleteCommands do: [:each | incompleteStats add: each class].
	successRate := commands size - (failedCommands size + incompleteCommands size)
				asPercentageOf: commands size.
	Transcript
		cr;
		display: successRate;
		display: '% successfully read';
		cr;
		display: ('Total commands: <1d>' expandMacrosWith: commands size);
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
	Transcript
		cr;
		display: ('READING BROWSER FILE <1s>' expandMacrosWith: stream file name);
		cr;
		cr.
	self
		readHeader;
		readCommands;
		printResultStats!

readCommands
	| rawCommands |
	rawCommands := OrderedCollection new.
	commands := OrderedCollection new.
	[stream atEnd] whileFalse: 
			[| size contents |
			size := stream nextWORD asInteger.
			contents := stream next: size.
			rawCommands add: contents].
	rawCommands do: 
			[:each |
			| type commandClass byteStream command |
			type := each first asInteger.
			commandClass := self class commandMap at: type ifAbsent: [UnknownSessionCommand].
			byteStream := PickleStream on: each allButFirst.
			command := commandClass fromStream: byteStream.
			command unreadBytes: byteStream size - byteStream position.
			commands add: command]!

readHeader
	signature := (stream next: 4) asString.
	Transcript
		display: ('Signature: <1s>' expandMacrosWith: signature);
		cr.
	self assert: [signature = 'SNSS'].
	version := stream nextDWORD asInteger.
	Transcript
		display: ('Version: <1d>' expandMacrosWith: version);
		cr.
	self assert: [version = 3]! !

!BrowserFileReader categoriesForMethods!
commands!public! !
file:!private! !
printResultStats!private! !
read!public! !
readCommands!private! !
readHeader!private! !
!

!BrowserFileReader class methodsFor!

commandMap
	CommandMap ifNil: [self initialize].
	^CommandMap!

on: aFile
	^self new file: aFile! !

!BrowserFileReader class categoriesForMethods!
commandMap!public! !
on:!public! !
!

