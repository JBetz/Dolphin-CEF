"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefRect
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_height _OffsetOf_width _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefRect guid: (GUID fromString: '{44f24338-49cd-4a75-b186-b09fb46eebb9}')!
CefRect addClassConstant: '_OffsetOf_height' value: 16rC!
CefRect addClassConstant: '_OffsetOf_width' value: 16r8!
CefRect addClassConstant: '_OffsetOf_x' value: 16r0!
CefRect addClassConstant: '_OffsetOf_y' value: 16r4!
CefRect comment: ''!
!CefRect categoriesForClass!External-Data-Structured! !
!CefRect methodsFor!

asRectangle
	^Rectangle origin: self origin extent: self extent!

extent
	^self width @ self height!

height
	"Answer the <Integer> value of the receiver's 'height' field."

	^bytes sdwordAtOffset: _OffsetOf_height!

height: anInteger
	"Set the receiver's 'height' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_height put: anInteger!

origin
	^self x @ self y!

width
	"Answer the <Integer> value of the receiver's 'width' field."

	^bytes sdwordAtOffset: _OffsetOf_width!

width: anInteger
	"Set the receiver's 'width' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_width put: anInteger!

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
!CefRect categoriesForMethods!
asRectangle!public! !
extent!public! !
height!public! !
height:!public! !
origin!public! !
width!public! !
width:!public! !
x!public! !
x:!public! !
y!public! !
y:!public! !
!

!CefRect class methodsFor!

defineFields
	"CEFRect compileDefinition 

	///
	/// Structure representing a rectangle.
	///
	typedef struct _cef_rect_t {
	  int x;
	  int y;
	  int width;
	  int height;
	} cef_rect_t;"

	self
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #width type: SDWORDField new;
		defineField: #height type: SDWORDField new!

getFieldNames
	^#(#x #y #width #height)! !
!CefRect class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

