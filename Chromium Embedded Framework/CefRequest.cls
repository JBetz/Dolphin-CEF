"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefRequest
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_first_party_for_cookies _OffsetOf_get_flags _OffsetOf_get_header_by_name _OffsetOf_get_header_map _OffsetOf_get_identifier _OffsetOf_get_method _OffsetOf_get_post_data _OffsetOf_get_referrer_policy _OffsetOf_get_referrer_url _OffsetOf_get_resource_type _OffsetOf_get_transition_type _OffsetOf_get_url _OffsetOf_is_read_only _OffsetOf_set _OffsetOf_set_first_party_for_cookies _OffsetOf_set_flags _OffsetOf_set_header_by_name _OffsetOf_set_header_map _OffsetOf_set_method _OffsetOf_set_post_data _OffsetOf_set_referrer _OffsetOf_set_url'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefRequest guid: (GUID fromString: '{7fd17138-7b13-47ba-8be9-d51b800c562b}')!

CefRequest addClassConstant: '_OffsetOf_get_first_party_for_cookies' value: 16r44!
CefRequest addClassConstant: '_OffsetOf_get_flags' value: 16r3C!
CefRequest addClassConstant: '_OffsetOf_get_header_by_name' value: 16r30!
CefRequest addClassConstant: '_OffsetOf_get_header_map' value: 16r28!
CefRequest addClassConstant: '_OffsetOf_get_identifier' value: 16r54!
CefRequest addClassConstant: '_OffsetOf_get_method' value: 16rC!
CefRequest addClassConstant: '_OffsetOf_get_post_data' value: 16r20!
CefRequest addClassConstant: '_OffsetOf_get_referrer_policy' value: 16r1C!
CefRequest addClassConstant: '_OffsetOf_get_referrer_url' value: 16r18!
CefRequest addClassConstant: '_OffsetOf_get_resource_type' value: 16r4C!
CefRequest addClassConstant: '_OffsetOf_get_transition_type' value: 16r50!
CefRequest addClassConstant: '_OffsetOf_get_url' value: 16r4!
CefRequest addClassConstant: '_OffsetOf_is_read_only' value: 16r0!
CefRequest addClassConstant: '_OffsetOf_set' value: 16r38!
CefRequest addClassConstant: '_OffsetOf_set_first_party_for_cookies' value: 16r48!
CefRequest addClassConstant: '_OffsetOf_set_flags' value: 16r40!
CefRequest addClassConstant: '_OffsetOf_set_header_by_name' value: 16r34!
CefRequest addClassConstant: '_OffsetOf_set_header_map' value: 16r2C!
CefRequest addClassConstant: '_OffsetOf_set_method' value: 16r10!
CefRequest addClassConstant: '_OffsetOf_set_post_data' value: 16r24!
CefRequest addClassConstant: '_OffsetOf_set_referrer' value: 16r14!
CefRequest addClassConstant: '_OffsetOf_set_url' value: 16r8!

CefRequest comment: ''!

!CefRequest categoriesForClass!External-Data-Structured! !

!CefRequest methodsFor!

_getReferrerUrl_cefRequest: cefRequest
	<stdcall: CefStringUserfree* get_referrer_url CefRequest*>
	^self invalidCall: _failureCode!

_getTransitionType_cefRequest: cefRequest
	<stdcall: sdword get_transition_type CefRequest*>
	^self invalidCall: _failureCode!

_getUrl_cefRequest: cefRequest
	<stdcall: CefStringUserfree* get_url CefRequest*>
	^self invalidCall: _failureCode!

get_first_party_for_cookies
	"Answer the <Integer> value of the receiver's 'get_first_party_for_cookies' field."

	^bytes dwordAtOffset: _OffsetOf_get_first_party_for_cookies!

get_first_party_for_cookies: anInteger
	"Set the receiver's 'get_first_party_for_cookies' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_first_party_for_cookies put: anInteger!

get_flags
	"Answer the <Integer> value of the receiver's 'get_flags' field."

	^bytes dwordAtOffset: _OffsetOf_get_flags!

get_flags: anInteger
	"Set the receiver's 'get_flags' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_flags put: anInteger!

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

