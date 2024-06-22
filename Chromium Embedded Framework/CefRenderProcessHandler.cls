"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefRenderProcessHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_load_handler _OffsetOf_on_browser_created _OffsetOf_on_browser_destroyed _OffsetOf_on_context_created _OffsetOf_on_context_released _OffsetOf_on_focused_node_changed _OffsetOf_on_process_message_received _OffsetOf_on_uncaught_exception _OffsetOf_on_web_kit_initialized'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefRenderProcessHandler guid: (GUID fromString: '{9da427a6-b514-4f67-b4aa-0a1d94a4bbdf}')!

CefRenderProcessHandler addClassConstant: '_OffsetOf_get_load_handler' value: 16r20!
CefRenderProcessHandler addClassConstant: '_OffsetOf_on_browser_created' value: 16r18!
CefRenderProcessHandler addClassConstant: '_OffsetOf_on_browser_destroyed' value: 16r1C!
CefRenderProcessHandler addClassConstant: '_OffsetOf_on_context_created' value: 16r24!
CefRenderProcessHandler addClassConstant: '_OffsetOf_on_context_released' value: 16r28!
CefRenderProcessHandler addClassConstant: '_OffsetOf_on_focused_node_changed' value: 16r30!
CefRenderProcessHandler addClassConstant: '_OffsetOf_on_process_message_received' value: 16r34!
CefRenderProcessHandler addClassConstant: '_OffsetOf_on_uncaught_exception' value: 16r2C!
CefRenderProcessHandler addClassConstant: '_OffsetOf_on_web_kit_initialized' value: 16r14!

CefRenderProcessHandler comment: ''!

!CefRenderProcessHandler categoriesForClass!External-Data-Structured! !

!CefRenderProcessHandler methodsFor!

get_load_handler
	"Answer the <ExternalAddress> value of the receiver's 'get_load_handler' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_load_handler) asExternalAddress!

get_load_handler: anExternalAddress
	"Set the receiver's 'get_load_handler' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_load_handler put: anExternalAddress!

on_browser_created
	"Answer the <ExternalAddress> value of the receiver's 'on_browser_created' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_browser_created) asExternalAddress!

on_browser_created: anExternalAddress
	"Set the receiver's 'on_browser_created' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_browser_created put: anExternalAddress!

on_browser_destroyed
	"Answer the <ExternalAddress> value of the receiver's 'on_browser_destroyed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_browser_destroyed) asExternalAddress!

on_browser_destroyed: anExternalAddress
	"Set the receiver's 'on_browser_destroyed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_browser_destroyed put: anExternalAddress!

on_context_created
	"Answer the <ExternalAddress> value of the receiver's 'on_context_created' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_context_created) asExternalAddress!

on_context_created: anExternalAddress
	"Set the receiver's 'on_context_created' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_context_created put: anExternalAddress!

on_context_released
	"Answer the <ExternalAddress> value of the receiver's 'on_context_released' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_context_released) asExternalAddress!

on_context_released: anExternalAddress
	"Set the receiver's 'on_context_released' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_context_released put: anExternalAddress!

on_focused_node_changed
	"Answer the <ExternalAddress> value of the receiver's 'on_focused_node_changed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_focused_node_changed) asExternalAddress!

on_focused_node_changed: anExternalAddress
	"Set the receiver's 'on_focused_node_changed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_focused_node_changed put: anExternalAddress!

on_process_message_received
	"Answer the <ExternalAddress> value of the receiver's 'on_process_message_received' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_process_message_received) asExternalAddress!

on_process_message_received: anExternalAddress
	"Set the receiver's 'on_process_message_received' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_process_message_received put: anExternalAddress!

on_uncaught_exception
	"Answer the <ExternalAddress> value of the receiver's 'on_uncaught_exception' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_uncaught_exception) asExternalAddress!

on_uncaught_exception: anExternalAddress
	"Set the receiver's 'on_uncaught_exception' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_uncaught_exception put: anExternalAddress!

on_web_kit_initialized
	"Answer the <ExternalAddress> value of the receiver's 'on_web_kit_initialized' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_web_kit_initialized) asExternalAddress!

on_web_kit_initialized: anExternalAddress
	"Set the receiver's 'on_web_kit_initialized' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_web_kit_initialized put: anExternalAddress! !

!CefRenderProcessHandler categoriesForMethods!
get_load_handler!**compiled accessors**!public! !
get_load_handler:!**compiled accessors**!public! !
on_browser_created!**compiled accessors**!public! !
on_browser_created:!**compiled accessors**!public! !
on_browser_destroyed!**compiled accessors**!public! !
on_browser_destroyed:!**compiled accessors**!public! !
on_context_created!**compiled accessors**!public! !
on_context_created:!**compiled accessors**!public! !
on_context_released!**compiled accessors**!public! !
on_context_released:!**compiled accessors**!public! !
on_focused_node_changed!**compiled accessors**!public! !
on_focused_node_changed:!**compiled accessors**!public! !
on_process_message_received!**compiled accessors**!public! !
on_process_message_received:!**compiled accessors**!public! !
on_uncaught_exception!**compiled accessors**!public! !
on_uncaught_exception:!**compiled accessors**!public! !
on_web_kit_initialized!**compiled accessors**!public! !
on_web_kit_initialized:!**compiled accessors**!public! !
!

!CefRenderProcessHandler class methodsFor!

defineFields
	"CefRenderProcessHandler  compileDefinition"

	super defineFields.
	self
		defineField: #on_web_kit_initialized type: LPVOIDField new;
		defineField: #on_browser_created type: LPVOIDField new;
		defineField: #on_browser_destroyed type: LPVOIDField new;
		defineField: #get_load_handler type: LPVOIDField new;
		defineField: #on_context_created type: LPVOIDField new;
		defineField: #on_context_released type: LPVOIDField new;
		defineField: #on_uncaught_exception type: LPVOIDField new;
		defineField: #on_focused_node_changed type: LPVOIDField new;
		defineField: #on_process_message_received type: LPVOIDField new!

getFieldNames
	^#(#base #on_web_kit_initialized #on_browser_created #on_browser_destroyed #get_load_handler #on_context_created #on_context_released #on_uncaught_exception #on_focused_node_changed #on_process_message_received)! !

!CefRenderProcessHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

