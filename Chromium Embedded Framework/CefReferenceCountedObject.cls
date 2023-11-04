"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefReferenceCountedObject
	instanceVariableNames: 'delegate'
	classVariableNames: '_OffsetOf_base'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefReferenceCountedObject guid: (GUID fromString: '{de1a3d3a-824e-487b-877b-7541844e5886}')!
CefReferenceCountedObject addClassConstant: '_OffsetOf_base' value: 16r0!
CefReferenceCountedObject comment: ''!
!CefReferenceCountedObject categoriesForClass!External-Data-Structured! !
!CefReferenceCountedObject methodsFor!

base
	"Answer the <CefBaseRefCounted> value of the receiver's 'base' field."

	^CefBaseRefCounted fromAddress: bytes yourAddress!

base: aCefBaseRefCounted
	"Set the receiver's 'base' field to the value of the argument, aCefBaseRefCounted"

	aCefBaseRefCounted
		replaceBytesOf: bytes
		from: ##(_OffsetOf_base + 1)
		to: ##(_OffsetOf_base + CefBaseRefCounted basicByteSize)
		startingAt: 1!

delegate
	^delegate!

delegate: anObject
	delegate := anObject!

initialize
	super initialize.
	self base
		initialize;
		cefSize: self class byteSize;
		cefObject: self! !
!CefReferenceCountedObject categoriesForMethods!
base!public! !
base:!public! !
delegate!public! !
delegate:!public! !
initialize!public! !
!

!CefReferenceCountedObject class methodsFor!

defineFields
	"CEFReferenceCountedObject compileDefinition"

	self defineField: #base type: (StructureField type: CefBaseRefCounted)!

getFieldNames
	^#(#base)! !
!CefReferenceCountedObject class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

