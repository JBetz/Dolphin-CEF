"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefRequestHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_auth_credentials _OffsetOf_get_resource_request_handler _OffsetOf_on_before_browse _OffsetOf_on_certificate_error _OffsetOf_on_document_available_in_main_frame _OffsetOf_on_open_urlfrom_tab _OffsetOf_on_render_process_terminated _OffsetOf_on_render_view_ready _OffsetOf_on_select_client_certificate'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefRequestHandler guid: (GUID fromString: '{cc61b184-defe-45ef-9e7c-17aa5f9fb29c}')!
CefRequestHandler addClassConstant: '_OffsetOf_get_auth_credentials' value: 16r20!
CefRequestHandler addClassConstant: '_OffsetOf_get_resource_request_handler' value: 16r1C!
CefRequestHandler addClassConstant: '_OffsetOf_on_before_browse' value: 16r14!
CefRequestHandler addClassConstant: '_OffsetOf_on_certificate_error' value: 16r24!
CefRequestHandler addClassConstant: '_OffsetOf_on_document_available_in_main_frame' value: 16r34!
CefRequestHandler addClassConstant: '_OffsetOf_on_open_urlfrom_tab' value: 16r18!
CefRequestHandler addClassConstant: '_OffsetOf_on_render_process_terminated' value: 16r30!
CefRequestHandler addClassConstant: '_OffsetOf_on_render_view_ready' value: 16r2C!
CefRequestHandler addClassConstant: '_OffsetOf_on_select_client_certificate' value: 16r28!
CefRequestHandler comment: ''!
!CefRequestHandler categoriesForClass!External-Data-Structured! !
!CefRequestHandler methodsFor!

get_auth_credentials
	"Answer the <ExternalAddress> value of the receiver's 'get_auth_credentials' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_auth_credentials) asExternalAddress!

get_auth_credentials: anExternalAddress
	"Set the receiver's 'get_auth_credentials' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_auth_credentials put: anExternalAddress!

get_resource_request_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_resource_request_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_resource_request_handler) asExternalAddress!

get_resource_request_handler: anExternalAddress
	"Set the receiver's 'get_resource_request_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_resource_request_handler put: anExternalAddress!

on_before_browse
	"Answer the <ExternalAddress> value of the receiver's 'on_before_browse' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_before_browse) asExternalAddress!

on_before_browse: anExternalAddress
	"Set the receiver's 'on_before_browse' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_before_browse put: anExternalAddress!

on_certificate_error
	"Answer the <ExternalAddress> value of the receiver's 'on_certificate_error' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_certificate_error) asExternalAddress!

on_certificate_error: anExternalAddress
	"Set the receiver's 'on_certificate_error' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_certificate_error put: anExternalAddress!

on_document_available_in_main_frame
	"Answer the <ExternalAddress> value of the receiver's 'on_document_available_in_main_frame' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_document_available_in_main_frame) asExternalAddress!

on_document_available_in_main_frame: anExternalAddress
	"Set the receiver's 'on_document_available_in_main_frame' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_document_available_in_main_frame put: anExternalAddress!

on_open_urlfrom_tab
	"Answer the <ExternalAddress> value of the receiver's 'on_open_urlfrom_tab' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_open_urlfrom_tab) asExternalAddress!

on_open_urlfrom_tab: anExternalAddress
	"Set the receiver's 'on_open_urlfrom_tab' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_open_urlfrom_tab put: anExternalAddress!

on_render_process_terminated
	"Answer the <ExternalAddress> value of the receiver's 'on_render_process_terminated' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_render_process_terminated) asExternalAddress!

on_render_process_terminated: anExternalAddress
	"Set the receiver's 'on_render_process_terminated' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_render_process_terminated put: anExternalAddress!

on_render_view_ready
	"Answer the <ExternalAddress> value of the receiver's 'on_render_view_ready' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_render_view_ready) asExternalAddress!

on_render_view_ready: anExternalAddress
	"Set the receiver's 'on_render_view_ready' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_render_view_ready put: anExternalAddress!

on_select_client_certificate
	"Answer the <ExternalAddress> value of the receiver's 'on_select_client_certificate' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_select_client_certificate) asExternalAddress!

on_select_client_certificate: anExternalAddress
	"Set the receiver's 'on_select_client_certificate' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_select_client_certificate put: anExternalAddress! !
!CefRequestHandler categoriesForMethods!
get_auth_credentials!public! !
get_auth_credentials:!public! !
get_resource_request_handler!public! !
get_resource_request_handler:!public! !
on_before_browse!public! !
on_before_browse:!public! !
on_certificate_error!public! !
on_certificate_error:!public! !
on_document_available_in_main_frame!public! !
on_document_available_in_main_frame:!public! !
on_open_urlfrom_tab!public! !
on_open_urlfrom_tab:!public! !
on_render_process_terminated!public! !
on_render_process_terminated:!public! !
on_render_view_ready!public! !
on_render_view_ready:!public! !
on_select_client_certificate!public! !
on_select_client_certificate:!public! !
!

!CefRequestHandler class methodsFor!

defineFields
	"CefRequestHandler compileDefinition"

	super defineFields.
	self
		defineField: #on_before_browse type: LPVOIDField new;
		defineField: #on_open_urlfrom_tab type: LPVOIDField new;
		defineField: #get_resource_request_handler
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: CefResourceRequestHandler* CefRequestHandler* CefBrowser* CefFrame* CefRequest* sdword sdword CefString* sdword*')
					smalltalkName: #getResourceRequestHandler:browser:frame:request:isNavigation:isDownload:requestInitiator:disableDefaultHandling:);
		defineField: #get_auth_credentials type: LPVOIDField new;
		defineField: #on_certificate_error type: LPVOIDField new;
		defineField: #on_select_client_certificate type: LPVOIDField new;
		defineField: #on_render_view_ready type: LPVOIDField new;
		defineField: #on_render_process_terminated type: LPVOIDField new;
		defineField: #on_document_available_in_main_frame type: LPVOIDField new!

getFieldNames
	^#(#base #on_before_browse #on_open_urlfrom_tab #get_resource_request_handler #get_auth_credentials #on_certificate_error #on_select_client_certificate #on_render_view_ready #on_render_process_terminated #on_document_available_in_main_frame)! !
!CefRequestHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

