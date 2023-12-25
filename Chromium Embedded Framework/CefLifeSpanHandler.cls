"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefLifeSpanHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_do_close _OffsetOf_on_after_created _OffsetOf_on_before_close _OffsetOf_on_before_dev_tools_popup _OffsetOf_on_before_popup'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefLifeSpanHandler guid: (GUID fromString: '{5f052d4e-3838-4451-922c-b95695377d92}')!
CefLifeSpanHandler addClassConstant: '_OffsetOf_do_close' value: 16r20!
CefLifeSpanHandler addClassConstant: '_OffsetOf_on_after_created' value: 16r1C!
CefLifeSpanHandler addClassConstant: '_OffsetOf_on_before_close' value: 16r24!
CefLifeSpanHandler addClassConstant: '_OffsetOf_on_before_dev_tools_popup' value: 16r18!
CefLifeSpanHandler addClassConstant: '_OffsetOf_on_before_popup' value: 16r14!
CefLifeSpanHandler comment: ''!
!CefLifeSpanHandler categoriesForClass!External-Data-Structured! !
!CefLifeSpanHandler methodsFor!

do_close
	"Answer the <ExternalAddress> value of the receiver's 'do_close' field."

	^(bytes uintPtrAtOffset: _OffsetOf_do_close) asExternalAddress!

do_close: anExternalAddress
	"Set the receiver's 'do_close' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_do_close put: anExternalAddress!

on_after_created
	"Answer the <ExternalAddress> value of the receiver's 'on_after_created' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_after_created) asExternalAddress!

on_after_created: anExternalAddress
	"Set the receiver's 'on_after_created' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_after_created put: anExternalAddress!

on_before_close
	"Answer the <ExternalAddress> value of the receiver's 'on_before_close' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_before_close) asExternalAddress!

on_before_close: anExternalAddress
	"Set the receiver's 'on_before_close' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_before_close put: anExternalAddress!

on_before_dev_tools_popup
	"Answer the <ExternalAddress> value of the receiver's 'on_before_dev_tools_popup' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_before_dev_tools_popup) asExternalAddress!

on_before_dev_tools_popup: anExternalAddress
	"Set the receiver's 'on_before_dev_tools_popup' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_before_dev_tools_popup put: anExternalAddress!

on_before_popup
	"Answer the <ExternalAddress> value of the receiver's 'on_before_popup' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_before_popup) asExternalAddress!

on_before_popup: anExternalAddress
	"Set the receiver's 'on_before_popup' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_before_popup put: anExternalAddress! !
!CefLifeSpanHandler categoriesForMethods!
do_close!**compiled accessors**!public! !
do_close:!**compiled accessors**!public! !
on_after_created!**compiled accessors**!public! !
on_after_created:!**compiled accessors**!public! !
on_before_close!**compiled accessors**!public! !
on_before_close:!**compiled accessors**!public! !
on_before_dev_tools_popup!**compiled accessors**!public! !
on_before_dev_tools_popup:!**compiled accessors**!public! !
on_before_popup!**compiled accessors**!public! !
on_before_popup:!**compiled accessors**!public! !
!

!CefLifeSpanHandler class methodsFor!

defineFields
	"CefLifeSpanHandler compileDefinition"

	super defineFields.
	self
		defineField: #on_before_popup
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefLifeSpanHandler* CefBrowser* CefFrame* CefString* CefString* sdword sdword CefPopupFeatures* CefWindowInfo* CefClient* CefBrowserSettings* CefDictionaryValue* sdword*')
					smalltalkName: #onBeforePopup:browser:frame:targetUrl:targetFrameName:targetDisposition:userGesture:popupFeatures:windowInfo:client:settings:extraInfo:noJavascriptAccess:);
		defineField: #on_before_dev_tools_popup type: LPVOIDField new;
		defineField: #on_after_created
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefLifeSpanHandler* CefBrowser*')
					smalltalkName: #onAfterCreated:browser:);
		defineField: #do_close
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefLifeSpanHandler* CefBrowser*')
					smalltalkName: #doClose:browser:);
		defineField: #on_before_close
			type: (CallbackField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefLifeSpanHandler* CefBrowser*')
					smalltalkName: #onBeforeClose:browser:)!

getFieldNames
	^#(#base #on_before_popup #on_before_dev_tools_popup #on_after_created #do_close #on_before_close)! !
!CefLifeSpanHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

