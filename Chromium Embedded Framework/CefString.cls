"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefString
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_dtor _OffsetOf_length _OffsetOf_str'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefString guid: (GUID fromString: '{5f1e8988-454b-4846-8dcc-80cfb7507bbd}')!
CefString addClassConstant: '_OffsetOf_dtor' value: 16r8!
CefString addClassConstant: '_OffsetOf_length' value: 16r4!
CefString addClassConstant: '_OffsetOf_str' value: 16r0!
CefString comment: ''!
!CefString categoriesForClass!External-Data-Structured! !
!CefString methodsFor!

dtor
	"Answer the <Integer> value of the receiver's 'dtor' field."

	^bytes dwordAtOffset: _OffsetOf_dtor!

dtor: anInteger
	"Set the receiver's 'dtor' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_dtor put: anInteger!

length
	"Answer the <Integer> value of the receiver's 'length' field."

	^bytes dwordAtOffset: _OffsetOf_length!

length: anInteger
	"Set the receiver's 'length' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_length put: anInteger!

str
	"Answer the <Utf16String> value of the receiver's 'str' field."

	^Utf16String fromAddress: (bytes intPtrAtOffset: _OffsetOf_str)!

str: anUtf16String
	"Set the receiver's 'str' field to the value of the argument, anUtf16String"

	bytes uintPtrAtOffset: _OffsetOf_str put: anUtf16String yourAddress! !
!CefString categoriesForMethods!
dtor!**compiled accessors**!public! !
dtor:!**compiled accessors**!public! !
length!**compiled accessors**!public! !
length:!**compiled accessors**!public! !
str!**compiled accessors**!public! !
str:!**compiled accessors**!public! !
!

!CefString class methodsFor!

defineFields
	"CEFString  compileDefinition

	typedef struct _cef_string_utf16_t {
	  char16* str;
	  size_t length;
	  void (*dtor)(char16* str);
	} cef_string_utf16_t;"

	self
		defineField: #str type: (PointerField type: Utf16String);
		defineField: #length type: DWORDField new;
		defineField: #dtor type: DWORDField new!

getFieldNames
	^#(#str #length #dtor)! !
!CefString class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