get_identifier
	"Answer the <Integer> value of the receiver's 'get_identifier' field."

	^bytes dwordAtOffset: _OffsetOf_get_identifier!

get_identifier: anInteger
	"Set the receiver's 'get_identifier' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_identifier put: anInteger!

get_method
	"Answer the <Integer> value of the receiver's 'get_method' field."

	^bytes dwordAtOffset: _OffsetOf_get_method!

get_method: anInteger
	"Set the receiver's 'get_method' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_method put: anInteger!

get_post_data
	"Answer the <Integer> value of the receiver's 'get_post_data' field."

	^bytes dwordAtOffset: _OffsetOf_get_post_data!

get_post_data: anInteger
	"Set the receiver's 'get_post_data' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_post_data put: anInteger!

get_referrer_policy
	"Answer the <Integer> value of the receiver's 'get_referrer_policy' field."

	^bytes dwordAtOffset: _OffsetOf_get_referrer_policy!

get_referrer_policy: anInteger
	"Set the receiver's 'get_referrer_policy' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_referrer_policy put: anInteger!

get_referrer_url
	"Answer the <ExternalAddress> value of the receiver's 'get_referrer_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_referrer_url) asExternalAddress!

get_referrer_url: anExternalAddress
	"Set the receiver's 'get_referrer_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_referrer_url put: anExternalAddress!

get_resource_type
	"Answer the <Integer> value of the receiver's 'get_resource_type' field."

	^bytes dwordAtOffset: _OffsetOf_get_resource_type!

get_resource_type: anInteger
	"Set the receiver's 'get_resource_type' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_resource_type put: anInteger!

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

getReferrerUrl
	| method |
	method := self class externalMethodAt: #_getReferrerUrl_cefRequest:
				ifAbsentBindTo: self get_referrer_url.
	^method value: self withArguments: (Array with: self)!

getTransitionType
	| method |
	method := self class externalMethodAt: #_getTransitionType_cefRequest:
				ifAbsentBindTo: self get_transition_type.
	^method value: self withArguments: (Array with: self)!

getUrl
	| method |
	method := self class externalMethodAt: #_getUrl_cefRequest: ifAbsentBindTo: self get_url.
	^method value: self withArguments: (Array with: self)!

is_read_only
	"Answer the <Integer> value of the receiver's 'is_read_only' field."

	^bytes dwordAtOffset: _OffsetOf_is_read_only!

is_read_only: anInteger
	"Set the receiver's 'is_read_only' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_read_only put: anInteger!

set
	"Answer the <Integer> value of the receiver's 'set' field."

	^bytes dwordAtOffset: _OffsetOf_set!

set: anInteger
	"Set the receiver's 'set' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set put: anInteger!

set_first_party_for_cookies
	"Answer the <Integer> value of the receiver's 'set_first_party_for_cookies' field."

	^bytes dwordAtOffset: _OffsetOf_set_first_party_for_cookies!

set_first_party_for_cookies: anInteger
	"Set the receiver's 'set_first_party_for_cookies' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_first_party_for_cookies put: anInteger!

set_flags
	"Answer the <Integer> value of the receiver's 'set_flags' field."

	^bytes dwordAtOffset: _OffsetOf_set_flags!

set_flags: anInteger
	"Set the receiver's 'set_flags' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_flags put: anInteger!

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

set_method
	"Answer the <Integer> value of the receiver's 'set_method' field."

	^bytes dwordAtOffset: _OffsetOf_set_method!

set_method: anInteger
	"Set the receiver's 'set_method' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_method put: anInteger!

set_post_data
	"Answer the <Integer> value of the receiver's 'set_post_data' field."

	^bytes dwordAtOffset: _OffsetOf_set_post_data!

set_post_data: anInteger
	"Set the receiver's 'set_post_data' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_post_data put: anInteger!

set_referrer
	"Answer the <Integer> value of the receiver's 'set_referrer' field."

	^bytes dwordAtOffset: _OffsetOf_set_referrer!

set_referrer: anInteger
	"Set the receiver's 'set_referrer' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_referrer put: anInteger!

set_url
	"Answer the <Integer> value of the receiver's 'set_url' field."

	^bytes dwordAtOffset: _OffsetOf_set_url!

set_url: anInteger
	"Set the receiver's 'set_url' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_url put: anInteger! !

