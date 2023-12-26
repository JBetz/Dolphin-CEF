"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefResourceRequestHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_cookie_access_filter _OffsetOf_get_resource_handler _OffsetOf_get_resource_response_filter _OffsetOf_on_before_resource_load _OffsetOf_on_protocol_execution _OffsetOf_on_resource_load_complete _OffsetOf_on_resource_redirect _OffsetOf_on_resource_response'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefResourceRequestHandler guid: (GUID fromString: '{7b01d548-a9df-4d53-9d05-332ab8b06460}')!
CefResourceRequestHandler addClassConstant: '_OffsetOf_get_cookie_access_filter' value: 16r14!
CefResourceRequestHandler addClassConstant: '_OffsetOf_get_resource_handler' value: 16r1C!
CefResourceRequestHandler addClassConstant: '_OffsetOf_get_resource_response_filter' value: 16r28!
CefResourceRequestHandler addClassConstant: '_OffsetOf_on_before_resource_load' value: 16r18!
CefResourceRequestHandler addClassConstant: '_OffsetOf_on_protocol_execution' value: 16r30!
CefResourceRequestHandler addClassConstant: '_OffsetOf_on_resource_load_complete' value: 16r2C!
CefResourceRequestHandler addClassConstant: '_OffsetOf_on_resource_redirect' value: 16r20!
CefResourceRequestHandler addClassConstant: '_OffsetOf_on_resource_response' value: 16r24!
CefResourceRequestHandler comment: ''!
!CefResourceRequestHandler categoriesForClass!External-Data-Structured! !
!CefResourceRequestHandler methodsFor!

get_cookie_access_filter
	"Answer the <ExternalAddress> value of the receiver's 'get_cookie_access_filter' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_cookie_access_filter) asExternalAddress!

get_cookie_access_filter: anExternalAddress
	"Set the receiver's 'get_cookie_access_filter' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_cookie_access_filter put: anExternalAddress!

get_resource_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_resource_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_resource_handler) asExternalAddress!

get_resource_handler: anExternalAddress
	"Set the receiver's 'get_resource_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_resource_handler put: anExternalAddress!

get_resource_response_filter
	"Answer the <ExternalAddress> value of the receiver's 'get_resource_response_filter' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_resource_response_filter) asExternalAddress!

get_resource_response_filter: anExternalAddress
	"Set the receiver's 'get_resource_response_filter' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_resource_response_filter put: anExternalAddress!

on_before_resource_load
	"Answer the <ExternalAddress> value of the receiver's 'on_before_resource_load' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_before_resource_load) asExternalAddress!

on_before_resource_load: anExternalAddress
	"Set the receiver's 'on_before_resource_load' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_before_resource_load put: anExternalAddress!

on_protocol_execution
	"Answer the <ExternalAddress> value of the receiver's 'on_protocol_execution' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_protocol_execution) asExternalAddress!

on_protocol_execution: anExternalAddress
	"Set the receiver's 'on_protocol_execution' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_protocol_execution put: anExternalAddress!

on_resource_load_complete
	"Answer the <ExternalAddress> value of the receiver's 'on_resource_load_complete' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_resource_load_complete) asExternalAddress!

on_resource_load_complete: anExternalAddress
	"Set the receiver's 'on_resource_load_complete' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_resource_load_complete put: anExternalAddress!

on_resource_redirect
	"Answer the <ExternalAddress> value of the receiver's 'on_resource_redirect' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_resource_redirect) asExternalAddress!

on_resource_redirect: anExternalAddress
	"Set the receiver's 'on_resource_redirect' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_resource_redirect put: anExternalAddress!

on_resource_response
	"Answer the <ExternalAddress> value of the receiver's 'on_resource_response' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_resource_response) asExternalAddress!

on_resource_response: anExternalAddress
	"Set the receiver's 'on_resource_response' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_resource_response put: anExternalAddress! !
!CefResourceRequestHandler categoriesForMethods!
get_cookie_access_filter!**compiled accessors**!public! !
get_cookie_access_filter:!**compiled accessors**!public! !
get_resource_handler!**compiled accessors**!public! !
get_resource_handler:!**compiled accessors**!public! !
get_resource_response_filter!**compiled accessors**!public! !
get_resource_response_filter:!**compiled accessors**!public! !
on_before_resource_load!**compiled accessors**!public! !
on_before_resource_load:!**compiled accessors**!public! !
on_protocol_execution!**compiled accessors**!public! !
on_protocol_execution:!**compiled accessors**!public! !
on_resource_load_complete!**compiled accessors**!public! !
on_resource_load_complete:!**compiled accessors**!public! !
on_resource_redirect!**compiled accessors**!public! !
on_resource_redirect:!**compiled accessors**!public! !
on_resource_response!**compiled accessors**!public! !
on_resource_response:!**compiled accessors**!public! !
!

!CefResourceRequestHandler class methodsFor!

defineFields
	"CefResourceRequestHandler compileDefinition"

	super defineFields.
	self
		defineField: #get_cookie_access_filter type: LPVOIDField new;
		defineField: #on_before_resource_load
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefResourceRequestHandler* CefBrowser* CefFrame* CefRequest* CefCallback*')
					smalltalkName: #onBeforeResourceLoad:browser:frame:request:callback:);
		defineField: #get_resource_handler
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: CefResourceHandler* CefResourceRequestHandler* CefBrowser* CefFrame* CefRequest*')
					smalltalkName: #getResourceHandler:browser:frame:request:);
		defineField: #on_resource_redirect type: LPVOIDField new;
		defineField: #on_resource_response type: LPVOIDField new;
		defineField: #get_resource_response_filter type: LPVOIDField new;
		defineField: #on_resource_load_complete
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefResourceRequestHandler* CefBrowser* CefFrame* CefRequest* CefResponse* sdword sqword')
					smalltalkName: #onResourceLoadComplete:browser:frame:request:response:status:receivedContentLength:);
		defineField: #on_protocol_execution type: LPVOIDField new!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref #get_cookie_access_filter #on_before_resource_load #get_resource_handler #on_resource_redirect #on_resource_response #get_resource_response_filter #on_resource_load_complete #on_protocol_execution)! !
!CefResourceRequestHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

