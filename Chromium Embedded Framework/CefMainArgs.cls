"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefMainArgs
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_instance'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefMainArgs guid: (GUID fromString: '{43e6a173-d57b-484a-b17f-7cf2fc00f37e}')!
CefMainArgs addClassConstant: '_OffsetOf_instance' value: 16r0!
CefMainArgs comment: ''!
!CefMainArgs categoriesForClass!External-Data-Structured! !
!CefMainArgs methodsFor!

instance
	"Answer the <ExternalHandle> value of the receiver's 'instance' field."

	^(bytes uintPtrAtOffset: _OffsetOf_instance) asExternalHandle!

instance: anExternalHandle
	"Set the receiver's 'instance' field to the value of the argument, anExternalHandle"

	bytes uintPtrAtOffset: _OffsetOf_instance put: anExternalHandle! !
!CefMainArgs categoriesForMethods!
instance!public! !
instance:!public! !
!

!CefMainArgs class methodsFor!

defineFields
	"CefMainArgs  compileDefinition"
	
	"///
	// Structure representing CefExecuteProcess arguments.
	///
	typedef struct _cef_main_args_t {
	  HINSTANCE instance;
	} cef_main_args_t;"

	self defineField: #instance type: HANDLEField new!

getFieldNames
	^#(#instance)! !
!CefMainArgs class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

