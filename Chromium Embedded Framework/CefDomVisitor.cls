"Filed out from Dolphin Smalltalk"!

CefVisitor subclass: #CefDomVisitor
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_visit'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefDomVisitor guid: (GUID fromString: '{37b53105-30a3-49ba-bd47-006df19fa3e3}')!
CefDomVisitor addClassConstant: '_OffsetOf_visit' value: 16r14!
CefDomVisitor comment: ''!
!CefDomVisitor categoriesForClass!External-Data-Structured! !
!CefDomVisitor methodsFor!

visit
	"Answer the <ExternalAddress> value of the receiver's 'visit' field."

	^(bytes uintPtrAtOffset: _OffsetOf_visit) asExternalAddress!

visit: anExternalAddress
	"Set the receiver's 'visit' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_visit put: anExternalAddress! !
!CefDomVisitor categoriesForMethods!
visit!**compiled accessors**!public! !
visit:!**compiled accessors**!public! !
!

!CefDomVisitor class methodsFor!

defineFields
	"CefDomVisitor compileDefinition"

	super defineFields.
	self defineField: #visit
		type: (CallbackField
				descriptor: (ExternalDescriptor fromString: 'stdcall: void CefDomVisitor* CefDomDocument*')
				smalltalkName: #visit:document:)!

getFieldNames
	^#(#base #visit)! !
!CefDomVisitor class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

