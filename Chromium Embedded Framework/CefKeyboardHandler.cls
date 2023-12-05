"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefKeyboardHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_on_key_event _OffsetOf_on_pre_key_event'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefKeyboardHandler guid: (GUID fromString: '{56d46e90-7644-4d00-af0d-d3a7fee79e4f}')!
CefKeyboardHandler addClassConstant: '_OffsetOf_on_key_event' value: 16r18!
CefKeyboardHandler addClassConstant: '_OffsetOf_on_pre_key_event' value: 16r14!
CefKeyboardHandler comment: ''!
!CefKeyboardHandler categoriesForClass!External-Data-Structured! !
!CefKeyboardHandler methodsFor!

on_key_event
	"Answer the <ExternalAddress> value of the receiver's 'on_key_event' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_key_event) asExternalAddress!

on_key_event: anExternalAddress
	"Set the receiver's 'on_key_event' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_key_event put: anExternalAddress!

on_pre_key_event
	"Answer the <ExternalAddress> value of the receiver's 'on_pre_key_event' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_pre_key_event) asExternalAddress!

on_pre_key_event: anExternalAddress
	"Set the receiver's 'on_pre_key_event' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_pre_key_event put: anExternalAddress! !
!CefKeyboardHandler categoriesForMethods!
on_key_event!**compiled accessors**!public! !
on_key_event:!**compiled accessors**!public! !
on_pre_key_event!**compiled accessors**!public! !
on_pre_key_event:!**compiled accessors**!public! !
!

!CefKeyboardHandler class methodsFor!

defineFields
	"CefKeyboardHandler compileDefinition"

	super defineFields.
	self
		defineField: #on_pre_key_event
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: bool CefKeyboardHandler* CefBrowser* CefKeyEvent* void* sdword*')
					smalltalkName: #onPreKeyEvent:browser:event:osEvent:isKeyboardShortcut:);
		defineField: #on_key_event
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: bool CefKeyboardHandler* CefBrowser* CefKeyEvent* void*')
					smalltalkName: #onKeyEvent:browser:event:osEvent:)!

getFieldNames
	^#(#base #on_pre_key_event #on_key_event)! !
!CefKeyboardHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

