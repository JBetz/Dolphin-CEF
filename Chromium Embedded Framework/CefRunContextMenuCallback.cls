"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefRunContextMenuCallback
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cancel _OffsetOf_cont'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefRunContextMenuCallback guid: (GUID fromString: '{48c85bba-b2e6-4ed4-b5fe-700bef80f047}')!
CefRunContextMenuCallback addClassConstant: '_OffsetOf_cancel' value: 16r18!
CefRunContextMenuCallback addClassConstant: '_OffsetOf_cont' value: 16r14!
CefRunContextMenuCallback comment: ''!
!CefRunContextMenuCallback categoriesForClass!External-Data-Structured! !
!CefRunContextMenuCallback methodsFor!

_callCancel_cefRunContextMenuCallback: cefRunContextMenuCallback
	<stdcall: void cancel CefRunContextMenuCallback*>
	^self invalidCall: _failureCode!

_cont_cefRunContextMenuCallback: cefRunContextMenuCallback commandId: commandId eventFlags: eventFlags
	<stdcall: void cont CefRunContextMenuCallback* sdword sdword>
	^self invalidCall: _failureCode!

callCancel
	| method |
	method := self class externalMethodAt: #_callCancel_cefRunContextMenuCallback:
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
	method := self class externalMethodAt: #_cont_cefRunContextMenuCallback:commandId:eventFlags:
				ifAbsentBindTo: self cont.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: commandId;
		at: 3 put: eventFlags.
	^method value: self withArguments: arguments! !
!CefRunContextMenuCallback categoriesForMethods!
_callCancel_cefRunContextMenuCallback:!**compiled accessors**!private! !
_cont_cefRunContextMenuCallback:commandId:eventFlags:!**compiled accessors**!private! !
callCancel!**compiled accessors**!public! !
cancel!**compiled accessors**!public! !
cancel:!**compiled accessors**!public! !
cont!**compiled accessors**!public! !
cont:!**compiled accessors**!public! !
cont_commandId:eventFlags:!**compiled accessors**!public! !
!

!CefRunContextMenuCallback class methodsFor!

defineFields
	"CefRunContextMenuCallback compileDefinition"

	super defineFields.
	self
		defineField: #cont
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRunContextMenuCallback* sdword sdword')
					smalltalkName: #cont_commandId:eventFlags:);
		defineField: #cancel
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefRunContextMenuCallback*')
					smalltalkName: #callCancel)!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref #cont #cancel)! !
!CefRunContextMenuCallback class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

