"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefBaseRefCounted
	instanceVariableNames: 'referenceCount'
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
	Transcript display: #callback_addReference; cr.
	referenceCount := referenceCount + 1.
	^referenceCount!

cefSize
	"Answer the <Integer> value of the receiver's 'cefSize' field."

	^bytes dwordAtOffset: _OffsetOf_cefSize!

cefSize: anInteger
	"Set the receiver's 'cefSize' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_cefSize put: anInteger!

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
	Transcript display: #callback_hasOneReference; cr.
	^referenceCount > 0!

hasOneReference: aCEFBaseRefCounted
	Transcript display: #callback_hasOneReference; cr.
	^referenceCount = 1!

initialize
	super initialize.
	self cefSize: self class byteSize.
	referenceCount := 1!

release
	"Answer the <ExternalAddress> value of the receiver's 'release' field."

	^(bytes uintPtrAtOffset: _OffsetOf_release) asExternalAddress!

release: anExternalAddress
	"Set the receiver's 'release' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_release put: anExternalAddress!

releaseReference: aCEFBaseRefCounted
	Transcript display: #callback_release; cr.
	referenceCount := 0 max: referenceCount - 1.
	^referenceCount! !
!CefBaseRefCounted categoriesForMethods!
add_ref!public! !
add_ref:!public! !
addReference:!public! !
cefSize!public! !
cefSize:!public! !
has_at_least_one_ref!public! !
has_at_least_one_ref:!public! !
has_one_ref!public! !
has_one_ref:!public! !
hasAtLeastOneReference:!public! !
hasOneReference:!public! !
initialize!public! !
release!public! !
release:!public! !
releaseReference:!public! !
!

!CefBaseRefCounted class methodsFor!

defineFields
	"CefBaseRefCounted  compileDefinition
	
	///
	// All ref-counted framework structures must include this structure first.
	///
	typedef struct _cef_base_ref_counted_t {
	  ///
	  // Size of the data structure.
	  ///
	  size_t size;

	  ///
	  // Called to increment the reference count for the object. Should be called
	  // for every new copy of a pointer to a given object.
	  ///
	  void(CEF_CALLBACK* add_ref)(struct _cef_base_ref_counted_t* self);

	  ///
	  // Called to decrement the reference count for the object. If the reference
	  // count falls to 0 the object should self-delete. Returns true (1) if the
	  // resulting reference count is 0.
	  ///
	  int(CEF_CALLBACK* release)(struct _cef_base_ref_counted_t* self);

	  ///
	  // Returns true (1) if the current reference count is 1.
	  ///
	  int(CEF_CALLBACK* has_one_ref)(struct _cef_base_ref_counted_t* self);

	  ///
	  // Returns true (1) if the current reference count is at least 1.
	  ///
	  int(CEF_CALLBACK* has_at_least_one_ref)(struct _cef_base_ref_counted_t* self);
	} cef_base_ref_counted_t;"

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

