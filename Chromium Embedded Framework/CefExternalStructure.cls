"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefExternalStructure
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cefSize'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefExternalStructure guid: (GUID fromString: '{fb12208b-42a9-4ff5-9237-9554c3fd91af}')!

CefExternalStructure addClassConstant: '_OffsetOf_cefSize' value: 16r0!

CefExternalStructure comment: ''!

!CefExternalStructure categoriesForClass!External-Data-Structured! !

!CefExternalStructure methodsFor!

cefSize
	"Answer the <Integer> value of the receiver's 'cefSize' field."

	^bytes dwordAtOffset: _OffsetOf_cefSize!

cefSize: anInteger
	"Set the receiver's 'cefSize' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_cefSize put: anInteger!

initialize
	super initialize.
	self cefSize: self class byteSize! !

!CefExternalStructure categoriesForMethods!
cefSize!**compiled accessors**!public! !
cefSize:!**compiled accessors**!public! !
initialize!public! !
!

!CefExternalStructure class methodsFor!

defineFields
	"self compileDefinition"

	self defineField: #cefSize type: DWORDField new!

getFieldNames
	^#(#cefSize)! !

!CefExternalStructure class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

