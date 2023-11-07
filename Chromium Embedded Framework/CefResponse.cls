"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefResponse
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_charset _OffsetOf_get_error _OffsetOf_get_header_by_name _OffsetOf_get_header_map _OffsetOf_get_mime_type _OffsetOf_get_status _OffsetOf_get_status_text _OffsetOf_get_url _OffsetOf_is_read_only _OffsetOf_set_charset _OffsetOf_set_error _OffsetOf_set_header_by_name _OffsetOf_set_header_map _OffsetOf_set_mime_type _OffsetOf_set_status _OffsetOf_set_status_text _OffsetOf_set_url'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefResponse guid: (GUID fromString: '{e42a8806-2a63-4135-8987-e2c737d15776}')!
CefResponse addClassConstant: '_OffsetOf_get_charset' value: 16r38!
CefResponse addClassConstant: '_OffsetOf_get_error' value: 16r18!
CefResponse addClassConstant: '_OffsetOf_get_header_by_name' value: 16r40!
CefResponse addClassConstant: '_OffsetOf_get_header_map' value: 16r48!
CefResponse addClassConstant: '_OffsetOf_get_mime_type' value: 16r30!
CefResponse addClassConstant: '_OffsetOf_get_status' value: 16r20!
CefResponse addClassConstant: '_OffsetOf_get_status_text' value: 16r28!
CefResponse addClassConstant: '_OffsetOf_get_url' value: 16r50!
CefResponse addClassConstant: '_OffsetOf_is_read_only' value: 16r14!
CefResponse addClassConstant: '_OffsetOf_set_charset' value: 16r3C!
CefResponse addClassConstant: '_OffsetOf_set_error' value: 16r1C!
CefResponse addClassConstant: '_OffsetOf_set_header_by_name' value: 16r44!
CefResponse addClassConstant: '_OffsetOf_set_header_map' value: 16r4C!
CefResponse addClassConstant: '_OffsetOf_set_mime_type' value: 16r34!
CefResponse addClassConstant: '_OffsetOf_set_status' value: 16r24!
CefResponse addClassConstant: '_OffsetOf_set_status_text' value: 16r2C!
CefResponse addClassConstant: '_OffsetOf_set_url' value: 16r54!
CefResponse comment: ''!
!CefResponse categoriesForClass!External-Data-Structured! !
!CefResponse methodsFor!

_getStatus_cefResponse: cefResponse
	<stdcall: sdword get_status CefResponse*>
	^self invalidCall: _failureCode!

_setMimeType_cefResponse: cefResponse mimeType: mimeType
	<stdcall: void set_mime_type CefResponse* CefString*>
	^self invalidCall: _failureCode!

_setStatus_cefResponse: cefResponse status: status
	<stdcall: void set_status CefResponse* sdword>
	^self invalidCall: _failureCode!

_setStatusText_cefResponse: cefResponse statusText: statusText
	<stdcall: void set_status_text CefResponse* CefString*>
	^self invalidCall: _failureCode!

get_charset
	"Answer the <Integer> value of the receiver's 'get_charset' field."

	^bytes dwordAtOffset: _OffsetOf_get_charset!

get_charset: anInteger
	"Set the receiver's 'get_charset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_charset put: anInteger!

get_error
	"Answer the <Integer> value of the receiver's 'get_error' field."

	^bytes dwordAtOffset: _OffsetOf_get_error!

get_error: anInteger
	"Set the receiver's 'get_error' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_error put: anInteger!

get_header_by_name
	"Answer the <Integer> value of the receiver's 'get_header_by_name' field."

	^bytes dwordAtOffset: _OffsetOf_get_header_by_name!

get_header_by_name: anInteger
	"Set the receiver's 'get_header_by_name' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_header_by_name put: anInteger!

get_header_map
	"Answer the <Integer> value of the receiver's 'get_header_map' field."

	^bytes dwordAtOffset: _OffsetOf_get_header_map!

