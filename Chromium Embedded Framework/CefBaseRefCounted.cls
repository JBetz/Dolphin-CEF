"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefBaseRefCounted
	instanceVariableNames: 'cefObject referenceCount'
	classVariableNames: '_OffsetOf_add_ref _OffsetOf_cefSize _OffsetOf_has_at_least_one_ref _OffsetOf_has_one_ref _OffsetOf_release'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefBaseRefCounted guid: (GUID fromString: '{00000000-0000-0000-0000-000000000000}')!
CefBaseRefCounted addClassConstant: '_OffsetOf_add_ref' value: 16r4!
CefBaseRefCounted addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefBaseRefCounted addClassConstant: '_OffsetOf_has_at_least_one_ref' value: 16r10!
CefBaseRefCounted addClassConstant: '_OffsetOf_has_one_ref' value: 16rC!
CefBaseRefCounted addClassConstant: '_OffsetOf_release' value: 16r8!
CefBaseRefCounted comment: ''!
!CefBaseRefCounted categoriesForClass!External-Data-Structured! !
!CefBaseRefCounted methodsFor!

addReference: aCEFBaseRefCounted
	Transcript display: #addReference -> cefObject; cr.
	referenceCount := referenceCount + 1!

hasAtLeastOneReference: aCEFBaseRefCounted
	^(referenceCount > 0) asInteger!

hasOneReference: aCEFBaseRefCounted
	^(referenceCount = 1) asInteger!

initialize
	super initialize.
	referenceCount := 1! !
!CefBaseRefCounted categoriesForMethods!
addReference:!public! !
hasAtLeastOneReference:!public! !
hasOneReference:!public! !
initialize!public! !
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

