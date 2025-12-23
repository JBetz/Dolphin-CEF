"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefReferenceCountedObject
	instanceVariableNames: 'delegate'
	classVariableNames: '_OffsetOf_base'
	poolDictionaries: 'CefConstants'
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

callRelease
	self base callRelease!

cefSize: anInteger
	self base cefSize: anInteger!

delegate
	^delegate!

delegate: anObject 
	delegate := anObject!

disableReferenceCounting
	self base
		add_ref: ExternalAddress new;
		release: ExternalAddress new;
		has_one_ref: ExternalAddress new;
		has_at_least_one_ref: ExternalAddress new!

initialize
	super initialize.
	self
		cefSize: self class byteSize;
		disableReferenceCounting! !

!CefReferenceCountedObject categoriesForMethods!
base!**compiled accessors**!public! !
base:!**compiled accessors**!public! !
callRelease!private! !
cefSize:!private! !
delegate!public! !
delegate:!public! !
disableReferenceCounting!private! !
initialize!public! !
!

!CefReferenceCountedObject class methodsFor!

defineFields
	"self compileDefinition"

	self defineField: #base type: (StructureField type: CefBaseRefCounted)!

getFieldNames
	^#(#base)!

instanceCounts
	| counts |
	counts := Dictionary new.
	self allSubclassesDo: [:each | counts at: each put: each allInstances size].
	^counts! !

!CefReferenceCountedObject class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
instanceCounts!public! !
!

