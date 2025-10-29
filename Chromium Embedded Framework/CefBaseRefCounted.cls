"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefBaseRefCounted
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_add_ref _OffsetOf_cefSize _OffsetOf_has_at_least_one_ref _OffsetOf_has_one_ref _OffsetOf_release'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefBaseRefCounted guid: (GUID fromString: '{d7012401-e106-462a-9a7b-8c0cfd3105a7}')!

CefBaseRefCounted addClassConstant: '_OffsetOf_add_ref' value: 16r4!
CefBaseRefCounted addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefBaseRefCounted addClassConstant: '_OffsetOf_has_at_least_one_ref' value: 16r10!
CefBaseRefCounted addClassConstant: '_OffsetOf_has_one_ref' value: 16rC!
CefBaseRefCounted addClassConstant: '_OffsetOf_release' value: 16r8!

CefBaseRefCounted comment: ''!

!CefBaseRefCounted categoriesForClass!External-Data-Structured! !

!CefBaseRefCounted methodsFor!

_addRef_cefBaseRefCounted: cefBaseRefCounted
	<stdcall: void add_ref CefBaseRefCounted*>
	^self invalidCall: _failureCode!

_callRelease_cefBaseRefCounted: cefBaseRefCounted
	<stdcall: sdword release CefBaseRefCounted*>
	^self invalidCall: _failureCode!

_hasAtLeastOneRef_cefBaseRefCounted: cefBaseRefCounted
	<stdcall: sdword has_at_least_one_ref CefBaseRefCounted*>
	^self invalidCall: _failureCode!

_hasOneRef_cefBaseRefCounted: cefBaseRefCounted
	<stdcall: sdword has_one_ref CefBaseRefCounted*>
	^self invalidCall: _failureCode!

add_ref
	"Answer the <ExternalAddress> value of the receiver's 'add_ref' field."

	^(bytes uintPtrAtOffset: _OffsetOf_add_ref) asExternalAddress!

add_ref: anExternalAddress
	"Set the receiver's 'add_ref' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_add_ref put: anExternalAddress!

addRef
	| method |
	method := self class externalMethodAt: #_addRef_cefBaseRefCounted: ifAbsentBindTo: self add_ref.
	^method value: self withArguments: (Array with: self)!

callRelease
	| method |
	method := self class externalMethodAt: #_callRelease_cefBaseRefCounted: ifAbsentBindTo: self release.
	^method value: self withArguments: (Array with: self)!

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

hasAtLeastOneRef
	| method |
	method := self class externalMethodAt: #_hasAtLeastOneRef_cefBaseRefCounted:
				ifAbsentBindTo: self has_at_least_one_ref.
	^method value: self withArguments: (Array with: self)!

hasOneRef
	| method |
	method := self class externalMethodAt: #_hasOneRef_cefBaseRefCounted:
				ifAbsentBindTo: self has_one_ref.
	^method value: self withArguments: (Array with: self)!

release
	"Answer the <ExternalAddress> value of the receiver's 'release' field."

	^(bytes uintPtrAtOffset: _OffsetOf_release) asExternalAddress!

release: anExternalAddress
	"Set the receiver's 'release' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_release put: anExternalAddress! !

!CefBaseRefCounted categoriesForMethods!
_addRef_cefBaseRefCounted:!**compiled accessors**!private! !
_callRelease_cefBaseRefCounted:!**compiled accessors**!private! !
_hasAtLeastOneRef_cefBaseRefCounted:!**compiled accessors**!private! !
_hasOneRef_cefBaseRefCounted:!**compiled accessors**!private! !
add_ref!**compiled accessors**!public! !
add_ref:!**compiled accessors**!public! !
addRef!**compiled accessors**!public! !
callRelease!**compiled accessors**!public! !
cefSize!**compiled accessors**!public! !
cefSize:!**compiled accessors**!public! !
has_at_least_one_ref!**compiled accessors**!public! !
has_at_least_one_ref:!**compiled accessors**!public! !
has_one_ref!**compiled accessors**!public! !
has_one_ref:!**compiled accessors**!public! !
hasAtLeastOneRef!**compiled accessors**!public! !
hasOneRef!**compiled accessors**!public! !
release!**compiled accessors**!public! !
release:!**compiled accessors**!public! !
!

!CefBaseRefCounted class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #cefSize type: DWORDField new;
		defineField: #add_ref
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBaseRefCounted*'));
		defineField: #release
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefBaseRefCounted*')
					smalltalkName: #callRelease);
		defineField: #has_one_ref
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefBaseRefCounted*'));
		defineField: #has_at_least_one_ref
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefBaseRefCounted*'))!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref)! !

!CefBaseRefCounted class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

