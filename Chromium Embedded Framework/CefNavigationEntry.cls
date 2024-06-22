"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefNavigationEntry
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_completion_time _OffsetOf_get_display_url _OffsetOf_get_http_status_code _OffsetOf_get_original_url _OffsetOf_get_sslstatus _OffsetOf_get_title _OffsetOf_get_transition_type _OffsetOf_get_url _OffsetOf_has_post_data _OffsetOf_is_valid'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefNavigationEntry guid: (GUID fromString: '{bc4d832a-c859-46ef-86b3-7203b7652865}')!

CefNavigationEntry addClassConstant: '_OffsetOf_get_completion_time' value: 16r30!
CefNavigationEntry addClassConstant: '_OffsetOf_get_display_url' value: 16r1C!
CefNavigationEntry addClassConstant: '_OffsetOf_get_http_status_code' value: 16r34!
CefNavigationEntry addClassConstant: '_OffsetOf_get_original_url' value: 16r20!
CefNavigationEntry addClassConstant: '_OffsetOf_get_sslstatus' value: 16r38!
CefNavigationEntry addClassConstant: '_OffsetOf_get_title' value: 16r24!
CefNavigationEntry addClassConstant: '_OffsetOf_get_transition_type' value: 16r28!
CefNavigationEntry addClassConstant: '_OffsetOf_get_url' value: 16r18!
CefNavigationEntry addClassConstant: '_OffsetOf_has_post_data' value: 16r2C!
CefNavigationEntry addClassConstant: '_OffsetOf_is_valid' value: 16r14!

CefNavigationEntry comment: ''!

!CefNavigationEntry categoriesForClass!External-Data-Structured! !

!CefNavigationEntry methodsFor!

_getCompletionTime_cefNavigationEntry: cefNavigationEntry
	<stdcall: CefBasetime get_completion_time CefNavigationEntry*>
	^self invalidCall: _failureCode!

_getDisplayUrl_cefNavigationEntry: cefNavigationEntry
	<stdcall: CefStringUserfree* get_display_url CefNavigationEntry*>
	^self invalidCall: _failureCode!

_getHttpStatusCode_cefNavigationEntry: cefNavigationEntry
	<stdcall: sdword get_http_status_code CefNavigationEntry*>
	^self invalidCall: _failureCode!

_getOriginalUrl_cefNavigationEntry: cefNavigationEntry
	<stdcall: CefStringUserfree* get_original_url CefNavigationEntry*>
	^self invalidCall: _failureCode!

_getSslstatus_cefNavigationEntry: cefNavigationEntry
	<stdcall: CefSslStatus* get_sslstatus CefNavigationEntry*>
	^self invalidCall: _failureCode!

_getTitle_cefNavigationEntry: cefNavigationEntry
	<stdcall: CefStringUserfree* get_title CefNavigationEntry*>
	^self invalidCall: _failureCode!

_getTransitionType_cefNavigationEntry: cefNavigationEntry
	<stdcall: CefStringUserfree* get_transition_type CefNavigationEntry*>
	^self invalidCall: _failureCode!

_getUrl_cefNavigationEntry: cefNavigationEntry
	<stdcall: CefStringUserfree* get_url CefNavigationEntry*>
	^self invalidCall: _failureCode!

_hasPostData_cefNavigationEntry: cefNavigationEntry
	<stdcall: sdword has_post_data CefNavigationEntry*>
	^self invalidCall: _failureCode!

_isValid_cefNavigationEntry: cefNavigationEntry
	<stdcall: sdword is_valid CefNavigationEntry*>
	^self invalidCall: _failureCode!

get_completion_time
	"Answer the <ExternalAddress> value of the receiver's 'get_completion_time' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_completion_time) asExternalAddress!

get_completion_time: anExternalAddress
	"Set the receiver's 'get_completion_time' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_completion_time put: anExternalAddress!

