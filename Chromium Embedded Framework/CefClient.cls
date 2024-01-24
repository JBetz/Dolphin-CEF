"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefClient
	instanceVariableNames: 'lifeSpanHandler renderHandler displayHandler findHandler focusHandler frameHandler requestHandler loadHandler keyboardHandler contextMenuHandler processMessageDelegate'
	classVariableNames: '_OffsetOf_get_audio_handler _OffsetOf_get_command_handler _OffsetOf_get_context_menu_handler _OffsetOf_get_dialog_handler _OffsetOf_get_display_handler _OffsetOf_get_download_handler _OffsetOf_get_drag_handler _OffsetOf_get_find_handler _OffsetOf_get_focus_handler _OffsetOf_get_frame_handler _OffsetOf_get_jsdialog_handler _OffsetOf_get_keyboard_handler _OffsetOf_get_life_span_handler _OffsetOf_get_load_handler _OffsetOf_get_permission_handler _OffsetOf_get_print_handler _OffsetOf_get_render_handler _OffsetOf_get_request_handler _OffsetOf_on_process_message_received'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefClient guid: (GUID fromString: '{905d94ab-e229-4a3d-9ebf-d8df04b0856a}')!
CefClient addClassConstant: '_OffsetOf_get_audio_handler' value: 16r14!
CefClient addClassConstant: '_OffsetOf_get_command_handler' value: 16r18!
CefClient addClassConstant: '_OffsetOf_get_context_menu_handler' value: 16r1C!
CefClient addClassConstant: '_OffsetOf_get_dialog_handler' value: 16r20!
CefClient addClassConstant: '_OffsetOf_get_display_handler' value: 16r24!
CefClient addClassConstant: '_OffsetOf_get_download_handler' value: 16r28!
CefClient addClassConstant: '_OffsetOf_get_drag_handler' value: 16r2C!
CefClient addClassConstant: '_OffsetOf_get_find_handler' value: 16r30!
CefClient addClassConstant: '_OffsetOf_get_focus_handler' value: 16r34!
CefClient addClassConstant: '_OffsetOf_get_frame_handler' value: 16r38!
CefClient addClassConstant: '_OffsetOf_get_jsdialog_handler' value: 16r40!
CefClient addClassConstant: '_OffsetOf_get_keyboard_handler' value: 16r44!
CefClient addClassConstant: '_OffsetOf_get_life_span_handler' value: 16r48!
CefClient addClassConstant: '_OffsetOf_get_load_handler' value: 16r4C!
CefClient addClassConstant: '_OffsetOf_get_permission_handler' value: 16r3C!
CefClient addClassConstant: '_OffsetOf_get_print_handler' value: 16r50!
CefClient addClassConstant: '_OffsetOf_get_render_handler' value: 16r54!
CefClient addClassConstant: '_OffsetOf_get_request_handler' value: 16r58!
CefClient addClassConstant: '_OffsetOf_on_process_message_received' value: 16r5C!
CefClient comment: ''!
!CefClient categoriesForClass!External-Data-Structured! !
!CefClient methodsFor!

enableContextMenuHandler
	contextMenuHandler := CefContextMenuHandler new.
	contextMenuHandler delegate: self!

enableContextMenuHandlerAndDelegateTo: anObject
	contextMenuHandler := CefContextMenuHandler new.
	contextMenuHandler delegate: anObject!

enableDisplayHandler
	displayHandler := CefDisplayHandler new.
	displayHandler delegate: self!

enableDisplayHandlerAndDelegateTo: anObject
	displayHandler := CefDisplayHandler new.
	displayHandler delegate: anObject!

enableFindHandler
	findHandler := CefFindHandler new!

enableFindHandlerAndDelegateTo: anObject
	findHandler := CefFindHandler new.
	findHandler delegate: anObject!

enableFocusHandler
	focusHandler := CefFocusHandler new!

enableFocusHandlerAndDelegateTo: anObject
	focusHandler := CefFocusHandler new.
	focusHandler delegate: anObject!

enableFrameHandler
	frameHandler := CefFrameHandler new!

