"Filed out from Dolphin Smalltalk"!

ProcedureField subclass: #MethodField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

MethodField guid: (GUID fromString: '{47b3bc44-832b-4a45-b8a3-5e7135db5c35}')!

MethodField comment: ''!

!MethodField categoriesForClass!External-Data-Types! !

!MethodField methodsFor!

generateExternalMethodHeader
	^smalltalkName
		ifNotNil: 
			[| selfArgumentName |
			selfArgumentName := self selfArgumentName.
			smalltalkName argumentCount = 0
				ifTrue: [^'_' , smalltalkName , '_' , selfArgumentName , ': ' , selfArgumentName]
				ifFalse: 
					[| methodParts baseName arguments |
					methodParts := $_ split: smalltalkName.
					baseName := methodParts first.
					arguments := methodParts second asSymbol.
					arguments keywords inject: '_' , baseName , '_' , selfArgumentName , ': ' , selfArgumentName , ' '
						into: [:sum :each | sum , each , ' ' , each allButLast , ' ']]]
		ifNil: 
			[| methodSelector |
			methodSelector := cName fromSnakeCaseToCamelCase , '_'.
			descriptor argumentTypes do: 
					[:typeName |
					| keyword |
					keyword := typeName asArgumentName.
					methodSelector := methodSelector , keyword , ': ' , keyword , ' '].
			'_' , methodSelector asSymbol]!

generateExternalMethodSelector
	^smalltalkName
		ifNotNil: 
			[smalltalkName isUnary
				ifTrue: [('_' , smalltalkName , '_' , self selfArgumentName , ':') asSymbol]
				ifFalse: 
					[| smalltalkNameParts baseName arguments |
					smalltalkNameParts := $_ split: smalltalkName.
					baseName := smalltalkNameParts first.
					arguments := smalltalkNameParts second asSymbol.
					('_' , baseName , '_' , self selfArgumentName , ':' , arguments) asSymbol]]
		ifNil: 
			[| methodSelector |
			methodSelector := '_' , cName fromSnakeCaseToCamelCase , '_'.
			descriptor argumentTypes do: 
					[:typeName |
					| keyword |
					keyword := typeName asArgumentName.
					methodSelector := methodSelector , keyword , ':'].
			methodSelector asSymbol]!

generateWrappedExternalMethodHeader
	^smalltalkName
		ifNotNil: 
			[smalltalkName isUnary
				ifTrue: [smalltalkName]
				ifFalse: 
					[| smalltalkNameParts baseName arguments |
					smalltalkNameParts := $_ split: smalltalkName.
					baseName := smalltalkNameParts first.
					arguments := smalltalkNameParts second asSymbol.
					arguments keywords inject: baseName , '_'
						into: [:sum :each | sum , each , ' ' , each allButLast , ' ']]]
		ifNil: 
			[| methodHeader |
			methodHeader := cName fromSnakeCaseToCamelCase asSymbol.
			methodHeader argumentCount > 0
				ifTrue: 
					[methodHeader := methodHeader , '_'.
					descriptor argumentTypes allButFirst do: 
							[:typeName |
							| keyword |
							keyword := (typeName reject: [:each | each = $*]) uncapitalized.
							methodHeader := methodHeader , keyword , ': ' , keyword , ' ']].
			methodHeader]!

printArgumentsDeclarationOn: aPuttableStream
	| argumentCount argumentNames |
	smalltalkName
		ifNil: [self error: 'Non-unary method fields require selector to name keyword arguments'].
	argumentCount := smalltalkName argumentCount.
	argumentNames := ($_ split: smalltalkName) second asSymbol keywords.
	aPuttableStream
		crtab;
		nextPutAll: 'arguments := Array new: ' , (argumentCount + 1) displayString , '.';
		crtab;
		nextPutAll: 'arguments';
		crtab;
		nextPutAll: 'at: 1 put: self;';
		crtab.
	1 to: argumentCount
		do: 
			[:index |
			aPuttableStream
				tab;
				nextPutAll: ('at: <1d> put: <2d>' expandMacrosWith: index + 1
							with: (argumentNames at: index) allButLast);
				nextPut: (index = argumentCount ifTrue: [$.] ifFalse: [$;]);
				crtab]!

printExternalMethodOn: aPuttableStream
	aPuttableStream
		nextPutAll: self generateExternalMethodHeader;
		crtab;
		nextPut: $<;
		nextPutAll: descriptor callingConvention;
		nextPut: Character space;
		nextPutAll: descriptor returnType;
		nextPut: Character space;
		nextPutAll: cName.
	descriptor argumentTypes do: 
			[:each |
			aPuttableStream
				nextPut: Character space;
				nextPutAll: each].
	aPuttableStream nextPut: $>.
	aPuttableStream
		crtab;
		nextPutAll: '^self invalidCall: _failureCode'!

printKeywordMessageBodyOn: aPuttableStream
	aPuttableStream
		nextPutAll: '| method arguments |';
		crtab.
	self
		printMethodDeclarationOn: aPuttableStream;
		printArgumentsDeclarationOn: aPuttableStream.
	aPuttableStream
		crtab;
		nextPutAll: '^method value: self withArguments: arguments'!

printMethodDeclarationOn: aPuttableStream
	aPuttableStream
		nextPutAll: 'method := self class externalMethodAt: ';
		nextPut: $#;
		nextPutAll: self generateExternalMethodSelector;
		nextPut: Character space;
		nextPutAll: 'ifAbsentBindTo: self ';
		nextPutAll: cName;
		nextPut: $.!

printUnaryMessageBodyOn: aPuttableStream
	aPuttableStream
		nextPutAll: '| method |';
		crtab.
	self printMethodDeclarationOn: aPuttableStream.
	aPuttableStream
		crtab;
		nextPutAll: '^method value: self withArguments: (Array with: self)'!

printWrappedExternalMethodOn: aPuttableStream
	| methodSelector |
	methodSelector := smalltalkName ifNil: [cName].
	aPuttableStream
		nextPutAll: self generateWrappedExternalMethodHeader;
		crtab.
	methodSelector isUnary
		ifTrue: [self printUnaryMessageBodyOn: aPuttableStream]
		ifFalse: [self printKeywordMessageBodyOn: aPuttableStream]!

selfArgumentName
	^descriptor argumentTypes first asArgumentName! !

!MethodField categoriesForMethods!
generateExternalMethodHeader!private! !
generateExternalMethodSelector!private! !
generateWrappedExternalMethodHeader!private! !
printArgumentsDeclarationOn:!private! !
printExternalMethodOn:!public! !
printKeywordMessageBodyOn:!private! !
printMethodDeclarationOn:!private! !
printUnaryMessageBodyOn:!private! !
printWrappedExternalMethodOn:!public! !
selfArgumentName!private! !
!

