"Filed out from Dolphin Smalltalk"!

Object subclass: #RemoteChromiumObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

RemoteChromiumObject guid: (GUID fromString: '{2064d9e6-484e-4a7c-99e5-5a37ce7615a7}')!

RemoteChromiumObject comment: ''!

!RemoteChromiumObject categoriesForClass!Kernel-Objects! !

!RemoteChromiumObject class methodsFor!

compileRpcDefinitions
	"self compileRpcDefinitions"

	self
		defineRpcMethods;
		defineRpcCallbacks!

defineRpcCallback: aSymbol
	self defineRpcCallback: aSymbol arguments: #() hasReturnValue: false!

defineRpcCallback: aSymbol arguments: aCollection
	^self defineRpcCallback: aSymbol arguments: aCollection hasReturnValue: false!

defineRpcCallback: aSymbol arguments: aCollection hasReturnValue: aBoolean
	| methodHeader source |
	methodHeader := aSymbol , ': aDictionary'.
	source := String writeStream: 256.
	source
		nextPutAll: methodHeader;
		crtab.
	aCollection isEmpty
		ifFalse: [source nextPutAll: ('| <1s> |' expandMacrosWith: (Character space join: aCollection))].
	aCollection do: 
			[:each |
			source
				nextPutAll: ('<1s> := aDictionary at: #<1s>.' expandMacrosWith: each);
				crtab].
	aBoolean ifTrue: [source nextPutAll: '^'].
	aCollection isEmpty
		ifTrue: [source nextPutAll: ('host <1s>' expandMacrosWith: aSymbol)]
		ifFalse: 
			[source nextPutAll: (aCollection allButFirst
						inject: ('host <1s>: <2s>' expandMacrosWith: aSymbol with: aCollection first)
						into: [:sum :each | sum , (' <1s>: <1s>' expandMacrosWith: each)])].
	source nextPut: $..
	aBoolean
		ifFalse: 
			[source
				crtab;
				nextPutAll: '^nil'].
	source := Smalltalk developmentSystem reformatSource: source contents in: self.
	self compile: source categories: {ExternalStructure autoGenCategory. 'callback'}!

defineRpcMethod: aSymbol
	self
		defineRpcMethod: aSymbol
		arguments: #()
		withCallback: false!

defineRpcMethod: aSymbol arguments: aCollection
	self
		defineRpcMethod: aSymbol
		arguments: aCollection
		withCallback: false!

defineRpcMethod: aSymbol arguments: aCollection withCallback: aBoolean
	| methodHeader source |
	aCollection isEmpty
		ifTrue: [methodHeader := aBoolean ifTrue: [(aSymbol , ': callback') asSymbol] ifFalse: [aSymbol]]
		ifFalse: 
			[methodHeader := aCollection allButFirst
						inject: ('<1s>: <2s> ' expandMacrosWith: aSymbol with: aCollection first)
						into: [:sum :each | sum , ('<1s>: <1s> ' expandMacrosWith: each)].
			aBoolean ifTrue: [methodHeader := methodHeader , ' callback: callback']].
	source := String writeStream: 256.
	source
		nextPutAll: methodHeader;
		crtab;
		nextPutAll: 'id ifNil: [^self].';
		nextPutAll: 'client send: (Dictionary new ';
		nextPutAll: 'at: #id put: GUID newUnique idlString;';
		nextPutAll: ('at: #class put: #<1s>;' expandMacrosWith: self rpcClassName);
		nextPutAll: ('at: #method put: #<1s>;' expandMacrosWith: aSymbol capitalized);
		nextPutAll: 'at: #instanceId put: id;'.
	aCollection isEmpty
		ifTrue: [source nextPutAll: 'at: #arguments put: nil;']
		ifFalse: 
			[source nextPutAll: 'at: #arguments put: (Dictionary new '.
			aCollection do: [:each | source nextPutAll: ('at: #<1s> put: <1s>;' expandMacrosWith: each)].
			source nextPutAll: 'yourself);'].
	source nextPutAll: 'yourself)'.
	aBoolean ifTrue: [source nextPutAll: ' onSuccess: callback'].
	source := Smalltalk developmentSystem reformatSource: source contents in: self.
	self compile: source categories: {ExternalStructure autoGenCategory. 'rpc'}!

defineRpcMethod: aSymbol withCallback: aBoolean
	self defineRpcMethod: aSymbol arguments: #() withCallback: aBoolean!

new
	^super new initialize! !

!RemoteChromiumObject class categoriesForMethods!
compileRpcDefinitions!public! !
defineRpcCallback:!private! !
defineRpcCallback:arguments:!private! !
defineRpcCallback:arguments:hasReturnValue:!private! !
defineRpcMethod:!private! !
defineRpcMethod:arguments:!private! !
defineRpcMethod:arguments:withCallback:!private! !
defineRpcMethod:withCallback:!private! !
new!public! !
!

