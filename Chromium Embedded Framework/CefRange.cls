"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefRange
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_from _OffsetOf_to'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefRange guid: (GUID fromString: '{fb02f5df-cb49-486f-9ff2-f31976fbb2eb}')!

CefRange addClassConstant: '_OffsetOf_from' value: 16r0!
CefRange addClassConstant: '_OffsetOf_to' value: 16r4!

CefRange comment: ''!

!CefRange categoriesForClass!External-Data-Structured! !

!CefRange methodsFor!

from
	"Answer the <Integer> value of the receiver's 'from' field."

	^bytes dwordAtOffset: _OffsetOf_from!

from: anInteger
	"Set the receiver's 'from' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_from put: anInteger!

to
	"Answer the <Integer> value of the receiver's 'to' field."

	^bytes dwordAtOffset: _OffsetOf_to!

to: anInteger
	"Set the receiver's 'to' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_to put: anInteger! !

!CefRange categoriesForMethods!
from!**compiled accessors**!public! !
from:!**compiled accessors**!public! !
to!**compiled accessors**!public! !
to:!**compiled accessors**!public! !
!

!CefRange class methodsFor!

defineFields
	"CefRange compileDefinition"

	self
		defineField: #from type: DWORDField new;
		defineField: #to type: DWORDField new!

getFieldNames
	^#(#from #to)! !

!CefRange class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

