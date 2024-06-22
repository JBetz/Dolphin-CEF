"Filed out from Dolphin Smalltalk"!

CefVisitor subclass: #CefNavigationEntryVisitor
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_visit'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefNavigationEntryVisitor guid: (GUID fromString: '{f6778b49-a7f4-477d-8ca5-dabc3dab7689}')!

CefNavigationEntryVisitor addClassConstant: '_OffsetOf_visit' value: 16r14!

CefNavigationEntryVisitor comment: ''!

!CefNavigationEntryVisitor categoriesForClass!External-Data-Structured! !

!CefNavigationEntryVisitor methodsFor!

visit
	"Answer the <ExternalAddress> value of the receiver's 'visit' field."

	^(bytes uintPtrAtOffset: _OffsetOf_visit) asExternalAddress!

visit: anExternalAddress
	"Set the receiver's 'visit' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_visit put: anExternalAddress! !

!CefNavigationEntryVisitor categoriesForMethods!
visit!**compiled accessors**!public! !
visit:!**compiled accessors**!public! !
!

!CefNavigationEntryVisitor class methodsFor!

defineFields
	"CefNavigationEntryVisitor compileDefinition"

	super defineFields.
	self defineField: #visit
		type: (CallbackField descriptor: (ExternalDescriptor
						fromString: 'stdcall: sdword CefNavigationEntryVisitor* CefNavigationEntry* sdword sdword sdword')
				smalltalkName: #visit:entry:current:index:total:)!

getFieldNames
	^#(#base #visit)! !

!CefNavigationEntryVisitor class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

