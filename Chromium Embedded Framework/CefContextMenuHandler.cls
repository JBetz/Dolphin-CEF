"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefContextMenuHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_on_before_context_menu _OffsetOf_on_context_menu_command _OffsetOf_on_context_menu_dismissed _OffsetOf_on_quick_menu_command _OffsetOf_on_quick_menu_dismissed _OffsetOf_run_context_menu _OffsetOf_run_quick_menu'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefContextMenuHandler guid: (GUID fromString: '{48273426-7d0f-4ccf-b6f6-adade05b8d8e}')!

CefContextMenuHandler addClassConstant: '_OffsetOf_on_before_context_menu' value: 16r14!
CefContextMenuHandler addClassConstant: '_OffsetOf_on_context_menu_command' value: 16r1C!
CefContextMenuHandler addClassConstant: '_OffsetOf_on_context_menu_dismissed' value: 16r20!
CefContextMenuHandler addClassConstant: '_OffsetOf_on_quick_menu_command' value: 16r28!
CefContextMenuHandler addClassConstant: '_OffsetOf_on_quick_menu_dismissed' value: 16r2C!
CefContextMenuHandler addClassConstant: '_OffsetOf_run_context_menu' value: 16r18!
CefContextMenuHandler addClassConstant: '_OffsetOf_run_quick_menu' value: 16r24!

CefContextMenuHandler comment: ''!

!CefContextMenuHandler categoriesForClass!External-Data-Structured! !

!CefContextMenuHandler methodsFor!

on_before_context_menu
	"Answer the <ExternalAddress> value of the receiver's 'on_before_context_menu' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_before_context_menu) asExternalAddress!

on_before_context_menu: anExternalAddress
	"Set the receiver's 'on_before_context_menu' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_before_context_menu put: anExternalAddress!

on_context_menu_command
	"Answer the <ExternalAddress> value of the receiver's 'on_context_menu_command' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_context_menu_command) asExternalAddress!

on_context_menu_command: anExternalAddress
	"Set the receiver's 'on_context_menu_command' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_context_menu_command put: anExternalAddress!

on_context_menu_dismissed
	"Answer the <ExternalAddress> value of the receiver's 'on_context_menu_dismissed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_context_menu_dismissed) asExternalAddress!

on_context_menu_dismissed: anExternalAddress
	"Set the receiver's 'on_context_menu_dismissed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_context_menu_dismissed put: anExternalAddress!

on_quick_menu_command
	"Answer the <ExternalAddress> value of the receiver's 'on_quick_menu_command' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_quick_menu_command) asExternalAddress!

on_quick_menu_command: anExternalAddress
	"Set the receiver's 'on_quick_menu_command' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_quick_menu_command put: anExternalAddress!

on_quick_menu_dismissed
	"Answer the <ExternalAddress> value of the receiver's 'on_quick_menu_dismissed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_quick_menu_dismissed) asExternalAddress!

on_quick_menu_dismissed: anExternalAddress
	"Set the receiver's 'on_quick_menu_dismissed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_quick_menu_dismissed put: anExternalAddress!

run_context_menu
	"Answer the <ExternalAddress> value of the receiver's 'run_context_menu' field."

	^(bytes uintPtrAtOffset: _OffsetOf_run_context_menu) asExternalAddress!

run_context_menu: anExternalAddress
	"Set the receiver's 'run_context_menu' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_run_context_menu put: anExternalAddress!

run_quick_menu
	"Answer the <ExternalAddress> value of the receiver's 'run_quick_menu' field."

	^(bytes uintPtrAtOffset: _OffsetOf_run_quick_menu) asExternalAddress!

run_quick_menu: anExternalAddress
	"Set the receiver's 'run_quick_menu' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_run_quick_menu put: anExternalAddress! !

!CefContextMenuHandler categoriesForMethods!
on_before_context_menu!**compiled accessors**!public! !
on_before_context_menu:!**compiled accessors**!public! !
on_context_menu_command!**compiled accessors**!public! !
on_context_menu_command:!**compiled accessors**!public! !
on_context_menu_dismissed!**compiled accessors**!public! !
on_context_menu_dismissed:!**compiled accessors**!public! !
on_quick_menu_command!**compiled accessors**!public! !
on_quick_menu_command:!**compiled accessors**!public! !
on_quick_menu_dismissed!**compiled accessors**!public! !
on_quick_menu_dismissed:!**compiled accessors**!public! !
run_context_menu!**compiled accessors**!public! !
run_context_menu:!**compiled accessors**!public! !
run_quick_menu!**compiled accessors**!public! !
run_quick_menu:!**compiled accessors**!public! !
!

!CefContextMenuHandler class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #on_before_context_menu
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefContextMenuHandler* CefBrowser* CefFrame* CefContextMenuParams* CefMenuModel*')
					smalltalkName: #onBeforeContextMenu:browser:frame:params:model:);
		defineField: #run_context_menu
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefContextMenuHandler* CefBrowser* CefFrame* CefContextMenuParams* CefMenuModel* CefRunContextMenuCallback*')
					smalltalkName: #runContextMenu:browser:frame:params:model:callback:);
		defineField: #on_context_menu_command
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefContextMenuHandler* CefBrowser* CefFrame* CefContextMenuParams* sdword sdword')
					smalltalkName: #onContextMenuCommand:browser:frame:params:commandId:eventFlags:);
		defineField: #on_context_menu_dismissed
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefContextMenuHandler* CefBrowser* CefFrame*')
					smalltalkName: #onContextMenuDismissed:browser:frame:);
		defineField: #run_quick_menu
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefContextMenuHandler* CefBrowser* CefFrame* CefPoint* dword* sdword CefRunQuickMenuCallback*')
					smalltalkName: #runQuickMenu:browser:frame:location:size:editStateFlags:callback:);
		defineField: #on_quick_menu_command
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefContextMenuHandler* CefBrowser* CefFrame* sdword sdword')
					smalltalkName: #onQuickMenuCommand:browser:frame:commandId:eventFlags:);
		defineField: #on_quick_menu_dismissed
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefContextMenuHandler* CefBrowser* CefFrame*')
					smalltalkName: #onQuickMenuDismissed:browser:frame:)!

getFieldNames
	^#(#base #on_before_context_menu #run_context_menu #on_context_menu_command #on_context_menu_dismissed #run_quick_menu #on_quick_menu_command #on_quick_menu_dismissed)! !

!CefContextMenuHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

