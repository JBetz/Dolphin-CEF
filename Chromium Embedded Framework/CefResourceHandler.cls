"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefResourceHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cancel _OffsetOf_get_response_headers _OffsetOf_open _OffsetOf_process_request _OffsetOf_read _OffsetOf_read_response _OffsetOf_skip'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefResourceHandler guid: (GUID fromString: '{390981df-51e3-4a20-bbff-9be047172008}')!

CefResourceHandler addClassConstant: '_OffsetOf_cancel' value: 16r2C!
CefResourceHandler addClassConstant: '_OffsetOf_get_response_headers' value: 16r1C!
CefResourceHandler addClassConstant: '_OffsetOf_open' value: 16r14!
CefResourceHandler addClassConstant: '_OffsetOf_process_request' value: 16r18!
CefResourceHandler addClassConstant: '_OffsetOf_read' value: 16r24!
CefResourceHandler addClassConstant: '_OffsetOf_read_response' value: 16r28!
CefResourceHandler addClassConstant: '_OffsetOf_skip' value: 16r20!

CefResourceHandler comment: ''!

!CefResourceHandler categoriesForClass!External-Data-Structured! !

!CefResourceHandler methodsFor!

cancel
	"Answer the <ExternalAddress> value of the receiver's 'cancel' field."

	^(bytes uintPtrAtOffset: _OffsetOf_cancel) asExternalAddress!

cancel: anExternalAddress
	"Set the receiver's 'cancel' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_cancel put: anExternalAddress!

get_response_headers
	"Answer the <ExternalAddress> value of the receiver's 'get_response_headers' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_response_headers) asExternalAddress!

get_response_headers: anExternalAddress
	"Set the receiver's 'get_response_headers' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_response_headers put: anExternalAddress!

open
	"Answer the <ExternalAddress> value of the receiver's 'open' field."

	^(bytes uintPtrAtOffset: _OffsetOf_open) asExternalAddress!

open: anExternalAddress
	"Set the receiver's 'open' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_open put: anExternalAddress!

process_request
	"Answer the <ExternalAddress> value of the receiver's 'process_request' field."

	^(bytes uintPtrAtOffset: _OffsetOf_process_request) asExternalAddress!

process_request: anExternalAddress
	"Set the receiver's 'process_request' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_process_request put: anExternalAddress!

read
	"Answer the <ExternalAddress> value of the receiver's 'read' field."

	^(bytes uintPtrAtOffset: _OffsetOf_read) asExternalAddress!

read: anExternalAddress
	"Set the receiver's 'read' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_read put: anExternalAddress!

read_response
	"Answer the <ExternalAddress> value of the receiver's 'read_response' field."

	^(bytes uintPtrAtOffset: _OffsetOf_read_response) asExternalAddress!

read_response: anExternalAddress
	"Set the receiver's 'read_response' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_read_response put: anExternalAddress!

skip
	"Answer the <ExternalAddress> value of the receiver's 'skip' field."

	^(bytes uintPtrAtOffset: _OffsetOf_skip) asExternalAddress!

skip: anExternalAddress
	"Set the receiver's 'skip' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_skip put: anExternalAddress! !

!CefResourceHandler categoriesForMethods!
cancel!**compiled accessors**!public! !
cancel:!**compiled accessors**!public! !
get_response_headers!**compiled accessors**!public! !
get_response_headers:!**compiled accessors**!public! !
open!**compiled accessors**!public! !
open:!**compiled accessors**!public! !
process_request!**compiled accessors**!public! !
process_request:!**compiled accessors**!public! !
read!**compiled accessors**!public! !
read:!**compiled accessors**!public! !
read_response!**compiled accessors**!public! !
read_response:!**compiled accessors**!public! !
skip!**compiled accessors**!public! !
skip:!**compiled accessors**!public! !
!

!CefResourceHandler class methodsFor!

defineFields
	"self recompileDefinition"

	super defineFields.
	self
		defineField: #open
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefResourceHandler* CefRequest* sdword* CefCallback*')
					smalltalkName: #open:request:handleRequest:callback:);
		defineField: #process_request type: LPVOIDField new;
		defineField: #get_response_headers
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefResourceHandler* CefResponse* sqword* CefString*')
					smalltalkName: #getResponseHeaders:response:responseLength:redirectUrl:);
		defineField: #skip
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefResourceHandler* sqword* sqword* CefCallback*')
					smalltalkName: #skip:bytesToSkip:bytesSkipped:callback:);
		defineField: #read
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefResourceHandler* void* sdword sdword* CefCallback*')
					smalltalkName: #read:dataOut:bytesToRead:bytesRead:callback:);
		defineField: #read_response type: LPVOIDField new;
		defineField: #cancel
			type: (CallbackField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefResourceHandler*'))!

getFieldNames
	^#(#base #open #process_request #get_response_headers #skip #read #read_response #cancel)! !

!CefResourceHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

