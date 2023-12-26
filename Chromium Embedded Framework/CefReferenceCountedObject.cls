"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefReferenceCountedObject
	instanceVariableNames: 'delegate referenceCount'
	classVariableNames: '_OffsetOf_add_ref _OffsetOf_cefSize _OffsetOf_has_at_least_one_ref _OffsetOf_has_one_ref _OffsetOf_release'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefReferenceCountedObject guid: (GUID fromString: '{de1a3d3a-824e-487b-877b-7541844e5886}')!
CefReferenceCountedObject addClassConstant: '_OffsetOf_add_ref' value: 16r4!
CefReferenceCountedObject addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefReferenceCountedObject addClassConstant: '_OffsetOf_has_at_least_one_ref' value: 16r10!
CefReferenceCountedObject addClassConstant: '_OffsetOf_has_one_ref' value: 16rC!
CefReferenceCountedObject addClassConstant: '_OffsetOf_release' value: 16r8!
CefReferenceCountedObject comment: ''!
!CefReferenceCountedObject categoriesForClass!External-Data-Structured! !
!CefReferenceCountedObject methodsFor!

add_ref
	"Answer the <ExternalAddress> value of the receiver's 'add_ref' field."

	^(bytes uintPtrAtOffset: _OffsetOf_add_ref) asExternalAddress!

add_ref: anExternalAddress
	"Set the receiver's 'add_ref' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_add_ref put: anExternalAddress!

addReference: aCefReferenceCountedObject
	referenceCount := referenceCount + 1!

cefSize
	"Answer the <Integer> value of the receiver's 'cefSize' field."

	^bytes dwordAtOffset: _OffsetOf_cefSize!

cefSize: anInteger
	"Set the receiver's 'cefSize' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_cefSize put: anInteger!

delegate
	^delegate!

delegate: anObject
	delegate := anObject!

has_at_least_one_ref
	"Answer the <ExternalAddress> value of the receiver's 'has_at_least_one_ref' field."

	^(bytes uintPtrAtOffset: _OffsetOf_has_at_least_one_ref) asExternalAddress!

has_at_least_one_ref: anExternalAddress
	"Set the receiver's 'has_at_least_one_ref' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_has_at_least_one_ref put: anExternalAddress!

has_one_ref
	"Answer the <ExternalAddress> value of the receiver's 'has_one_ref' field."

	^(bytes uintPtrAtOffset: _OffsetOf_has_one_ref) asExternalAddress!

has_one_ref: anExternalAddress
	"Set the receiver's 'has_one_ref' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_has_one_ref put: anExternalAddress!

hasAtLeastOneReference: aCefReferenceCountedObject
	^(referenceCount > 0) asInteger!

hasOneReference: aCefReferenceCountedObject
	^(referenceCount = 1) asInteger!

initialize
	super initialize.
	referenceCount := 100.
	self cefSize: self class byteSize!

referenceCount
	^referenceCount!

release
	"Answer the <ExternalAddress> value of the receiver's 'release' field."

	^(bytes uintPtrAtOffset: _OffsetOf_release) asExternalAddress!

release: anExternalAddress
	"Set the receiver's 'release' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_release put: anExternalAddress!

releaseReference: aCefReferenceCountedObject
	referenceCount := 0 max: referenceCount - 1.
	referenceCount = 0 ifTrue: ["self free"].
	^(referenceCount = 0) asInteger! !
!CefReferenceCountedObject categoriesForMethods!
add_ref!**compiled accessors**!public! !
add_ref:!**compiled accessors**!public! !
addReference:!public! !
cefSize!**compiled accessors**!public! !
cefSize:!**compiled accessors**!public! !
delegate!public! !
delegate:!public! !
has_at_least_one_ref!**compiled accessors**!public! !
has_at_least_one_ref:!**compiled accessors**!public! !
has_one_ref!**compiled accessors**!public! !
has_one_ref:!**compiled accessors**!public! !
hasAtLeastOneReference:!public! !
hasOneReference:!public! !
initialize!public! !
referenceCount!public! !
release!**compiled accessors**!public! !
release:!**compiled accessors**!public! !
releaseReference:!public! !
!

!CefReferenceCountedObject class methodsFor!

defineFields
	"CefReferenceCountedObject  compileDefinition"
	
	self
		defineField: #cefSize type: DWORDField new;
		defineField: #add_ref
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefReferenceCountedObject*')
					smalltalkName: #addReference:);
		defineField: #release
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefReferenceCountedObject*')
					smalltalkName: #releaseReference:);
		defineField: #has_one_ref
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefReferenceCountedObject*')
					smalltalkName: #hasOneReference:);
		defineField: #has_at_least_one_ref
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefReferenceCountedObject*')
					smalltalkName: #hasAtLeastOneReference:)!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref)! !
!CefReferenceCountedObject class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

