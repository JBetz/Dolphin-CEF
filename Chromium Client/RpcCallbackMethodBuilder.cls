"Filed out from Dolphin Smalltalk"!

Object subclass: #RpcCallbackMethodBuilder
	instanceVariableNames: 'selector target arguments hasReturnValue'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

RpcCallbackMethodBuilder guid: (GUID fromString: '{7fac4451-644f-4234-902d-e9160f18c0c5}')!

RpcCallbackMethodBuilder comment: ''!

!RpcCallbackMethodBuilder categoriesForClass!Unclassified! !

!RpcCallbackMethodBuilder methodsFor!

arguments: anObject
	arguments := anObject!

buildSource
	| source |
	source := String writeStream: 256.
	source
		nextPutAll: selector , ': aDictionary';
		crtab;
		nextPutAll: self localDeclarations;
		nextPutAll: self dictionaryExtractions.
	hasReturnValue ifTrue: [source nextPutAll: '^'].
	source
		nextPutAll: self messageSend;
		nextPut: $..
	hasReturnValue
		ifFalse: 
			[source
				crtab;
				nextPutAll: '^nil'].
	^source contents!

dictionaryExtractions
	^String streamContents: 
			[:s |
			arguments do: 
					[:each |
					s
						nextPutAll: ('the<1s> := aDictionary at: #<2s>.' expandMacrosWith: each capitalized with: each);
						crtab]]!

hasReturnValue: anObject
	hasReturnValue := anObject!

localDeclarations
	arguments isEmpty ifTrue: [^''].
	^'| <1s> |'
		expandMacrosWith: (arguments inject: '' into: [:sum :each | sum , ' the' , each capitalized])!

messageSend
	arguments isEmpty ifTrue: [^'<1s> <2s>' expandMacrosWith: target with: selector].
	^arguments allButFirst inject: ('<1s> <2s>: the<3s>'
				expandMacrosWith: target
				with: selector
				with: arguments first capitalized)
		into: [:sum :each | sum , (' <1s>: the<2s>' expandMacrosWith: each with: each capitalized)]!

selector: anObject
	selector := anObject!

target: anObject
	target := anObject! !

!RpcCallbackMethodBuilder categoriesForMethods!
arguments:!public! !
buildSource!public! !
dictionaryExtractions!public! !
hasReturnValue:!public! !
localDeclarations!public! !
messageSend!public! !
selector:!public! !
target:!public! !
!

!RpcCallbackMethodBuilder class methodsFor!

selector: aSymbol target: anotherSymbol arguments: aCollection hasReturnValue: aBoolean
	^self new
		selector: aSymbol;
		target: anotherSymbol;
		arguments: aCollection;
		hasReturnValue: aBoolean;
		yourself! !

!RpcCallbackMethodBuilder class categoriesForMethods!
selector:target:arguments:hasReturnValue:!public! !
!