!CefRequest categoriesForMethods!
_getReferrerUrl_cefRequest:!**compiled accessors**!private! !
_getTransitionType_cefRequest:!**compiled accessors**!private! !
_getUrl_cefRequest:!**compiled accessors**!private! !
get_first_party_for_cookies!**compiled accessors**!public! !
get_first_party_for_cookies:!**compiled accessors**!public! !
get_flags!**compiled accessors**!public! !
get_flags:!**compiled accessors**!public! !
get_header_by_name!**compiled accessors**!public! !
get_header_by_name:!**compiled accessors**!public! !
get_header_map!**compiled accessors**!public! !
get_header_map:!**compiled accessors**!public! !
get_identifier!**compiled accessors**!public! !
get_identifier:!**compiled accessors**!public! !
get_method!**compiled accessors**!public! !
get_method:!**compiled accessors**!public! !
get_post_data!**compiled accessors**!public! !
get_post_data:!**compiled accessors**!public! !
get_referrer_policy!**compiled accessors**!public! !
get_referrer_policy:!**compiled accessors**!public! !
get_referrer_url!**compiled accessors**!public! !
get_referrer_url:!**compiled accessors**!public! !
get_resource_type!**compiled accessors**!public! !
get_resource_type:!**compiled accessors**!public! !
get_transition_type!**compiled accessors**!public! !
get_transition_type:!**compiled accessors**!public! !
get_url!**compiled accessors**!public! !
get_url:!**compiled accessors**!public! !
getReferrerUrl!**compiled accessors**!public! !
getTransitionType!**compiled accessors**!public! !
getUrl!**compiled accessors**!public! !
is_read_only!**compiled accessors**!public! !
is_read_only:!**compiled accessors**!public! !
set!**compiled accessors**!public! !
set:!**compiled accessors**!public! !
set_first_party_for_cookies!**compiled accessors**!public! !
set_first_party_for_cookies:!**compiled accessors**!public! !
set_flags!**compiled accessors**!public! !
set_flags:!**compiled accessors**!public! !
set_header_by_name!**compiled accessors**!public! !
set_header_by_name:!**compiled accessors**!public! !
set_header_map!**compiled accessors**!public! !
set_header_map:!**compiled accessors**!public! !
set_method!**compiled accessors**!public! !
set_method:!**compiled accessors**!public! !
set_post_data!**compiled accessors**!public! !
set_post_data:!**compiled accessors**!public! !
set_referrer!**compiled accessors**!public! !
set_referrer:!**compiled accessors**!public! !
set_url!**compiled accessors**!public! !
set_url:!**compiled accessors**!public! !
!

!CefRequest class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #is_read_only type: DWORDField new;
		defineField: #get_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefRequest*'));
		defineField: #set_url type: DWORDField new;
		defineField: #get_method type: DWORDField new;
		defineField: #set_method type: DWORDField new;
		defineField: #set_referrer type: DWORDField new;
		defineField: #get_referrer_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefRequest*'));
		defineField: #get_referrer_policy type: DWORDField new;
		defineField: #get_post_data type: DWORDField new;
		defineField: #set_post_data type: DWORDField new;
		defineField: #get_header_map type: DWORDField new;
		defineField: #set_header_map type: DWORDField new;
		defineField: #get_header_by_name type: DWORDField new;
		defineField: #set_header_by_name type: DWORDField new;
		defineField: #set type: DWORDField new;
		defineField: #get_flags type: DWORDField new;
		defineField: #set_flags type: DWORDField new;
		defineField: #get_first_party_for_cookies type: DWORDField new;
		defineField: #set_first_party_for_cookies type: DWORDField new;
		defineField: #get_resource_type type: DWORDField new;
		defineField: #get_transition_type
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefRequest*'));
		defineField: #get_identifier type: DWORDField new!

getFieldNames
	^#(#is_read_only #get_url #set_url #get_method #set_method #set_referrer #get_referrer_url #get_referrer_policy #get_post_data #set_post_data #get_header_map #set_header_map #get_header_by_name #set_header_by_name #set #get_flags #set_flags #get_first_party_for_cookies #set_first_party_for_cookies #get_resource_type #get_transition_type #get_identifier)! !

!CefRequest class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

