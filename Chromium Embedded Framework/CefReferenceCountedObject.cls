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

addRef
	^self base addRef!

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
	^self base callRelease!

delegate
	^delegate!

delegate: anObject
	delegate := anObject!

disableReferenceCounting
	self base disableReferenceCounting!

hasAtLeastOneRef
	^self base hasAtLeastOneRef!

hasOneRef
	^self base hasOneRef!

initialize
	super initialize.
	self base
		cefSize: self class byteSize;
		disableReferenceCounting! !
!CefReferenceCountedObject categoriesForMethods!
addRef!public! !
base!**compiled accessors**!public! !
base:!**compiled accessors**!public! !
callRelease!public! !
delegate!public! !
delegate:!public! !
disableReferenceCounting!public! !
hasAtLeastOneRef!public! !
hasOneRef!public! !
initialize!public! !
!

!CefReferenceCountedObject class methodsFor!

defineFields
	"CefReferenceCountedObject  compileDefinition"

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

