"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefLoadHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_on_load_end _OffsetOf_on_load_error _OffsetOf_on_load_start _OffsetOf_on_loading_state_change'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefLoadHandler guid: (GUID fromString: '{dc4bc4c0-8671-43fc-9cf2-3d5f900904b3}')!
CefLoadHandler addClassConstant: '_OffsetOf_on_load_end' value: 16r1C!
CefLoadHandler addClassConstant: '_OffsetOf_on_load_error' value: 16r20!
CefLoadHandler addClassConstant: '_OffsetOf_on_load_start' value: 16r18!
CefLoadHandler addClassConstant: '_OffsetOf_on_loading_state_change' value: 16r14!
CefLoadHandler comment: ''!
!CefLoadHandler categoriesForClass!External-Data-Structured! !
!CefLoadHandler methodsFor!

on_load_end
	"Answer the <ExternalAddress> value of the receiver's 'on_load_end' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_load_end) asExternalAddress!

on_load_end: anExternalAddress
	"Set the receiver's 'on_load_end' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_load_end put: anExternalAddress!

on_load_error
	"Answer the <ExternalAddress> value of the receiver's 'on_load_error' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_load_error) asExternalAddress!

on_load_error: anExternalAddress
	"Set the receiver's 'on_load_error' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_load_error put: anExternalAddress!

on_load_start
	"Answer the <ExternalAddress> value of the receiver's 'on_load_start' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_load_start) asExternalAddress!

on_load_start: anExternalAddress
	"Set the receiver's 'on_load_start' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_load_start put: anExternalAddress!

on_loading_state_change
	"Answer the <ExternalAddress> value of the receiver's 'on_loading_state_change' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_loading_state_change) asExternalAddress!

on_loading_state_change: anExternalAddress
	"Set the receiver's 'on_loading_state_change' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_loading_state_change put: anExternalAddress! !
!CefLoadHandler categoriesForMethods!
on_load_end!**compiled accessors**!public! !
on_load_end:!**compiled accessors**!public! !
on_load_error!**compiled accessors**!public! !
on_load_error:!**compiled accessors**!public! !
on_load_start!**compiled accessors**!public! !
on_load_start:!**compiled accessors**!public! !
on_loading_state_change!**compiled accessors**!public! !
on_loading_state_change:!**compiled accessors**!public! !
!

!CefLoadHandler class methodsFor!

defineFields
	"CefLoadHandler compileDefinition"

	super defineFields.
	self
		defineField: #on_loading_state_change
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefLoadHandler* CefBrowser* bool bool bool')
					smalltalkName: #onLoadingStateChange:browser:isLoading:canGoBack:canGoForward:);
		defineField: #on_load_start
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefLoadHandler* CefBrowser* CefFrame* sdword')
					smalltalkName: #onLoadStart:browser:frame:transitionType:);
		defineField: #on_load_end
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefLoadHandler* CefBrowser* CefFrame* sdword')
					smalltalkName: #onLoadEnd:browser:frame:httpStatusCode:);
		defineField: #on_load_error
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefLoadHandler* CefBrowser* CefFrame* sdword CefString* CefString*')
					smalltalkName: #onLoadError:browser:frame:errorCode:errorText:failedUrl:)!

getFieldNames
	^#(#base #on_loading_state_change #on_load_start #on_load_end #on_load_error)! !
!CefLoadHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

