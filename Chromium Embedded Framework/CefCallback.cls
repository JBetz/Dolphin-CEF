"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefCallback
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cancel _OffsetOf_cont'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefCallback guid: (GUID fromString: '{a5fdbd72-5c6e-4ebd-b158-f9d392ac4f75}')!
CefCallback addClassConstant: '_OffsetOf_cancel' value: 16r18!
CefCallback addClassConstant: '_OffsetOf_cont' value: 16r14!
CefCallback comment: ''!
!CefCallback categoriesForClass!External-Data-Structured! !
!CefCallback methodsFor!

_callCancel_cefCallback: cefCallback
	<stdcall: void cancel CefCallback*>
	^self invalidCall: _failureCode!

_callCont_cefCallback: cefCallback
	<stdcall: void cont CefCallback*>
	^self invalidCall: _failureCode!

callCancel
	| method |
	method := self class externalMethodAt: #_callCancel_cefCallback: ifAbsentBindTo: self cancel.
	^method value: self withArguments: (Array with: self)!

callCont
	| method |
	method := self class externalMethodAt: #_callCont_cefCallback: ifAbsentBindTo: self cont.
	^method value: self withArguments: (Array with: self)!

cancel
	"Answer the <ExternalAddress> value of the receiver's 'cancel' field."

	^(bytes uintPtrAtOffset: _OffsetOf_cancel) asExternalAddress!

cancel: anExternalAddress
	"Set the receiver's 'cancel' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_cancel put: anExternalAddress!

cont
	"Answer the <ExternalAddress> value of the receiver's 'cont' field."

	^(bytes uintPtrAtOffset: _OffsetOf_cont) asExternalAddress!

cont: anExternalAddress
	"Set the receiver's 'cont' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_cont put: anExternalAddress! !
!CefCallback categoriesForMethods!
_callCancel_cefCallback:!**compiled accessors**!private! !
_callCont_cefCallback:!**compiled accessors**!private! !
callCancel!**compiled accessors**!public! !
callCont!**compiled accessors**!public! !
cancel!**compiled accessors**!public! !
cancel:!**compiled accessors**!public! !
cont!**compiled accessors**!public! !
cont:!**compiled accessors**!public! !
!

!CefCallback class methodsFor!

defineFields
	"CefCallback compileDefinition"

	super defineFields.
	self
		defineField: #cont
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefCallback*')
					smalltalkName: #callCont);
		defineField: #cancel
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefCallback*')
					smalltalkName: #callCancel)!

getFieldNames
	^#(#base #cont #cancel)! !
!CefCallback class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

