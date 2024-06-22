"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefRenderHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_accessibility_handler _OffsetOf_get_root_screen_rect _OffsetOf_get_screen_info _OffsetOf_get_screen_point _OffsetOf_get_touch_handle_size _OffsetOf_get_view_rect _OffsetOf_on_accelerated_paint _OffsetOf_on_ime_composition_range_changed _OffsetOf_on_paint _OffsetOf_on_popup_show _OffsetOf_on_popup_size _OffsetOf_on_scroll_offset_changed _OffsetOf_on_text_selection_changed _OffsetOf_on_touch_handle_state_changed _OffsetOf_on_virtual_keyboard_requested _OffsetOf_start_dragging _OffsetOf_update_drag_cursor'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefRenderHandler guid: (GUID fromString: '{a023beac-183d-459f-92d4-7560d6befb2c}')!

CefRenderHandler addClassConstant: '_OffsetOf_get_accessibility_handler' value: 16r14!
CefRenderHandler addClassConstant: '_OffsetOf_get_root_screen_rect' value: 16r18!
CefRenderHandler addClassConstant: '_OffsetOf_get_screen_info' value: 16r24!
CefRenderHandler addClassConstant: '_OffsetOf_get_screen_point' value: 16r20!
CefRenderHandler addClassConstant: '_OffsetOf_get_touch_handle_size' value: 16r38!
CefRenderHandler addClassConstant: '_OffsetOf_get_view_rect' value: 16r1C!
CefRenderHandler addClassConstant: '_OffsetOf_on_accelerated_paint' value: 16r34!
CefRenderHandler addClassConstant: '_OffsetOf_on_ime_composition_range_changed' value: 16r4C!
CefRenderHandler addClassConstant: '_OffsetOf_on_paint' value: 16r30!
CefRenderHandler addClassConstant: '_OffsetOf_on_popup_show' value: 16r28!
CefRenderHandler addClassConstant: '_OffsetOf_on_popup_size' value: 16r2C!
CefRenderHandler addClassConstant: '_OffsetOf_on_scroll_offset_changed' value: 16r48!
CefRenderHandler addClassConstant: '_OffsetOf_on_text_selection_changed' value: 16r50!
CefRenderHandler addClassConstant: '_OffsetOf_on_touch_handle_state_changed' value: 16r3C!
CefRenderHandler addClassConstant: '_OffsetOf_on_virtual_keyboard_requested' value: 16r54!
CefRenderHandler addClassConstant: '_OffsetOf_start_dragging' value: 16r40!
CefRenderHandler addClassConstant: '_OffsetOf_update_drag_cursor' value: 16r44!

CefRenderHandler comment: ''!

!CefRenderHandler categoriesForClass!External-Data-Structured! !

!CefRenderHandler methodsFor!

get_accessibility_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_accessibility_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_accessibility_handler) asExternalAddress!

get_accessibility_handler: anExternalAddress
	"Set the receiver's 'get_accessibility_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_accessibility_handler put: anExternalAddress!

get_root_screen_rect
	"Answer the <ExternalAddress> value of the receiver's 'get_root_screen_rect' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_root_screen_rect) asExternalAddress!

get_root_screen_rect: anExternalAddress
	"Set the receiver's 'get_root_screen_rect' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_root_screen_rect put: anExternalAddress!

get_screen_info
	"Answer the <ExternalAddress> value of the receiver's 'get_screen_info' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_screen_info) asExternalAddress!

get_screen_info: anExternalAddress
	"Set the receiver's 'get_screen_info' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_screen_info put: anExternalAddress!

get_screen_point
	"Answer the <ExternalAddress> value of the receiver's 'get_screen_point' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_screen_point) asExternalAddress!

get_screen_point: anExternalAddress
	"Set the receiver's 'get_screen_point' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_screen_point put: anExternalAddress!

get_touch_handle_size
	"Answer the <ExternalAddress> value of the receiver's 'get_touch_handle_size' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_touch_handle_size) asExternalAddress!

get_touch_handle_size: anExternalAddress
	"Set the receiver's 'get_touch_handle_size' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_touch_handle_size put: anExternalAddress!

get_view_rect
	"Answer the <ExternalAddress> value of the receiver's 'get_view_rect' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_view_rect) asExternalAddress!

get_view_rect: anExternalAddress
	"Set the receiver's 'get_view_rect' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_view_rect put: anExternalAddress!

on_accelerated_paint
	"Answer the <ExternalAddress> value of the receiver's 'on_accelerated_paint' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_accelerated_paint) asExternalAddress!