get_header_map: anInteger
	"Set the receiver's 'get_header_map' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_header_map put: anInteger!

get_mime_type
	"Answer the <Integer> value of the receiver's 'get_mime_type' field."

	^bytes dwordAtOffset: _OffsetOf_get_mime_type!

get_mime_type: anInteger
	"Set the receiver's 'get_mime_type' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_mime_type put: anInteger!

get_status
	"Answer the <ExternalAddress> value of the receiver's 'get_status' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_status) asExternalAddress!

get_status: anExternalAddress
	"Set the receiver's 'get_status' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_status put: anExternalAddress!

get_status_text
	"Answer the <Integer> value of the receiver's 'get_status_text' field."

	^bytes dwordAtOffset: _OffsetOf_get_status_text!

get_status_text: anInteger
	"Set the receiver's 'get_status_text' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_status_text put: anInteger!

get_url
	"Answer the <Integer> value of the receiver's 'get_url' field."

	^bytes dwordAtOffset: _OffsetOf_get_url!

get_url: anInteger
	"Set the receiver's 'get_url' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_url put: anInteger!

getStatus
	| method |
	method := self class externalMethodAt: #_getStatus_cefResponse: ifAbsentBindTo: self get_status.
	^method value: self withArguments: (Array with: self)!

is_read_only
	"Answer the <Integer> value of the receiver's 'is_read_only' field."

	^bytes dwordAtOffset: _OffsetOf_is_read_only!

is_read_only: anInteger
	"Set the receiver's 'is_read_only' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_read_only put: anInteger!

set_charset
	"Answer the <Integer> value of the receiver's 'set_charset' field."

	^bytes dwordAtOffset: _OffsetOf_set_charset!

set_charset: anInteger
	"Set the receiver's 'set_charset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_charset put: anInteger!

set_error
	"Answer the <Integer> value of the receiver's 'set_error' field."

	^bytes dwordAtOffset: _OffsetOf_set_error!

set_error: anInteger
	"Set the receiver's 'set_error' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_error put: anInteger!

set_header_by_name
	"Answer the <Integer> value of the receiver's 'set_header_by_name' field."

	^bytes dwordAtOffset: _OffsetOf_set_header_by_name!

set_header_by_name: anInteger
	"Set the receiver's 'set_header_by_name' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_header_by_name put: anInteger!

set_header_map
	"Answer the <Integer> value of the receiver's 'set_header_map' field."

	^bytes dwordAtOffset: _OffsetOf_set_header_map!

set_header_map: anInteger
	"Set the receiver's 'set_header_map' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_header_map put: anInteger!

set_mime_type
	"Answer the <ExternalAddress> value of the receiver's 'set_mime_type' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_mime_type) asExternalAddress!

set_mime_type: anExternalAddress
	"Set the receiver's 'set_mime_type' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_mime_type put: anExternalAddress!

set_status
	"Answer the <ExternalAddress> value of the receiver's 'set_status' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_status) asExternalAddress!

set_status: anExternalAddress
	"Set the receiver's 'set_status' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_status put: anExternalAddress!

set_status_text
	"Answer the <ExternalAddress> value of the receiver's 'set_status_text' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_status_text) asExternalAddress!

set_status_text: anExternalAddress
	"Set the receiver's 'set_status_text' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_status_text put: anExternalAddress!

set_url
	"Answer the <Integer> value of the receiver's 'set_url' field."

	^bytes dwordAtOffset: _OffsetOf_set_url!

set_url: anInteger
	"Set the receiver's 'set_url' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_url put: anInteger!

setMimeType_mimeType: mimeType
	| method arguments |
	method := self class externalMethodAt: #_setMimeType_cefResponse:mimeType:
				ifAbsentBindTo: self set_mime_type.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: mimeType.
	^method value: self withArguments: arguments!

setStatus_status: status
	| method arguments |
	method := self class externalMethodAt: #_setStatus_cefResponse:status:
				ifAbsentBindTo: self set_status.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: status.
	^method value: self withArguments: arguments!

