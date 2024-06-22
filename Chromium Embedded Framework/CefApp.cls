"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefApp
	instanceVariableNames: 'browserProcessHandler resourceBundleHandler renderProcessHandler'
	classVariableNames: '_OffsetOf_get_browser_process_handler _OffsetOf_get_render_process_handler _OffsetOf_get_resource_bundle_handler _OffsetOf_on_before_command_line_processing _OffsetOf_on_register_custom_schemes'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefApp guid: (GUID fromString: '{c46f0bfa-128e-436c-9e11-fa56f2448190}')!

CefApp addClassConstant: '_OffsetOf_get_browser_process_handler' value: 16r20!
CefApp addClassConstant: '_OffsetOf_get_render_process_handler' value: 16r24!
CefApp addClassConstant: '_OffsetOf_get_resource_bundle_handler' value: 16r1C!
CefApp addClassConstant: '_OffsetOf_on_before_command_line_processing' value: 16r14!
CefApp addClassConstant: '_OffsetOf_on_register_custom_schemes' value: 16r18!

CefApp comment: ''!

!CefApp categoriesForClass!External-Data-Structured! !

!CefApp methodsFor!

enableBrowserProcessHandler
	browserProcessHandler := CefBrowserProcessHandler new.
	browserProcessHandler delegate: self!

enableBrowserProcessHandlerAndDelegateTo: anObject
	browserProcessHandler := CefBrowserProcessHandler new.
	browserProcessHandler delegate: anObject!

enableRenderProcessHandler
	renderProcessHandler := CefRenderProcessHandler new!

enableRenderProcessHandlerAndDelegateTo: anObject
	renderProcessHandler := CefRenderProcessHandler new.
	renderProcessHandler delegate: anObject!

get_browser_process_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_browser_process_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_browser_process_handler) asExternalAddress!

get_browser_process_handler: anExternalAddress
	"Set the receiver's 'get_browser_process_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_browser_process_handler put: anExternalAddress!

get_render_process_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_render_process_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_render_process_handler) asExternalAddress!

get_render_process_handler: anExternalAddress
	"Set the receiver's 'get_render_process_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_render_process_handler put: anExternalAddress!

get_resource_bundle_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_resource_bundle_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_resource_bundle_handler) asExternalAddress!

get_resource_bundle_handler: anExternalAddress
	"Set the receiver's 'get_resource_bundle_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_resource_bundle_handler put: anExternalAddress!

getBrowserProcessHandler: aCefApp
	^browserProcessHandler ifNotNil: [browserProcessHandler yourAddress] ifNil: [0]!

getRenderProcessHandler: aCefApp
	^renderProcessHandler ifNotNil: [renderProcessHandler yourAddress] ifNil: [0]!

getResourceBundleHandler: aCefApp
	^resourceBundleHandler ifNotNil: [resourceBundleHandler yourAddress] ifNil: [0]!

on_before_command_line_processing
	"Answer the <ExternalAddress> value of the receiver's 'on_before_command_line_processing' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_before_command_line_processing) asExternalAddress!

on_before_command_line_processing: anExternalAddress
	"Set the receiver's 'on_before_command_line_processing' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_before_command_line_processing put: anExternalAddress!

on_register_custom_schemes
	"Answer the <ExternalAddress> value of the receiver's 'on_register_custom_schemes' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_register_custom_schemes) asExternalAddress!

on_register_custom_schemes: anExternalAddress
	"Set the receiver's 'on_register_custom_schemes' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_register_custom_schemes put: anExternalAddress! !

!CefApp categoriesForMethods!
enableBrowserProcessHandler!public! !
enableBrowserProcessHandlerAndDelegateTo:!public! !
enableRenderProcessHandler!public! !
enableRenderProcessHandlerAndDelegateTo:!public! !
get_browser_process_handler!**compiled accessors**!public! !
get_browser_process_handler:!**compiled accessors**!public! !
get_render_process_handler!**compiled accessors**!public! !
get_render_process_handler:!**compiled accessors**!public! !
get_resource_bundle_handler!**compiled accessors**!public! !
get_resource_bundle_handler:!**compiled accessors**!public! !
getBrowserProcessHandler:!public! !
getRenderProcessHandler:!public! !
getResourceBundleHandler:!public! !
on_before_command_line_processing!**compiled accessors**!public! !
on_before_command_line_processing:!**compiled accessors**!public! !
on_register_custom_schemes!**compiled accessors**!public! !
on_register_custom_schemes:!**compiled accessors**!public! !
!

!CefApp class methodsFor!

defineFields
	"CefApp  compileDefinition"

	super defineFields.
	self
		defineField: #on_before_command_line_processing
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefApp* CefString* CefCommandLine*')
					smalltalkName: #onBeforeCommandLineProcessing:processType:commandLine:);
		defineField: #on_register_custom_schemes
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefApp* CefSchemeRegistrar*')
					smalltalkName: #onRegisterCustomSchemes:registrar:);
		defineField: #get_resource_bundle_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefResourceBundleHandler* CefApp*'));
		defineField: #get_browser_process_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefBrowserProcessHandler* CefApp*'));
		defineField: #get_render_process_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefRenderProcessHandler* CefApp*'))!

getFieldNames
	^#(#base #on_before_command_line_processing #on_register_custom_schemes #get_resource_bundle_handler #get_browser_process_handler #get_render_process_handler)! !

!CefApp class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

