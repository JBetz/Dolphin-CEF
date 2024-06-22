"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefBasetime
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_val'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefBasetime guid: (GUID fromString: '{b56e45e8-0645-46d2-9edc-2b655d91e510}')!

CefBasetime addClassConstant: '_OffsetOf_val' value: 16r0!

CefBasetime comment: ''!

!CefBasetime categoriesForClass!External-Data-Structured! !

!CefBasetime methodsFor!

val
	"Answer the <Integer> value of the receiver's 'val' field."

	^bytes sqwordAtOffset: _OffsetOf_val!

val: anInteger
	"Set the receiver's 'val' field to the value of the argument, anInteger"

	bytes sqwordAtOffset: _OffsetOf_val put: anInteger! !

!CefBasetime categoriesForMethods!
val!**compiled accessors**!public! !
val:!**compiled accessors**!public! !
!

!CefBasetime class methodsFor!

defineFields
	"CefBasetime compileDefinition"

	self defineField: #val type: SQWORDField new!

getFieldNames
	^#(#val)! !

!CefBasetime class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