get_display_url
	"Answer the <ExternalAddress> value of the receiver's 'get_display_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_display_url) asExternalAddress!

get_display_url: anExternalAddress
	"Set the receiver's 'get_display_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_display_url put: anExternalAddress!

get_http_status_code
	"Answer the <ExternalAddress> value of the receiver's 'get_http_status_code' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_http_status_code) asExternalAddress!

get_http_status_code: anExternalAddress
	"Set the receiver's 'get_http_status_code' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_http_status_code put: anExternalAddress!

get_original_url
	"Answer the <ExternalAddress> value of the receiver's 'get_original_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_original_url) asExternalAddress!

get_original_url: anExternalAddress
	"Set the receiver's 'get_original_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_original_url put: anExternalAddress!

get_sslstatus
	"Answer the <ExternalAddress> value of the receiver's 'get_sslstatus' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_sslstatus) asExternalAddress!

get_sslstatus: anExternalAddress
	"Set the receiver's 'get_sslstatus' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_sslstatus put: anExternalAddress!

get_title
	"Answer the <ExternalAddress> value of the receiver's 'get_title' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_title) asExternalAddress!

get_title: anExternalAddress
	"Set the receiver's 'get_title' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_title put: anExternalAddress!

get_transition_type
	"Answer the <ExternalAddress> value of the receiver's 'get_transition_type' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_transition_type) asExternalAddress!

get_transition_type: anExternalAddress
	"Set the receiver's 'get_transition_type' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_transition_type put: anExternalAddress!

get_url
	"Answer the <ExternalAddress> value of the receiver's 'get_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_url) asExternalAddress!

get_url: anExternalAddress
	"Set the receiver's 'get_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_url put: anExternalAddress!

getCompletionTime
	| method |
	method := self class externalMethodAt: #_getCompletionTime_cefNavigationEntry:
				ifAbsentBindTo: self get_completion_time.
	^method value: self withArguments: (Array with: self)!

getDisplayUrl
	| method |
	method := self class externalMethodAt: #_getDisplayUrl_cefNavigationEntry:
				ifAbsentBindTo: self get_display_url.
	^method value: self withArguments: (Array with: self)!

getHttpStatusCode
	| method |
	method := self class externalMethodAt: #_getHttpStatusCode_cefNavigationEntry:
				ifAbsentBindTo: self get_http_status_code.
	^method value: self withArguments: (Array with: self)!

getOriginalUrl
	| method |
	method := self class externalMethodAt: #_getOriginalUrl_cefNavigationEntry:
				ifAbsentBindTo: self get_original_url.
	^method value: self withArguments: (Array with: self)!

getSslstatus
	| method |
	method := self class externalMethodAt: #_getSslstatus_cefNavigationEntry:
				ifAbsentBindTo: self get_sslstatus.
	^method value: self withArguments: (Array with: self)!

getTitle
	| method |
	method := self class externalMethodAt: #_getTitle_cefNavigationEntry: ifAbsentBindTo: self get_title.
	^method value: self withArguments: (Array with: self)!

getTransitionType
	| method |
	method := self class externalMethodAt: #_getTransitionType_cefNavigationEntry:
				ifAbsentBindTo: self get_transition_type.
	^method value: self withArguments: (Array with: self)!

getUrl
	| method |
	method := self class externalMethodAt: #_getUrl_cefNavigationEntry: ifAbsentBindTo: self get_url.
	^method value: self withArguments: (Array with: self)!

has_post_data
	"Answer the <ExternalAddress> value of the receiver's 'has_post_data' field."

	^(bytes uintPtrAtOffset: _OffsetOf_has_post_data) asExternalAddress!

has_post_data: anExternalAddress
	"Set the receiver's 'has_post_data' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_has_post_data put: anExternalAddress!

hasPostData
	| method |
	method := self class externalMethodAt: #_hasPostData_cefNavigationEntry:
				ifAbsentBindTo: self has_post_data.
	^method value: self withArguments: (Array with: self)!

