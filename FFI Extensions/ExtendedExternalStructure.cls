"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #ExtendedExternalStructure
	instanceVariableNames: 'callbacks'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'CallbackRegistry MethodRegistry'!
ExtendedExternalStructure guid: (GUID fromString: '{caf21f64-04a0-4659-bed7-fc798d9543b3}')!
ExtendedExternalStructure comment: ''!
!ExtendedExternalStructure categoriesForClass!External-Data-Structured! !
!ExtendedExternalStructure methodsFor!

initialize
	super initialize.
	callbacks := OrderedCollection new.
	self class callbackRegistry keysAndValuesDo: 
			[:aSymbol :aCallbackField |
			| messageCallback |
			messageCallback := DelegatedMessageCallback
						receiver: self
						selector: aCallbackField callbackSelector
						descriptor: aCallbackField descriptor.
			self perform: aSymbol with: messageCallback asParameter.
			callbacks add: messageCallback]! !
!ExtendedExternalStructure categoriesForMethods!
initialize!public! !
!

!ExtendedExternalStructure class methodsFor!

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
	((anExternalField isKindOf: MethodField)
		and: [fieldName argumentCount = 0 and: [(fieldName includes: $_) not]])
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

initialize
	super initialize.
	CallbackRegistry := Dictionary new.
	MethodRegistry := Dictionary new.
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
					[| fieldSetter |
					fieldSetter := (selector , ':') asSymbol.
					field cName: fieldSetter.
					self callbackRegistry at: fieldSetter put: field]]! !
!ExtendedExternalStructure class categoriesForMethods!
callbackRegistry!public! !
compileExternalMethodForField:!compiling!private! !
compileNewFields!compiling!private! !
compileWrappedExternalMethodForField:!compiling!private! !
defineField:type:!public! !
externalMethodAt:ifAbsentBindTo:!private! !
initialize!public! !
recompileDefinition!private! !
registerCallbacks!private! !
!