on_accelerated_paint: anExternalAddress
	"Set the receiver's 'on_accelerated_paint' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_accelerated_paint put: anExternalAddress!

on_ime_composition_range_changed
	"Answer the <ExternalAddress> value of the receiver's 'on_ime_composition_range_changed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_ime_composition_range_changed) asExternalAddress!

on_ime_composition_range_changed: anExternalAddress
	"Set the receiver's 'on_ime_composition_range_changed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_ime_composition_range_changed put: anExternalAddress!

on_paint
	"Answer the <ExternalAddress> value of the receiver's 'on_paint' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_paint) asExternalAddress!

on_paint: anExternalAddress
	"Set the receiver's 'on_paint' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_paint put: anExternalAddress!

on_popup_show
	"Answer the <ExternalAddress> value of the receiver's 'on_popup_show' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_popup_show) asExternalAddress!

on_popup_show: anExternalAddress
	"Set the receiver's 'on_popup_show' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_popup_show put: anExternalAddress!

on_popup_size
	"Answer the <ExternalAddress> value of the receiver's 'on_popup_size' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_popup_size) asExternalAddress!

on_popup_size: anExternalAddress
	"Set the receiver's 'on_popup_size' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_popup_size put: anExternalAddress!

on_scroll_offset_changed
	"Answer the <ExternalAddress> value of the receiver's 'on_scroll_offset_changed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_scroll_offset_changed) asExternalAddress!

on_scroll_offset_changed: anExternalAddress
	"Set the receiver's 'on_scroll_offset_changed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_scroll_offset_changed put: anExternalAddress!

on_text_selection_changed
	"Answer the <ExternalAddress> value of the receiver's 'on_text_selection_changed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_text_selection_changed) asExternalAddress!

on_text_selection_changed: anExternalAddress
	"Set the receiver's 'on_text_selection_changed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_text_selection_changed put: anExternalAddress!

on_touch_handle_state_changed
	"Answer the <ExternalAddress> value of the receiver's 'on_touch_handle_state_changed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_touch_handle_state_changed) asExternalAddress!

on_touch_handle_state_changed: anExternalAddress
	"Set the receiver's 'on_touch_handle_state_changed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_touch_handle_state_changed put: anExternalAddress!

on_virtual_keyboard_requested
	"Answer the <ExternalAddress> value of the receiver's 'on_virtual_keyboard_requested' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_virtual_keyboard_requested) asExternalAddress!

on_virtual_keyboard_requested: anExternalAddress
	"Set the receiver's 'on_virtual_keyboard_requested' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_virtual_keyboard_requested put: anExternalAddress!

start_dragging
	"Answer the <ExternalAddress> value of the receiver's 'start_dragging' field."

	^(bytes uintPtrAtOffset: _OffsetOf_start_dragging) asExternalAddress!

start_dragging: anExternalAddress
	"Set the receiver's 'start_dragging' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_start_dragging put: anExternalAddress!

update_drag_cursor
	"Answer the <ExternalAddress> value of the receiver's 'update_drag_cursor' field."

	^(bytes uintPtrAtOffset: _OffsetOf_update_drag_cursor) asExternalAddress!

update_drag_cursor: anExternalAddress
	"Set the receiver's 'update_drag_cursor' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_update_drag_cursor put: anExternalAddress! !

!CefRenderHandler categoriesForMethods!
get_accessibility_handler!**compiled accessors**!public! !
get_accessibility_handler:!**compiled accessors**!public! !
get_root_screen_rect!**compiled accessors**!public! !
get_root_screen_rect:!**compiled accessors**!public! !
get_screen_info!**compiled accessors**!public! !
get_screen_info:!**compiled accessors**!public! !
get_screen_point!**compiled accessors**!public! !
get_screen_point:!**compiled accessors**!public! !
get_touch_handle_size!**compiled accessors**!public! !
get_touch_handle_size:!**compiled accessors**!public! !
get_view_rect!**compiled accessors**!public! !
get_view_rect:!**compiled accessors**!public! !
on_accelerated_paint!**compiled accessors**!public! !
on_accelerated_paint:!**compiled accessors**!public! !
on_ime_composition_range_changed!**compiled accessors**!public! !
on_ime_composition_range_changed:!**compiled accessors**!public! !
on_paint!**compiled accessors**!public! !
on_paint:!**compiled accessors**!public! !
on_popup_show!**compiled accessors**!public! !
on_popup_show:!**compiled accessors**!public! !
on_popup_size!**compiled accessors**!public! !
on_popup_size:!**compiled accessors**!public! !
on_scroll_offset_changed!**compiled accessors**!public! !
on_scroll_offset_changed:!**compiled accessors**!public! !
on_text_selection_changed!**compiled accessors**!public! !
on_text_selection_changed:!**compiled accessors**!public! !
on_touch_handle_state_changed!**compiled accessors**!public! !
on_touch_handle_state_changed:!**compiled accessors**!public! !
on_virtual_keyboard_requested!**compiled accessors**!public! !
on_virtual_keyboard_requested:!**compiled accessors**!public! !
start_dragging!**compiled accessors**!public! !
start_dragging:!**compiled accessors**!public! !
update_drag_cursor!**compiled accessors**!public! !
update_drag_cursor:!**compiled accessors**!public! !
!

