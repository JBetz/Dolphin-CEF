"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefBaseRefCounted
	instanceVariableNames: 'cefObject referenceCount'
	classVariableNames: '_OffsetOf_add_ref _OffsetOf_cefSize _OffsetOf_has_at_least_one_ref _OffsetOf_has_one_ref _OffsetOf_release'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefBaseRefCounted guid: (GUID fromString: '{2217b8ea-8a2c-4128-bc83-478475d0dc5e}')!
CefBaseRefCounted addClassConstant: '_OffsetOf_add_ref' value: 16r4!
CefBaseRefCounted addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefBaseRefCounted addClassConstant: '_OffsetOf_has_at_least_one_ref' value: 16r10!
CefBaseRefCounted addClassConstant: '_OffsetOf_has_one_ref' value: 16rC!
CefBaseRefCounted addClassConstant: '_OffsetOf_release' value: 16r8!
CefBaseRefCounted comment: ''!
!CefBaseRefCounted categoriesForClass!External-Data-Structured! !
!CefBaseRefCounted methodsFor!

add_ref
	"Answer the <ExternalAddress> value of the receiver's 'add_ref' field."

	^(bytes uintPtrAtOffset: _OffsetOf_add_ref) asExternalAddress!

add_ref: anExternalAddress
	"Set the receiver's 'add_ref' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_add_ref put: anExternalAddress!

addReference: aCEFBaseRefCounted
	referenceCount := referenceCount + 1!

cefObject: aCefReferenceCountedObject
	cefObject := aCefReferenceCountedObject!

cefSize
	"Answer the <Integer> value of the receiver's 'cefSize' field."

	^bytes dwordAtOffset: _OffsetOf_cefSize!

cefSize: anInteger
	"Set the receiver's 'cefSize' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_cefSize put: anInteger!

delegate
	^self!

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

hasAtLeastOneReference: aCEFBaseRefCounted
	^(referenceCount > 0) asInteger!

hasOneReference: aCEFBaseRefCounted
	^(referenceCount = 1) asInteger!

initializePointer
	super initializePointer.
	referenceCount := 1!

referenceCount
	^referenceCount!

release
	"Answer the <ExternalAddress> value of the receiver's 'release' field."

	^(bytes uintPtrAtOffset: _OffsetOf_release) asExternalAddress!

release: anExternalAddress
	"Set the receiver's 'release' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_release put: anExternalAddress!

releaseReference: aCEFBaseRefCounted
	referenceCount := 0 max: referenceCount - 1.
	referenceCount = 0 ifTrue: [self free].
	^(referenceCount = 0) asInteger! !
!CefBaseRefCounted categoriesForMethods!
add_ref!**compiled accessors**!public! !
add_ref:!**compiled accessors**!public! !
addReference:!public! !
cefObject:!public! !
cefSize!**compiled accessors**!public! !
cefSize:!**compiled accessors**!public! !
delegate!public! !
has_at_least_one_ref!**compiled accessors**!public! !
has_at_least_one_ref:!**compiled accessors**!public! !
has_one_ref!**compiled accessors**!public! !
has_one_ref:!**compiled accessors**!public! !
hasAtLeastOneReference:!public! !
hasOneReference:!public! !
initializePointer!public! !
referenceCount!public! !
release!**compiled accessors**!public! !
release:!**compiled accessors**!public! !
releaseReference:!public! !
!

!CefBaseRefCounted class methodsFor!

defineFields
	"CefBaseRefCounted  compileDefinition"
	
	self
		defineField: #cefSize type: DWORDField new;
		defineField: #add_ref
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBaseRefCounted*')
					smalltalkName: #addReference:);
		defineField: #release
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBaseRefCounted*')
					smalltalkName: #releaseReference:);
		defineField: #has_one_ref
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBaseRefCounted*')
					smalltalkName: #hasOneReference:);
		defineField: #has_at_least_one_ref
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBaseRefCounted*')
					smalltalkName: #hasAtLeastOneReference:)!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref)! !
!CefBaseRefCounted class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

