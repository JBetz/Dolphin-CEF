"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefExternalStructure
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefExternalStructure guid: (GUID fromString: '{fb12208b-42a9-4ff5-9237-9554c3fd91af}')!

CefExternalStructure comment: ''!

!CefExternalStructure categoriesForClass!External-Data-Structured! !

!CefExternalStructure methodsFor!

initialize
	super initialize.
	self cefSize: self class byteSize! !

!CefExternalStructure categoriesForMethods!
initialize!public! !
!

!CefExternalStructure class methodsFor!

defineFields
	"self compileDefinition"

	self defineField: #cefSize type: DWORDField new! !

!CefExternalStructure class categoriesForMethods!
defineFields!public! !
!