enableFrameHandlerAndDelegateTo: anObject
	frameHandler := CefFrameHandler new.
	frameHandler delegate: anObject!

enableKeyboardHandler
	keyboardHandler := CefKeyboardHandler new!

enableKeyboardHandlerAndDelegateTo: anObject
	keyboardHandler := CefKeyboardHandler new.
	keyboardHandler delegate: anObject!

enableLifeSpanHandler
	lifeSpanHandler := CefLifeSpanHandler new.
	lifeSpanHandler delegate: self!

enableLifeSpanHandlerAndDelegateTo: anObject
	lifeSpanHandler := CefLifeSpanHandler new.
	lifeSpanHandler delegate: anObject!

enableLoadHandler
	loadHandler := CefLoadHandler new.
	loadHandler delegate: self!

enableLoadHandlerAndDelegateTo: anObject
	loadHandler := CefLoadHandler new.
	loadHandler delegate: anObject!

enableRenderHandler
	renderHandler := CefRenderHandler new.
	renderHandler delegate: self!

enableRenderHandlerAndDelegateTo: anObject
	renderHandler := CefRenderHandler new.
	renderHandler delegate: anObject!

enableRequestHandlerAndDelegateTo: anObject
	requestHandler := CefRequestHandler new.
	requestHandler delegate: anObject!

get_audio_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_audio_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_audio_handler) asExternalAddress!

get_audio_handler: anExternalAddress
	"Set the receiver's 'get_audio_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_audio_handler put: anExternalAddress!

get_command_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_command_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_command_handler) asExternalAddress!

get_command_handler: anExternalAddress
	"Set the receiver's 'get_command_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_command_handler put: anExternalAddress!

get_context_menu_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_context_menu_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_context_menu_handler) asExternalAddress!

get_context_menu_handler: anExternalAddress
	"Set the receiver's 'get_context_menu_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_context_menu_handler put: anExternalAddress!

get_dialog_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_dialog_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_dialog_handler) asExternalAddress!

get_dialog_handler: anExternalAddress
	"Set the receiver's 'get_dialog_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_dialog_handler put: anExternalAddress!

get_display_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_display_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_display_handler) asExternalAddress!

get_display_handler: anExternalAddress
	"Set the receiver's 'get_display_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_display_handler put: anExternalAddress!

get_download_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_download_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_download_handler) asExternalAddress!

get_download_handler: anExternalAddress
	"Set the receiver's 'get_download_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_download_handler put: anExternalAddress!

get_drag_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_drag_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_drag_handler) asExternalAddress!

get_drag_handler: anExternalAddress
	"Set the receiver's 'get_drag_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_drag_handler put: anExternalAddress!

get_find_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_find_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_find_handler) asExternalAddress!

get_find_handler: anExternalAddress
	"Set the receiver's 'get_find_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_find_handler put: anExternalAddress!

get_focus_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_focus_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_focus_handler) asExternalAddress!

get_focus_handler: anExternalAddress
	"Set the receiver's 'get_focus_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_focus_handler put: anExternalAddress!

get_frame_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_frame_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_frame_handler) asExternalAddress!

get_frame_handler: anExternalAddress
	"Set the receiver's 'get_frame_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_frame_handler put: anExternalAddress!

get_jsdialog_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_jsdialog_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_jsdialog_handler) asExternalAddress!

get_jsdialog_handler: anExternalAddress
	"Set the receiver's 'get_jsdialog_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_jsdialog_handler put: anExternalAddress!

get_keyboard_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_keyboard_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_keyboard_handler) asExternalAddress!

get_keyboard_handler: anExternalAddress
	"Set the receiver's 'get_keyboard_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_keyboard_handler put: anExternalAddress!

get_life_span_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_life_span_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_life_span_handler) asExternalAddress!

get_life_span_handler: anExternalAddress
	"Set the receiver's 'get_life_span_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_life_span_handler put: anExternalAddress!

get_load_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_load_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_load_handler) asExternalAddress!

get_load_handler: anExternalAddress
	"Set the receiver's 'get_load_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_load_handler put: anExternalAddress!

