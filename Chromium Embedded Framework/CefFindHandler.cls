"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefFindHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_on_find_result'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefFindHandler guid: (GUID fromString: '{3e8a1b2f-05dd-44e1-80d3-9e3ba8d3915a}')!

CefFindHandler addClassConstant: '_OffsetOf_on_find_result' value: 16r14!

CefFindHandler comment: ''!

!CefFindHandler categoriesForClass!External-Data-Structured! !

!CefFindHandler methodsFor!

on_find_result
	"Answer the <ExternalAddress> value of the receiver's 'on_find_result' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_find_result) asExternalAddress!

on_find_result: anExternalAddress
	"Set the receiver's 'on_find_result' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_find_result put: anExternalAddress! !

!CefFindHandler categoriesForMethods!
on_find_result!**compiled accessors**!public! !
on_find_result:!**compiled accessors**!public! !
!

!CefFindHandler class methodsFor!

defineFields
	"CefFindHandler compileDefinition"

	super defineFields.
	self defineField: #on_find_result
		type: (CallbackField descriptor: (ExternalDescriptor
						fromString: 'stdcall: void CefFindHandler* CefBrowser* sdword sdword CefRect* sdword sdword')
				smalltalkName: #onFindResult:browser:identifier:count:selectionRect:activeMatchOrdinal:finalUpdate:)!

getFieldNames
	^#(#base #on_find_result)! !

!CefFindHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