is_valid
	"Answer the <ExternalAddress> value of the receiver's 'is_valid' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_valid) asExternalAddress!

is_valid: anExternalAddress
	"Set the receiver's 'is_valid' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_valid put: anExternalAddress!

isValid
	| method |
	method := self class externalMethodAt: #_isValid_cefNavigationEntry: ifAbsentBindTo: self is_valid.
	^method value: self withArguments: (Array with: self)! !

!CefNavigationEntry categoriesForMethods!
_getCompletionTime_cefNavigationEntry:!**compiled accessors**!private! !
_getDisplayUrl_cefNavigationEntry:!**compiled accessors**!private! !
_getHttpStatusCode_cefNavigationEntry:!**compiled accessors**!private! !
_getOriginalUrl_cefNavigationEntry:!**compiled accessors**!private! !
_getSslstatus_cefNavigationEntry:!**compiled accessors**!private! !
_getTitle_cefNavigationEntry:!**compiled accessors**!private! !
_getTransitionType_cefNavigationEntry:!**compiled accessors**!private! !
_getUrl_cefNavigationEntry:!**compiled accessors**!private! !
_hasPostData_cefNavigationEntry:!**compiled accessors**!private! !
_isValid_cefNavigationEntry:!**compiled accessors**!private! !
get_completion_time!**compiled accessors**!public! !
get_completion_time:!**compiled accessors**!public! !
get_display_url!**compiled accessors**!public! !
get_display_url:!**compiled accessors**!public! !
get_http_status_code!**compiled accessors**!public! !
get_http_status_code:!**compiled accessors**!public! !
get_original_url!**compiled accessors**!public! !
get_original_url:!**compiled accessors**!public! !
get_sslstatus!**compiled accessors**!public! !
get_sslstatus:!**compiled accessors**!public! !
get_title!**compiled accessors**!public! !
get_title:!**compiled accessors**!public! !
get_transition_type!**compiled accessors**!public! !
get_transition_type:!**compiled accessors**!public! !
get_url!**compiled accessors**!public! !
get_url:!**compiled accessors**!public! !
getCompletionTime!**compiled accessors**!public! !
getDisplayUrl!**compiled accessors**!public! !
getHttpStatusCode!**compiled accessors**!public! !
getOriginalUrl!**compiled accessors**!public! !
getSslstatus!**compiled accessors**!public! !
getTitle!**compiled accessors**!public! !
getTransitionType!**compiled accessors**!public! !
getUrl!**compiled accessors**!public! !
has_post_data!**compiled accessors**!public! !
has_post_data:!**compiled accessors**!public! !
hasPostData!**compiled accessors**!public! !
is_valid!**compiled accessors**!public! !
is_valid:!**compiled accessors**!public! !
isValid!**compiled accessors**!public! !
!

!CefNavigationEntry class methodsFor!

defineFields
	"CefNavigationEntry compileDefinition"

	super defineFields.
	self
		defineField: #is_valid
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefNavigationEntry*'));
		defineField: #get_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefNavigationEntry*'));
		defineField: #get_display_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefNavigationEntry*'));
		defineField: #get_original_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefNavigationEntry*'));
		defineField: #get_title
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefNavigationEntry*'));
		defineField: #get_transition_type
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefNavigationEntry*'));
		defineField: #has_post_data
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefNavigationEntry*'));
		defineField: #get_completion_time
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: CefBasetime CefNavigationEntry*'));
		defineField: #get_http_status_code
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefNavigationEntry*'));
		defineField: #get_sslstatus
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: CefSslStatus* CefNavigationEntry*'))!

getFieldNames
	^#(#base #is_valid #get_url #get_display_url #get_original_url #get_title #get_transition_type #has_post_data #get_completion_time #get_http_status_code #get_sslstatus)! !

!CefNavigationEntry class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

