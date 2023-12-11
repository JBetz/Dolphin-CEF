"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefRunQuickMenuCallback
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cancel _OffsetOf_cont'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefRunQuickMenuCallback guid: (GUID fromString: '{75b7b53c-9ae0-4471-a573-308446ce7372}')!
CefRunQuickMenuCallback addClassConstant: '_OffsetOf_cancel' value: 16r18!
CefRunQuickMenuCallback addClassConstant: '_OffsetOf_cont' value: 16r14!
CefRunQuickMenuCallback comment: ''!
!CefRunQuickMenuCallback categoriesForClass!Unclassified! !
!CefRunQuickMenuCallback methodsFor!

_callCancel_cefRunQuickMenuCallback: cefRunQuickMenuCallback
	<stdcall: void cancel CefRunQuickMenuCallback*>
	^self invalidCall: _failureCode!

_cont_cefRunQuickMenuCallback: cefRunQuickMenuCallback commandId: commandId eventFlags: eventFlags
	<stdcall: void cont CefRunQuickMenuCallback* sdword sdword>
	^self invalidCall: _failureCode!

callCancel
	| method |
	method := self class externalMethodAt: #_callCancel_cefRunQuickMenuCallback:
				ifAbsentBindTo: self cancel.
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

	bytes uintPtrAtOffset: _OffsetOf_cont put: anExternalAddress!

cont_commandId: commandId eventFlags: eventFlags
	| method arguments |
	method := self class externalMethodAt: #_cont_cefRunQuickMenuCallback:commandId:eventFlags:
				ifAbsentBindTo: self cont.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: commandId;
		at: 3 put: eventFlags.
	^method value: self withArguments: arguments! !
!CefRunQuickMenuCallback categoriesForMethods!
_callCancel_cefRunQuickMenuCallback:!**compiled accessors**!private! !
_cont_cefRunQuickMenuCallback:commandId:eventFlags:!**compiled accessors**!private! !
callCancel!**compiled accessors**!public! !
cancel!**compiled accessors**!public! !
cancel:!**compiled accessors**!public! !
cont!**compiled accessors**!public! !
cont:!**compiled accessors**!public! !
cont_commandId:eventFlags:!**compiled accessors**!public! !
!

!CefRunQuickMenuCallback class methodsFor!

defineFields
	"CefRunQuickMenuCallback compileDefinition"

	super defineFields.
	self
		defineField: #cont
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRunQuickMenuCallback* sdword sdword')
					smalltalkName: #cont_commandId:eventFlags:);
		defineField: #cancel
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRunQuickMenuCallback*')
					smalltalkName: #callCancel)!

getFieldNames
	^#(#base #cont #cancel)! !
!CefRunQuickMenuCallback class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

