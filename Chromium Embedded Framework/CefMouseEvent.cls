"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefMouseEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_modifiers _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefMouseEvent guid: (GUID fromString: '{1fe34822-b03a-454c-b7cd-acae8f6ca85f}')!
CefMouseEvent addClassConstant: '_OffsetOf_modifiers' value: 16r8!
CefMouseEvent addClassConstant: '_OffsetOf_x' value: 16r0!
CefMouseEvent addClassConstant: '_OffsetOf_y' value: 16r4!
CefMouseEvent comment: ''!
!CefMouseEvent categoriesForClass!External-Data-Structured! !
!CefMouseEvent methodsFor!

modifiers
	"Answer the <Integer> value of the receiver's 'modifiers' field."

	^bytes dwordAtOffset: _OffsetOf_modifiers!

modifiers: anInteger
	"Set the receiver's 'modifiers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_modifiers put: anInteger!

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
!CefMouseEvent categoriesForMethods!
modifiers!public! !
modifiers:!public! !
x!public! !
x:!public! !
y!public! !
y:!public! !
!

!CefMouseEvent class methodsFor!

defineFields
	"CefMouseEvent compileDefinition 

	///
	/// Structure representing mouse event information.
	///
	typedef struct _cef_mouse_event_t {
	  ///
	  /// X coordinate relative to the left side of the view.
	  ///
	  int x;

	  ///
	  /// Y coordinate relative to the top side of the view.
	  ///
	  int y;

	  ///
	  /// Bit flags describing any pressed modifier keys. See
	  /// cef_event_flags_t for values.
	  ///
	  uint32_t modifiers;
	} cef_mouse_event_t;"

	self
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #modifiers type: DWORDField new!

getFieldNames
	^#(#x #y #modifiers)! !
!CefMouseEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

