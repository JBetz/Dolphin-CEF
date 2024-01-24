"Filed out from Dolphin Smalltalk"!

CefVisitor subclass: #CefStringVisitor
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_visit'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefStringVisitor guid: (GUID fromString: '{cd4f01a8-def9-4f37-839e-b25cdb312332}')!
CefStringVisitor addClassConstant: '_OffsetOf_visit' value: 16r14!
CefStringVisitor comment: ''!
!CefStringVisitor categoriesForClass!External-Data-Structured! !
!CefStringVisitor methodsFor!

visit
	"Answer the <ExternalAddress> value of the receiver's 'visit' field."

	^(bytes uintPtrAtOffset: _OffsetOf_visit) asExternalAddress!

visit: anExternalAddress
	"Set the receiver's 'visit' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_visit put: anExternalAddress! !
!CefStringVisitor categoriesForMethods!
visit!**compiled accessors**!public! !
visit:!**compiled accessors**!public! !
!

!CefStringVisitor class methodsFor!

defineFields
	"CefStringVisitor compileDefinition"

	super defineFields.
	self defineField: #visit
		type: (CallbackField
				descriptor: (ExternalDescriptor fromString: 'stdcall: void CefStringVisitor* CefString*')
				smalltalkName: #visit:string:)!

getFieldNames
	^#(#base #visit)! !
!CefStringVisitor class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

