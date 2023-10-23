"Filed out from Dolphin Smalltalk"!

ExtendedExternalStructure subclass: #CefPoint
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefPoint guid: (GUID fromString: '{9149e9a1-b159-4bd3-81df-008d0c9cd03a}')!
CefPoint addClassConstant: '_OffsetOf_x' value: 16r0!
CefPoint addClassConstant: '_OffsetOf_y' value: 16r4!
CefPoint comment: ''!
!CefPoint categoriesForClass!External-Data-Structured! !
!CefPoint methodsFor!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes sdwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_x put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger! !
!CefPoint categoriesForMethods!
x!public! !
x:!public! !
y!public! !
y:!public! !
!

!CefPoint class methodsFor!

defineFields
	"CefPoint compileDefinition"
	
	"///
	/// Structure representing a point.
	///
	typedef struct _cef_point_t {
	  int x;
	  int y;
	} cef_point_t;"
	
	self 
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new!

getFieldNames
	^#(#x #y)! !
!CefPoint class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

