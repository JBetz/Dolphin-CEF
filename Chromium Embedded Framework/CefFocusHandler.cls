"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefFocusHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_on_got_focus _OffsetOf_on_set_focus _OffsetOf_on_take_focus'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefFocusHandler guid: (GUID fromString: '{180ddfb8-f6ca-4b49-a643-1435064da908}')!
CefFocusHandler addClassConstant: '_OffsetOf_on_got_focus' value: 16r1C!
CefFocusHandler addClassConstant: '_OffsetOf_on_set_focus' value: 16r18!
CefFocusHandler addClassConstant: '_OffsetOf_on_take_focus' value: 16r14!
CefFocusHandler comment: ''!
!CefFocusHandler categoriesForClass!External-Data-Structured! !
!CefFocusHandler methodsFor!

on_got_focus
	"Answer the <ExternalAddress> value of the receiver's 'on_got_focus' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_got_focus) asExternalAddress!

on_got_focus: anExternalAddress
	"Set the receiver's 'on_got_focus' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_got_focus put: anExternalAddress!

on_set_focus
	"Answer the <ExternalAddress> value of the receiver's 'on_set_focus' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_set_focus) asExternalAddress!

on_set_focus: anExternalAddress
	"Set the receiver's 'on_set_focus' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_set_focus put: anExternalAddress!

on_take_focus
	"Answer the <ExternalAddress> value of the receiver's 'on_take_focus' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_take_focus) asExternalAddress!

on_take_focus: anExternalAddress
	"Set the receiver's 'on_take_focus' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_take_focus put: anExternalAddress! !
!CefFocusHandler categoriesForMethods!
on_got_focus!**compiled accessors**!public! !
on_got_focus:!**compiled accessors**!public! !
on_set_focus!**compiled accessors**!public! !
on_set_focus:!**compiled accessors**!public! !
on_take_focus!**compiled accessors**!public! !
on_take_focus:!**compiled accessors**!public! !
!

!CefFocusHandler class methodsFor!

defineFields
	"CefFocusHandler compileDefinition"

	super defineFields.
	self
		defineField: #on_take_focus
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: lpvoid CefFocusHandler* CefBrowser* sdword')
					smalltalkName: #onTakeFocus:browser:next:);
		defineField: #on_set_focus
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: lpvoid CefFocusHandler* CefBrowser* sdword')
					smalltalkName: #onSetFocus:browser:source:);
		defineField: #on_got_focus
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: lpvoid CefFocusHandler* CefBrowser*')
					smalltalkName: #onGotFocus:browser:)!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref #on_take_focus #on_set_focus #on_got_focus)! !
!CefFocusHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

