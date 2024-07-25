"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefProcessMessage
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_copy _OffsetOf_get_argument_list _OffsetOf_get_name _OffsetOf_get_shared_memory_region _OffsetOf_is_read_only _OffsetOf_is_valid'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefProcessMessage guid: (GUID fromString: '{cfe04cb9-de18-4201-a0af-f102739f3dd9}')!

CefProcessMessage addClassConstant: '_OffsetOf_copy' value: 16r1C!
CefProcessMessage addClassConstant: '_OffsetOf_get_argument_list' value: 16r24!
CefProcessMessage addClassConstant: '_OffsetOf_get_name' value: 16r20!
CefProcessMessage addClassConstant: '_OffsetOf_get_shared_memory_region' value: 16r28!
CefProcessMessage addClassConstant: '_OffsetOf_is_read_only' value: 16r18!
CefProcessMessage addClassConstant: '_OffsetOf_is_valid' value: 16r14!

CefProcessMessage comment: ''!

!CefProcessMessage categoriesForClass!External-Data-Structured! !

!CefProcessMessage methodsFor!

_callCopy_cefProcessMessage: cefProcessMessage
	<stdcall: CefProcessMessage* copy CefProcessMessage*>
	^self invalidCall: _failureCode!

_getArgumentList_cefProcessMessage: cefProcessMessage
	<stdcall: CefListValue* get_argument_list CefProcessMessage*>
	^self invalidCall: _failureCode!

_getName_cefProcessMessage: cefProcessMessage
	<stdcall: CefStringUserfree* get_name CefProcessMessage*>
	^self invalidCall: _failureCode!

_isReadOnly_cefProcessMessage: cefProcessMessage
	<stdcall: bool is_read_only CefProcessMessage*>
	^self invalidCall: _failureCode!

_isValid_cefProcessMessage: cefProcessMessage
	<stdcall: bool is_valid CefProcessMessage*>
	^self invalidCall: _failureCode!

callCopy
	| method |
	method := self class externalMethodAt: #_callCopy_cefProcessMessage: ifAbsentBindTo: self copy.
	^method value: self withArguments: (Array with: self)!

copy
	"Answer the <ExternalAddress> value of the receiver's 'copy' field."

	^(bytes uintPtrAtOffset: _OffsetOf_copy) asExternalAddress!

copy: anExternalAddress
	"Set the receiver's 'copy' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_copy put: anExternalAddress!

get_argument_list
	"Answer the <ExternalAddress> value of the receiver's 'get_argument_list' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_argument_list) asExternalAddress!

get_argument_list: anExternalAddress
	"Set the receiver's 'get_argument_list' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_argument_list put: anExternalAddress!

get_name
	"Answer the <ExternalAddress> value of the receiver's 'get_name' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_name) asExternalAddress!

get_name: anExternalAddress
	"Set the receiver's 'get_name' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_name put: anExternalAddress!

get_shared_memory_region
	"Answer the <Integer> value of the receiver's 'get_shared_memory_region' field."

	^bytes dwordAtOffset: _OffsetOf_get_shared_memory_region!

get_shared_memory_region: anInteger
	"Set the receiver's 'get_shared_memory_region' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_shared_memory_region put: anInteger!

getArgumentList
	| method |
	method := self class externalMethodAt: #_getArgumentList_cefProcessMessage:
				ifAbsentBindTo: self get_argument_list.
	^method value: self withArguments: (Array with: self)!

getName
	| method |
	method := self class externalMethodAt: #_getName_cefProcessMessage: ifAbsentBindTo: self get_name.
	^method value: self withArguments: (Array with: self)!

is_read_only
	"Answer the <ExternalAddress> value of the receiver's 'is_read_only' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_read_only) asExternalAddress!

is_read_only: anExternalAddress
	"Set the receiver's 'is_read_only' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_read_only put: anExternalAddress!

is_valid
	"Answer the <ExternalAddress> value of the receiver's 'is_valid' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_valid) asExternalAddress!

is_valid: anExternalAddress
	"Set the receiver's 'is_valid' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_valid put: anExternalAddress!

isReadOnly
	| method |
	method := self class externalMethodAt: #_isReadOnly_cefProcessMessage:
				ifAbsentBindTo: self is_read_only.
	^method value: self withArguments: (Array with: self)!

isValid
	| method |
	method := self class externalMethodAt: #_isValid_cefProcessMessage: ifAbsentBindTo: self is_valid.
	^method value: self withArguments: (Array with: self)! !

!CefProcessMessage categoriesForMethods!
_callCopy_cefProcessMessage:!**compiled accessors**!private! !
_getArgumentList_cefProcessMessage:!**compiled accessors**!private! !
_getName_cefProcessMessage:!**compiled accessors**!private! !
_isReadOnly_cefProcessMessage:!**compiled accessors**!private! !
_isValid_cefProcessMessage:!**compiled accessors**!private! !
callCopy!**compiled accessors**!public! !
copy!**compiled accessors**!public! !
copy:!**compiled accessors**!public! !
get_argument_list!**compiled accessors**!public! !
get_argument_list:!**compiled accessors**!public! !
get_name!**compiled accessors**!public! !
get_name:!**compiled accessors**!public! !
get_shared_memory_region!**compiled accessors**!public! !
get_shared_memory_region:!**compiled accessors**!public! !
getArgumentList!**compiled accessors**!public! !
getName!**compiled accessors**!public! !
is_read_only!**compiled accessors**!public! !
is_read_only:!**compiled accessors**!public! !
is_valid!**compiled accessors**!public! !
is_valid:!**compiled accessors**!public! !
isReadOnly!**compiled accessors**!public! !
isValid!**compiled accessors**!public! !
!

!CefProcessMessage class methodsFor!

defineFields
	"CefProcessMessage compileDefinition"

	super defineFields.
	self
		defineField: #is_valid
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefProcessMessage*'));
		defineField: #is_read_only
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefProcessMessage*'));
		defineField: #copy
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefProcessMessage* CefProcessMessage*')
					smalltalkName: #callCopy);
		defineField: #get_name
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefProcessMessage*'));
		defineField: #get_argument_list
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefListValue* CefProcessMessage*'));
		defineField: #get_shared_memory_region type: DWORDField new!

getFieldNames
	^#(#base #is_valid #is_read_only #copy #get_name #get_argument_list #get_shared_memory_region)!

new: aString
	^CefLibrary default processMessageCreate_name: aString asCefString! !

!CefProcessMessage class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
new:!public! !
!

