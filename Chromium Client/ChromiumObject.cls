"Filed out from Dolphin Smalltalk"!

Object subclass: #ChromiumObject
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ChromiumObject guid: (GUID fromString: '{2064d9e6-484e-4a7c-99e5-5a37ce7615a7}')!

ChromiumObject comment: ''!

!ChromiumObject categoriesForClass!Kernel-Objects! !

!ChromiumObject methodsFor!

model
	^model!

model: anObject
	model := anObject! !

!ChromiumObject categoriesForMethods!
model!public! !
model:!public! !
!

!ChromiumObject class methodsFor!

compileRpcDefinitions
	"self compileRpcDefinitions"

	self
		defineRpcMethods;
		defineRpcCallbacks!

defineRpcCallback: aSymbol arguments: aCollection
	^self
		defineRpcCallback: aSymbol
		target: #view
		arguments: aCollection
		hasReturnValue: false!

defineRpcCallback: aSymbol arguments: aCollection hasReturnValue: aBoolean
	^self
		defineRpcCallback: aSymbol
		target: #view
		arguments: aCollection
		hasReturnValue: aBoolean!

defineRpcCallback: aSymbol hasReturnValue: aBoolean
	^self
		defineRpcCallback: aSymbol
		target: #view
		arguments: #()
		hasReturnValue: aBoolean!

defineRpcCallback: aSymbol target: anotherSymbol
	self
		defineRpcCallback: aSymbol
		target: anotherSymbol
		arguments: #()
		hasReturnValue: false!

defineRpcCallback: aSymbol target: anotherSymbol arguments: aCollection
	^self defineRpcCallback: aSymbol target: anotherSymbol arguments: aCollection hasReturnValue: false!

defineRpcCallback: aSymbol target: anotherSymbol arguments: aCollection hasReturnValue: aBoolean
	| source |
	source := Smalltalk developmentSystem
				reformatSource: (RpcCallbackMethodBuilder
						selector: aSymbol
						target: anotherSymbol
						arguments: aCollection
						hasReturnValue: aBoolean) buildSource
				in: self.
	self compile: source categories: #('private' '**compiled callbacks**' 'rpc')!

defineRpcCallback: aSymbol target: anotherSymbol hasReturnValue: aBoolean
	^self
		defineRpcCallback: aSymbol
		target: anotherSymbol
		arguments: #()
		hasReturnValue: aBoolean!

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
	self compile: source categories: #('**compiled methods**' 'rpc')!

defineRpcMethod: aSymbol withCallback: aBoolean
	self defineRpcMethod: aSymbol arguments: #() withCallback: aBoolean!

for: anObject
	^self new model: anObject!

new
	^super new initialize! !

!ChromiumObject class categoriesForMethods!
compileRpcDefinitions!public! !
defineRpcCallback:arguments:!public! !
defineRpcCallback:arguments:hasReturnValue:!public! !
defineRpcCallback:hasReturnValue:!public! !
defineRpcCallback:target:!public! !
defineRpcCallback:target:arguments:!public! !
defineRpcCallback:target:arguments:hasReturnValue:!public! !
defineRpcCallback:target:hasReturnValue:!public! !
defineRpcMethod:!private! !
defineRpcMethod:arguments:!private! !
defineRpcMethod:arguments:withCallback:!private! !
defineRpcMethod:withCallback:!private! !
for:!public! !
new!public! !
!