!CefRenderHandler class methodsFor!

defineFields
	"CefRenderHandler  compileDefinition"

	super defineFields.
	self
		defineField: #get_accessibility_handler
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: lpvoid CefRenderHandler*'));
		defineField: #get_root_screen_rect
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRenderHandler* CefBrowser* CefRect*')
					smalltalkName: #getRootScreenRect:browser:rect:);
		defineField: #get_view_rect
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRenderHandler* CefBrowser* CefRect*')
					smalltalkName: #getViewRect:browser:rect:);
		defineField: #get_screen_point
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefRenderHandler* CefBrowser* sdword sdword sdword* sdword*')
					smalltalkName: #getScreenPoint:browser:viewX:viewY:screenX:screenY:);
		defineField: #get_screen_info
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefRenderHandler* CefBrowser* CefScreenInfo*')
					smalltalkName: #getScreenInfo:browser:screenInfo:);
		defineField: #on_popup_show
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRenderHandler* CefBrowser* sdword')
					smalltalkName: #onPopupShow:browser:show:);
		defineField: #on_popup_size
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRenderHandler* CefBrowser* CefRect*')
					smalltalkName: #onPopupSize:browser:rect:);
		defineField: #on_paint
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefRenderHandler* CefBrowser* sdword dword lpvoid lpvoid sdword sdword')
					smalltalkName: #onPaint:browser:type:dirtyRectsCount:dirtyRects:buffer:width:height:);
		defineField: #on_accelerated_paint
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefRenderHandler* CefBrowser* sdword dword CefRect* lpvoid')
					smalltalkName: #onAcceleratedPaint:browser:type:dirtyRectsCount:dirtyRects:sharedHandle:);
		defineField: #get_touch_handle_size
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefRenderHandler* CefBrowser* sdword dword*')
					smalltalkName: #getTouchHandleSize:browser:orientation:size:);
		defineField: #on_touch_handle_state_changed
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefRenderHandler* CefBrowser* CefTouchHandleState*')
					smalltalkName: #onTouchHandleStateChanged:browser:state:);
		defineField: #start_dragging
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefRenderHandler* CefBrowser* CefDragData* sdword sdword sdword')
					smalltalkName: #startDragging:browser:dragData:allowedOps:x:y:);
		defineField: #update_drag_cursor
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRenderHandler* CefBrowser* sdword')
					smalltalkName: #updateDragCursor:browser:operation:);
		defineField: #on_scroll_offset_changed
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefRenderHandler* CefBrowser* double double')
					smalltalkName: #onScrollOffsetChanged:browser:x:y:);
		defineField: #on_ime_composition_range_changed
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefRenderHandler* CefBrowser* CefRange* dword CefRect*')
					smalltalkName: #onImeCompositionRangeChanged:browser:selectedRange:characterBoundsCount:characterBounds:);
		defineField: #on_text_selection_changed
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefRenderHandler* CefBrowser* CefString* CefRange*')
					smalltalkName: #onTextSelectionChanged:browser:selectedText:selectedRange:);
		defineField: #on_virtual_keyboard_requested
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRenderHandler* CefBrowser* sdword')
					smalltalkName: #onVirtualKeyboardRequested:browser:inputMode:)!

getFieldNames
	^#(#base #get_accessibility_handler #get_root_screen_rect #get_view_rect #get_screen_point #get_screen_info #on_popup_show #on_popup_size #on_paint #on_accelerated_paint #get_touch_handle_size #on_touch_handle_state_changed #start_dragging #update_drag_cursor #on_scroll_offset_changed #on_ime_composition_range_changed #on_text_selection_changed #on_virtual_keyboard_requested)! !

!CefRenderHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

