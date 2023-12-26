"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefFrameHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_on_frame_attached _OffsetOf_on_frame_created _OffsetOf_on_frame_detached _OffsetOf_on_main_frame_changed'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefFrameHandler guid: (GUID fromString: '{72e28614-dd18-4eb6-a5ac-b91d9a09a7c7}')!
CefFrameHandler addClassConstant: '_OffsetOf_on_frame_attached' value: 16r18!
CefFrameHandler addClassConstant: '_OffsetOf_on_frame_created' value: 16r14!
CefFrameHandler addClassConstant: '_OffsetOf_on_frame_detached' value: 16r1C!
CefFrameHandler addClassConstant: '_OffsetOf_on_main_frame_changed' value: 16r20!
CefFrameHandler comment: ''!
!CefFrameHandler categoriesForClass!External-Data-Structured! !
!CefFrameHandler methodsFor!

on_frame_attached
	"Answer the <ExternalAddress> value of the receiver's 'on_frame_attached' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_frame_attached) asExternalAddress!

on_frame_attached: anExternalAddress
	"Set the receiver's 'on_frame_attached' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_frame_attached put: anExternalAddress!

on_frame_created
	"Answer the <ExternalAddress> value of the receiver's 'on_frame_created' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_frame_created) asExternalAddress!

on_frame_created: anExternalAddress
	"Set the receiver's 'on_frame_created' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_frame_created put: anExternalAddress!

on_frame_detached
	"Answer the <ExternalAddress> value of the receiver's 'on_frame_detached' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_frame_detached) asExternalAddress!

on_frame_detached: anExternalAddress
	"Set the receiver's 'on_frame_detached' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_frame_detached put: anExternalAddress!

on_main_frame_changed
	"Answer the <ExternalAddress> value of the receiver's 'on_main_frame_changed' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_main_frame_changed) asExternalAddress!

on_main_frame_changed: anExternalAddress
	"Set the receiver's 'on_main_frame_changed' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_main_frame_changed put: anExternalAddress! !
!CefFrameHandler categoriesForMethods!
on_frame_attached!**compiled accessors**!public! !
on_frame_attached:!**compiled accessors**!public! !
on_frame_created!**compiled accessors**!public! !
on_frame_created:!**compiled accessors**!public! !
on_frame_detached!**compiled accessors**!public! !
on_frame_detached:!**compiled accessors**!public! !
on_main_frame_changed!**compiled accessors**!public! !
on_main_frame_changed:!**compiled accessors**!public! !
!

!CefFrameHandler class methodsFor!

defineFields
	"CefFrameHandler compileDefinition"

	super defineFields.
	self
		defineField: #on_frame_created
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFocusHandler* CefBrowser* CefFrame*')
					smalltalkName: #onFrameCreated:browser:frame:);
		defineField: #on_frame_attached
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefFocusHandler* CefBrowser* CefFrame* sdword')
					smalltalkName: #onFrameAttached:browser:frame:reattached:);
		defineField: #on_frame_detached
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFocusHandler* CefBrowser* CefFrame*')
					smalltalkName: #onFrameDetached:browser:frame:);
		defineField: #on_main_frame_changed
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefFocusHandler* CefBrowser* CefFrame* CefFrame*')
					smalltalkName: #onMainFrameChanged:browser:oldFrame:newFrame:)!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref #on_frame_created #on_frame_attached #on_frame_detached #on_main_frame_changed)! !
!CefFrameHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