get_permission_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_permission_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_permission_handler) asExternalAddress!

get_permission_handler: anExternalAddress
	"Set the receiver's 'get_permission_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_permission_handler put: anExternalAddress!

get_print_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_print_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_print_handler) asExternalAddress!

get_print_handler: anExternalAddress
	"Set the receiver's 'get_print_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_print_handler put: anExternalAddress!

get_render_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_render_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_render_handler) asExternalAddress!

get_render_handler: anExternalAddress
	"Set the receiver's 'get_render_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_render_handler put: anExternalAddress!

get_request_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_request_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_request_handler) asExternalAddress!

get_request_handler: anExternalAddress
	"Set the receiver's 'get_request_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_request_handler put: anExternalAddress!

getContextMenuHandler: aCefClient
	^contextMenuHandler ifNotNil: [contextMenuHandler yourAddress]!

getDisplayHandler: aCefClient
	^displayHandler ifNotNil: [displayHandler yourAddress]!

getFindHandler: aCefClient
	^findHandler ifNotNil: [findHandler yourAddress]!

getFocusHandler: aCefClient
	^focusHandler ifNotNil: [focusHandler yourAddress]!

getFrameHandler: aCefClient
	^frameHandler ifNotNil: [frameHandler yourAddress]!

getKeyboardHandler: aCefClient
	^keyboardHandler ifNotNil: [keyboardHandler yourAddress]!

getLifeSpanHandler: aCefClient
	^lifeSpanHandler ifNotNil: [lifeSpanHandler yourAddress]!

getLoadHandler: aCefClient
	^loadHandler ifNotNil: [loadHandler yourAddress]!

getRenderHandler: aCefClient
	^renderHandler ifNotNil: [renderHandler yourAddress]!

getRequestHandler: aCefClient
	^requestHandler ifNotNil: [requestHandler yourAddress]!

on_process_message_received
	"Answer the <ExternalAddress> value of the receiver's 'on_process_message_received' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_process_message_received) asExternalAddress!

on_process_message_received: anExternalAddress
	"Set the receiver's 'on_process_message_received' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_process_message_received put: anExternalAddress!

onProcessMessageReceived: aCefClient browser: aCefBrowser frame: aCefFrame sourceProcess: anInteger message: aCefProcessMessage
	processMessageDelegate
		ifNotNil: 
			[processMessageDelegate
				onProcessMessageReceived: aCefClient
				browser: aCefBrowser
				frame: aCefFrame
				sourceProcess: anInteger
				message: aCefProcessMessage]!

processMessageDelegate: anObject
	processMessageDelegate := anObject! !
