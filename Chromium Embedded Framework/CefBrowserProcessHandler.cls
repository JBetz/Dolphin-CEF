"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefBrowserProcessHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_default_client _OffsetOf_on_before_child_process_launch _OffsetOf_on_context_initialized _OffsetOf_on_register_custom_preferences _OffsetOf_on_schedule_message_pump_work'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefBrowserProcessHandler guid: (GUID fromString: '{fbea6bee-9ade-4c31-9e32-797284dfef46}')!
CefBrowserProcessHandler addClassConstant: '_OffsetOf_get_default_client' value: 16r24!
CefBrowserProcessHandler addClassConstant: '_OffsetOf_on_before_child_process_launch' value: 16r1C!
CefBrowserProcessHandler addClassConstant: '_OffsetOf_on_context_initialized' value: 16r18!
CefBrowserProcessHandler addClassConstant: '_OffsetOf_on_register_custom_preferences' value: 16r14!
CefBrowserProcessHandler addClassConstant: '_OffsetOf_on_schedule_message_pump_work' value: 16r20!
CefBrowserProcessHandler comment: ''!
!CefBrowserProcessHandler categoriesForClass!Unclassified! !
!CefBrowserProcessHandler methodsFor!

get_default_client
	"Answer the <ExternalAddress> value of the receiver's 'get_default_client' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_default_client) asExternalAddress!

get_default_client: anExternalAddress
	"Set the receiver's 'get_default_client' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_default_client put: anExternalAddress!

on_before_child_process_launch
	"Answer the <ExternalAddress> value of the receiver's 'on_before_child_process_launch' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_before_child_process_launch) asExternalAddress!

on_before_child_process_launch: anExternalAddress
	"Set the receiver's 'on_before_child_process_launch' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_before_child_process_launch put: anExternalAddress!

on_context_initialized
	"Answer the <ExternalAddress> value of the receiver's 'on_context_initialized' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_context_initialized) asExternalAddress!

on_context_initialized: anExternalAddress
	"Set the receiver's 'on_context_initialized' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_context_initialized put: anExternalAddress!

on_register_custom_preferences
	"Answer the <ExternalAddress> value of the receiver's 'on_register_custom_preferences' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_register_custom_preferences) asExternalAddress!

on_register_custom_preferences: anExternalAddress
	"Set the receiver's 'on_register_custom_preferences' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_register_custom_preferences put: anExternalAddress!

on_schedule_message_pump_work
	"Answer the <ExternalAddress> value of the receiver's 'on_schedule_message_pump_work' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_schedule_message_pump_work) asExternalAddress!

on_schedule_message_pump_work: anExternalAddress
	"Set the receiver's 'on_schedule_message_pump_work' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_schedule_message_pump_work put: anExternalAddress! !
!CefBrowserProcessHandler categoriesForMethods!
get_default_client!**compiled accessors**!public! !
get_default_client:!**compiled accessors**!public! !
on_before_child_process_launch!**compiled accessors**!public! !
on_before_child_process_launch:!**compiled accessors**!public! !
on_context_initialized!**compiled accessors**!public! !
on_context_initialized:!**compiled accessors**!public! !
on_register_custom_preferences!**compiled accessors**!public! !
on_register_custom_preferences:!**compiled accessors**!public! !
on_schedule_message_pump_work!**compiled accessors**!public! !
on_schedule_message_pump_work:!**compiled accessors**!public! !
!

!CefBrowserProcessHandler class methodsFor!

defineFields
	"CefBrowserProcessHandler  compileDefinition"

	super defineFields.
	self
		defineField: #on_register_custom_preferences type: LPVOIDField new;
		defineField: #on_context_initialized type: LPVOIDField new;
			"type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowserProcessHandler*'));"
		defineField: #on_before_child_process_launch type: LPVOIDField new;
			"type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowserProcessHandler* CefCommandLine*')
					smalltalkName: #onBeforeChildProcessLaunch_commandLine:);"
		defineField: #on_schedule_message_pump_work type: LPVOIDField new;
		defineField: #get_default_client type: LPVOIDField new!

getFieldNames
	^#(#base #on_register_custom_preferences #on_context_initialized #on_before_child_process_launch #on_schedule_message_pump_work #get_default_client)! !
!CefBrowserProcessHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

