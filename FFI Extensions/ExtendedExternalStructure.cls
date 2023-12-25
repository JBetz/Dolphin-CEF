"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #ExtendedExternalStructure
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'CallbackRegistry Instances'!
ExtendedExternalStructure guid: (GUID fromString: '{caf21f64-04a0-4659-bed7-fc798d9543b3}')!
ExtendedExternalStructure comment: ''!
!ExtendedExternalStructure categoriesForClass!External-Data-Structured! !
!ExtendedExternalStructure methodsFor!

initialize
	super initialize.
	self class callbackRegistry
		keysAndValuesDo: [:aSymbol :aCallback | self perform: aSymbol with: aCallback asParameter].
	self class addInstance: self! !
!ExtendedExternalStructure categoriesForMethods!
initialize!public! !
!

!ExtendedExternalStructure class methodsFor!

addInstance: anObject
	Instances at: anObject yourAddress put: anObject!

callbackRegistry
	CallbackRegistry ifNil: [CallbackRegistry := Dictionary new].
	^CallbackRegistry!

compileExternalMethodForField: anExternalField
	| methodText |
	methodText := String writeStream: 256.
	anExternalField printExternalMethodOn: methodText.
	self formatAndCompile: methodText contents
		categories: {ExternalStructure autoGenCategory. 'private'}!

compileNewFields
	self definesNewFields ifFalse: [^self].
	self template keysAndValuesDo: 
			[:getSelector :field |
			(field isKindOf: MethodField)
				ifTrue: 
					[field cName: getSelector.
					self
						compileExternalMethodForField: field;
						compileWrappedExternalMethodForField: field].
			field isReadable
				ifTrue: 
					[(self shouldCompile: getSelector forField: field)
						ifTrue: [self compileGetMethod: getSelector forField: field]].
			field isWriteable
				ifTrue: 
					[| setSelector |
					setSelector := (getSelector copyWith: ':') asSymbol.
					(self shouldCompile: setSelector forField: field)
						ifTrue: [self compileSetMethod: setSelector forField: field]]]!

compileWrappedExternalMethodForField: anExternalField
	| methodText |
	methodText := String writeStream: 256.
	anExternalField printWrappedExternalMethodOn: methodText.
	self formatAndCompile: methodText contents categories: anExternalField autoGenCategories!

defineField: fieldName type: anExternalField
	"Add the argument anExternalField as the next field of the receiver's template, 
	with the name, fieldName"

	| offset |
	((anExternalField isKindOf: MethodField) and: 
			[anExternalField smalltalkName isNil
				and: [fieldName argumentCount = 0 and: [(fieldName includes: $_) not]]])
		ifTrue: 
			[Error
				signal: 'For unary C method fields with names that consist of a single word, you need to specify the Smalltalk selector manually in order to distinguish it from the accessor for the struct field. Use MethodField class>>descriptor:smalltalkName when constructing this method field instead of MethodField class>>descriptor.'].
	offset := self structurePacker offsetFor: anExternalField base: self basicByteSize.
	self
		defineField: fieldName
		type: anExternalField
		offset: offset!

externalMethodAt: aSymbol ifAbsentBindTo: anExternalAddress
	| compiledMethod |
	compiledMethod := (self compiledMethodAt: aSymbol) copy.
	^compiledMethod bindTo: anExternalAddress!

getInstance: anInteger
	^Instances at: anInteger ifAbsent: [nil]!

initialize
	super initialize.
	CallbackRegistry := Dictionary new.
	Instances := WeakLookupTable new.
	self compileDefinition!

recompileDefinition
	"Private - Recompiles the existing template for the receiver"

	self decompileDefinition.
	self compileNewFields.
	self compileGetFieldNames.
	self registerCallbacks!

registerCallbacks
	CallbackRegistry ifNil: [CallbackRegistry := Dictionary new] ifNotNil: [CallbackRegistry removeAll].
	self template keysAndValuesDo: 
			[:selector :field |
			(field isKindOf: CallbackField)
				ifTrue: 
					[| fieldSetter callback |
					fieldSetter := (selector , ':') asSymbol.
					field cName: fieldSetter.
					callback := DelegatedMessageCallback
								receiver: self
								selector: field callbackSelector
								descriptor: field descriptor.
					self callbackRegistry at: fieldSetter put: callback]]! !
!ExtendedExternalStructure class categoriesForMethods!
addInstance:!public! !
callbackRegistry!public! !
compileExternalMethodForField:!compiling!private! !
compileNewFields!compiling!private! !
compileWrappedExternalMethodForField:!compiling!private! !
defineField:type:!public! !
externalMethodAt:ifAbsentBindTo:!private! !
getInstance:!public! !
initialize!public! !
recompileDefinition!private! !
registerCallbacks!private! !
!

