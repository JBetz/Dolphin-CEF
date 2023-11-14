"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefDisplayHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_on_address_change _OffsetOf_on_auto_resize _OffsetOf_on_console_message _OffsetOf_on_cursor_change _OffsetOf_on_favicon_urlchange _OffsetOf_on_fullscreen_mode_change _OffsetOf_on_loading_progess_change _OffsetOf_on_media_access_change _OffsetOf_on_status_message _OffsetOf_on_title_change _OffsetOf_on_tooltip'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefDisplayHandler guid: (GUID fromString: '{428ca646-07e0-42af-af5c-516369c3ad11}')!
CefDisplayHandler addClassConstant: '_OffsetOf_on_address_change' value: 16r14!
CefDisplayHandler addClassConstant: '_OffsetOf_on_auto_resize' value: 16r30!
CefDisplayHandler addClassConstant: '_OffsetOf_on_console_message' value: 16r2C!
CefDisplayHandler addClassConstant: '_OffsetOf_on_cursor_change' value: 16r38!
CefDisplayHandler addClassConstant: '_OffsetOf_on_favicon_urlchange' value: 16r1C!
CefDisplayHandler addClassConstant: '_OffsetOf_on_fullscreen_mode_change' value: 16r20!
CefDisplayHandler addClassConstant: '_OffsetOf_on_loading_progess_change' value: 16r34!
CefDisplayHandler addClassConstant: '_OffsetOf_on_media_access_change' value: 16r3C!
CefDisplayHandler addClassConstant: '_OffsetOf_on_status_message' value: 16r28!
CefDisplayHandler addClassConstant: '_OffsetOf_on_title_change' value: 16r18!
CefDisplayHandler addClassConstant: '_OffsetOf_on_tooltip' value: 16r24!
CefDisplayHandler comment: ''!
!CefDisplayHandler categoriesForClass!External-Data-Structured! !
!CefDisplayHandler methodsFor!

on_address_change
	"Answer the <ExternalAddress> value of the receiver's 'on_address_change' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_address_change) asExternalAddress!

on_address_change: anExternalAddress
	"Set the receiver's 'on_address_change' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_address_change put: anExternalAddress!

on_auto_resize
	"Answer the <Integer> value of the receiver's 'on_auto_resize' field."

	^bytes dwordAtOffset: _OffsetOf_on_auto_resize!

on_auto_resize: anInteger
	"Set the receiver's 'on_auto_resize' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_auto_resize put: anInteger!

on_console_message
	"Answer the <Integer> value of the receiver's 'on_console_message' field."

	^bytes dwordAtOffset: _OffsetOf_on_console_message!

on_console_message: anInteger
	"Set the receiver's 'on_console_message' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_console_message put: anInteger!

on_cursor_change
	"Answer the <ExternalAddress> value of the receiver's 'on_cursor_change' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_cursor_change) asExternalAddress!

on_cursor_change: anExternalAddress
	"Set the receiver's 'on_cursor_change' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_cursor_change put: anExternalAddress!

on_favicon_urlchange
	"Answer the <Integer> value of the receiver's 'on_favicon_urlchange' field."

	^bytes dwordAtOffset: _OffsetOf_on_favicon_urlchange!

on_favicon_urlchange: anInteger
	"Set the receiver's 'on_favicon_urlchange' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_favicon_urlchange put: anInteger!

on_fullscreen_mode_change
	"Answer the <Integer> value of the receiver's 'on_fullscreen_mode_change' field."

	^bytes dwordAtOffset: _OffsetOf_on_fullscreen_mode_change!

on_fullscreen_mode_change: anInteger
	"Set the receiver's 'on_fullscreen_mode_change' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_fullscreen_mode_change put: anInteger!

on_loading_progess_change
	"Answer the <Integer> value of the receiver's 'on_loading_progess_change' field."

	^bytes dwordAtOffset: _OffsetOf_on_loading_progess_change!

on_loading_progess_change: anInteger
	"Set the receiver's 'on_loading_progess_change' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_loading_progess_change put: anInteger!

on_media_access_change
	"Answer the <Integer> value of the receiver's 'on_media_access_change' field."

	^bytes dwordAtOffset: _OffsetOf_on_media_access_change!

on_media_access_change: anInteger
	"Set the receiver's 'on_media_access_change' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_media_access_change put: anInteger!

on_status_message
	"Answer the <Integer> value of the receiver's 'on_status_message' field."

	^bytes dwordAtOffset: _OffsetOf_on_status_message!

on_status_message: anInteger
	"Set the receiver's 'on_status_message' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_status_message put: anInteger!

on_title_change
	"Answer the <Integer> value of the receiver's 'on_title_change' field."

	^bytes dwordAtOffset: _OffsetOf_on_title_change!

on_title_change: anInteger
	"Set the receiver's 'on_title_change' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_title_change put: anInteger!

on_tooltip
	"Answer the <Integer> value of the receiver's 'on_tooltip' field."

	^bytes dwordAtOffset: _OffsetOf_on_tooltip!

on_tooltip: anInteger
	"Set the receiver's 'on_tooltip' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_on_tooltip put: anInteger! !
!CefDisplayHandler categoriesForMethods!
on_address_change!public! !
on_address_change:!public! !
on_auto_resize!public! !
on_auto_resize:!public! !
on_console_message!public! !
on_console_message:!public! !
on_cursor_change!public! !
on_cursor_change:!public! !
on_favicon_urlchange!public! !
on_favicon_urlchange:!public! !
on_fullscreen_mode_change!public! !
on_fullscreen_mode_change:!public! !
on_loading_progess_change!public! !
on_loading_progess_change:!public! !
on_media_access_change!public! !
on_media_access_change:!public! !
on_status_message!public! !
on_status_message:!public! !
on_title_change!public! !
on_title_change:!public! !
on_tooltip!public! !
on_tooltip:!public! !
!

!CefDisplayHandler class methodsFor!

defineFields
	"CefDisplayHandler  compileDefinition"

	super defineFields.
	self
		defineField: #on_address_change
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: lpvoid CefDisplayHandler* CefBrowser* CefFrame* CefString*')
					smalltalkName: #onAddressChange:browser:frame:url:);
		defineField: #on_title_change
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: lpvoid CefDisplayHandler* CefBrowser* CefString*')
					smalltalkName: #onTitleChange:browser:title:);
		defineField: #on_favicon_urlchange type: DWORDField new;
		defineField: #on_fullscreen_mode_change type: DWORDField new;
		defineField: #on_tooltip type: DWORDField new;
		defineField: #on_status_message type: DWORDField new;
		defineField: #on_console_message type: DWORDField new;
		defineField: #on_auto_resize type: DWORDField new;
		defineField: #on_loading_progess_change type: DWORDField new;
		defineField: #on_cursor_change
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefDisplayHandler* CefBrowser* handle sdword CefCursorInfo*')
					smalltalkName: #onCursorChange:browser:cursor:type:customCursorInfo:);
		defineField: #on_media_access_change type: DWORDField new!

getFieldNames
	^#(#base #on_address_change #on_title_change #on_favicon_urlchange #on_fullscreen_mode_change #on_tooltip #on_status_message #on_console_message #on_auto_resize #on_loading_progess_change #on_cursor_change #on_media_access_change)! !
!CefDisplayHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