setStatusText_statusText: statusText
	| method arguments |
	method := self class externalMethodAt: #_setStatusText_cefResponse:statusText:
				ifAbsentBindTo: self set_status_text.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: statusText.
	^method value: self withArguments: arguments! !
!CefResponse categoriesForMethods!
_getStatus_cefResponse:!**compiled accessors**!private! !
_setMimeType_cefResponse:mimeType:!**compiled accessors**!private! !
_setStatus_cefResponse:status:!**compiled accessors**!private! !
_setStatusText_cefResponse:statusText:!**compiled accessors**!private! !
get_charset!**compiled accessors**!public! !
get_charset:!**compiled accessors**!public! !
get_error!**compiled accessors**!public! !
get_error:!**compiled accessors**!public! !
get_header_by_name!**compiled accessors**!public! !
get_header_by_name:!**compiled accessors**!public! !
get_header_map!**compiled accessors**!public! !
get_header_map:!**compiled accessors**!public! !
get_mime_type!**compiled accessors**!public! !
get_mime_type:!**compiled accessors**!public! !
get_status!**compiled accessors**!public! !
get_status:!**compiled accessors**!public! !
get_status_text!**compiled accessors**!public! !
get_status_text:!**compiled accessors**!public! !
get_url!**compiled accessors**!public! !
get_url:!**compiled accessors**!public! !
getStatus!**compiled accessors**!public! !
is_read_only!**compiled accessors**!public! !
is_read_only:!**compiled accessors**!public! !
set_charset!**compiled accessors**!public! !
set_charset:!**compiled accessors**!public! !
set_error!**compiled accessors**!public! !
set_error:!**compiled accessors**!public! !
set_header_by_name!**compiled accessors**!public! !
set_header_by_name:!**compiled accessors**!public! !
set_header_map!**compiled accessors**!public! !
set_header_map:!**compiled accessors**!public! !
set_mime_type!**compiled accessors**!public! !
set_mime_type:!**compiled accessors**!public! !
set_status!**compiled accessors**!public! !
set_status:!**compiled accessors**!public! !
set_status_text!**compiled accessors**!public! !
set_status_text:!**compiled accessors**!public! !
set_url!**compiled accessors**!public! !
set_url:!**compiled accessors**!public! !
setMimeType_mimeType:!**compiled accessors**!public! !
setStatus_status:!**compiled accessors**!public! !
setStatusText_statusText:!**compiled accessors**!public! !
!

!CefResponse class methodsFor!

defineFields
	"CefResponse compileDefinition"

	super defineFields.
	self
		defineField: #is_read_only type: DWORDField new;
		defineField: #get_error type: DWORDField new;
		defineField: #set_error type: DWORDField new;
		defineField: #get_status
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefResponse*'));
		defineField: #set_status
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefResponse* sdword')
					smalltalkName: #setStatus_status:);
		defineField: #get_status_text type: DWORDField new;
		defineField: #set_status_text
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefResponse* CefString*')
					smalltalkName: #setStatusText_statusText:);
		defineField: #get_mime_type type: DWORDField new;
		defineField: #set_mime_type
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefResponse* CefString*')
					smalltalkName: #setMimeType_mimeType:);
		defineField: #get_charset type: DWORDField new;
		defineField: #set_charset type: DWORDField new;
		defineField: #get_header_by_name type: DWORDField new;
		defineField: #set_header_by_name type: DWORDField new;
		defineField: #get_header_map type: DWORDField new;
		defineField: #set_header_map type: DWORDField new;
		defineField: #get_url type: DWORDField new;
		defineField: #set_url type: DWORDField new!

getFieldNames
	^#(#base #is_read_only #get_error #set_error #get_status #set_status #get_status_text #set_status_text #get_mime_type #set_mime_type #get_charset #set_charset #get_header_by_name #set_header_by_name #get_header_map #set_header_map #get_url #set_url)! !
!CefResponse class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