!CefClient categoriesForMethods!
enableContextMenuHandler!public! !
enableContextMenuHandlerAndDelegateTo:!public! !
enableDisplayHandler!public! !
enableDisplayHandlerAndDelegateTo:!public! !
enableFindHandler!public! !
enableFindHandlerAndDelegateTo:!public! !
enableFocusHandler!public! !
enableFocusHandlerAndDelegateTo:!public! !
enableFrameHandler!public! !
enableFrameHandlerAndDelegateTo:!public! !
enableKeyboardHandler!public! !
enableKeyboardHandlerAndDelegateTo:!public! !
enableLifeSpanHandler!public! !
enableLifeSpanHandlerAndDelegateTo:!public! !
enableLoadHandler!public! !
enableLoadHandlerAndDelegateTo:!public! !
enableRenderHandler!public! !
enableRenderHandlerAndDelegateTo:!public! !
enableRequestHandlerAndDelegateTo:!public! !
get_audio_handler!**compiled accessors**!public! !
get_audio_handler:!**compiled accessors**!public! !
get_command_handler!**compiled accessors**!public! !
get_command_handler:!**compiled accessors**!public! !
get_context_menu_handler!**compiled accessors**!public! !
get_context_menu_handler:!**compiled accessors**!public! !
get_dialog_handler!**compiled accessors**!public! !
get_dialog_handler:!**compiled accessors**!public! !
get_display_handler!**compiled accessors**!public! !
get_display_handler:!**compiled accessors**!public! !
get_download_handler!**compiled accessors**!public! !
get_download_handler:!**compiled accessors**!public! !
get_drag_handler!**compiled accessors**!public! !
get_drag_handler:!**compiled accessors**!public! !
get_find_handler!**compiled accessors**!public! !
get_find_handler:!**compiled accessors**!public! !
get_focus_handler!**compiled accessors**!public! !
get_focus_handler:!**compiled accessors**!public! !
get_frame_handler!**compiled accessors**!public! !
get_frame_handler:!**compiled accessors**!public! !
get_jsdialog_handler!**compiled accessors**!public! !
get_jsdialog_handler:!**compiled accessors**!public! !
get_keyboard_handler!**compiled accessors**!public! !
get_keyboard_handler:!**compiled accessors**!public! !
get_life_span_handler!**compiled accessors**!public! !
get_life_span_handler:!**compiled accessors**!public! !
get_load_handler!**compiled accessors**!public! !
get_load_handler:!**compiled accessors**!public! !
get_permission_handler!**compiled accessors**!public! !
get_permission_handler:!**compiled accessors**!public! !
get_print_handler!**compiled accessors**!public! !
get_print_handler:!**compiled accessors**!public! !
get_render_handler!**compiled accessors**!public! !
get_render_handler:!**compiled accessors**!public! !
get_request_handler!**compiled accessors**!public! !
get_request_handler:!**compiled accessors**!public! !
getContextMenuHandler:!public! !
getDisplayHandler:!public! !
getFindHandler:!public! !
getFocusHandler:!public! !
getFrameHandler:!public! !
getKeyboardHandler:!public! !
getLifeSpanHandler:!public! !
getLoadHandler:!public! !
getRenderHandler:!public! !
getRequestHandler:!public! !
on_process_message_received!**compiled accessors**!public! !
on_process_message_received:!**compiled accessors**!public! !
onProcessMessageReceived:browser:frame:sourceProcess:message:!public! !
processMessageDelegate:!public! !
!

!CefClient class methodsFor!

defineFields
	"CefClient compileDefinition"

	super defineFields.
	self
		defineField: #get_audio_handler type: LPVOIDField new;
		defineField: #get_command_handler type: LPVOIDField new;
		defineField: #get_context_menu_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefContextMenuHandler* CefClient*'));
		defineField: #get_dialog_handler type: LPVOIDField new;
		defineField: #get_display_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefDisplayHandler* CefClient*'));
		defineField: #get_download_handler type: LPVOIDField new;
		defineField: #get_drag_handler type: LPVOIDField new;
		defineField: #get_find_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefFindHandler* CefClient*'));
		defineField: #get_focus_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefFocusHandler* CefClient*'));
		defineField: #get_frame_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefFrameHandler* CefClient*'));
		defineField: #get_permission_handler type: LPVOIDField new;
		defineField: #get_jsdialog_handler type: LPVOIDField new;
		defineField: #get_keyboard_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefKeyboardHandler* CefClient*'));
		defineField: #get_life_span_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefLifeSpanHandler* CefClient*'));
		defineField: #get_load_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefLoadHandler* CefClient*'));
		defineField: #get_print_handler type: LPVOIDField new;
		defineField: #get_render_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefRenderHandler* CefClient*'));
		defineField: #get_request_handler
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefRequestHandler* CefClient*'));
		defineField: #on_process_message_received
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefClient* CefBrowser* CefFrame* sdword CefProcessMessage*')
					smalltalkName: #onProcessMessageReceived:browser:frame:sourceProcess:message:)!

getFieldNames
	^#(#base #get_audio_handler #get_command_handler #get_context_menu_handler #get_dialog_handler #get_display_handler #get_download_handler #get_drag_handler #get_find_handler #get_focus_handler #get_frame_handler #get_permission_handler #get_jsdialog_handler #get_keyboard_handler #get_life_span_handler #get_load_handler #get_print_handler #get_render_handler #get_request_handler #on_process_message_received)! !
!CefClient class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

