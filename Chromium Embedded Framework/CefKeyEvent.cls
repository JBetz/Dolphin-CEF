"Filed out from Dolphin Smalltalk"!

CefExternalStructure subclass: #CefKeyEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_character _OffsetOf_focus_on_editable_field _OffsetOf_is_system_key _OffsetOf_modifiers _OffsetOf_native_key_code _OffsetOf_type _OffsetOf_unmodified_character _OffsetOf_windows_key_code'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefKeyEvent guid: (GUID fromString: '{346aacfd-1ec5-4b61-854e-45f1ee15ab48}')!

CefKeyEvent addClassConstant: '_OffsetOf_character' value: 16r18!
CefKeyEvent addClassConstant: '_OffsetOf_focus_on_editable_field' value: 16r1A!
CefKeyEvent addClassConstant: '_OffsetOf_is_system_key' value: 16r14!
CefKeyEvent addClassConstant: '_OffsetOf_modifiers' value: 16r8!
CefKeyEvent addClassConstant: '_OffsetOf_native_key_code' value: 16r10!
CefKeyEvent addClassConstant: '_OffsetOf_type' value: 16r4!
CefKeyEvent addClassConstant: '_OffsetOf_unmodified_character' value: 16r19!
CefKeyEvent addClassConstant: '_OffsetOf_windows_key_code' value: 16rC!

CefKeyEvent comment: ''!

!CefKeyEvent categoriesForClass!External-Data-Structured! !

!CefKeyEvent methodsFor!

character
	"Answer the <Character> value of the receiver's 'character' field."

	^Character ansiValue: (bytes byteAtOffset: _OffsetOf_character)!

character: aCharacter
	"Set the receiver's 'character' field to the value of the argument, aCharacter"

	bytes byteAtOffset: _OffsetOf_character put: aCharacter codePoint!

focus_on_editable_field
	"Answer the <Integer> value of the receiver's 'focus_on_editable_field' field."

	^bytes swordAtOffset: _OffsetOf_focus_on_editable_field!

focus_on_editable_field: anInteger
	"Set the receiver's 'focus_on_editable_field' field to the value of the argument, anInteger"

	bytes swordAtOffset: _OffsetOf_focus_on_editable_field put: anInteger!

is_system_key
	"Answer the <Integer> value of the receiver's 'is_system_key' field."

	^bytes sdwordAtOffset: _OffsetOf_is_system_key!

is_system_key: anInteger
	"Set the receiver's 'is_system_key' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_is_system_key put: anInteger!

modifiers
	"Answer the <Integer> value of the receiver's 'modifiers' field."

	^bytes dwordAtOffset: _OffsetOf_modifiers!

modifiers: anInteger
	"Set the receiver's 'modifiers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_modifiers put: anInteger!

native_key_code
	"Answer the <Integer> value of the receiver's 'native_key_code' field."

	^bytes sdwordAtOffset: _OffsetOf_native_key_code!

native_key_code: anInteger
	"Set the receiver's 'native_key_code' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_native_key_code put: anInteger!

type
	"Answer the <Integer> value of the receiver's 'type' field."

	^bytes sdwordAtOffset: _OffsetOf_type!

type: anInteger
	"Set the receiver's 'type' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_type put: anInteger!

unmodified_character
	"Answer the <Character> value of the receiver's 'unmodified_character' field."

	^Character ansiValue: (bytes byteAtOffset: _OffsetOf_unmodified_character)!

unmodified_character: aCharacter
	"Set the receiver's 'unmodified_character' field to the value of the argument, aCharacter"

	bytes byteAtOffset: _OffsetOf_unmodified_character put: aCharacter codePoint!

windows_key_code
	"Answer the <Integer> value of the receiver's 'windows_key_code' field."

	^bytes sdwordAtOffset: _OffsetOf_windows_key_code!

windows_key_code: anInteger
	"Set the receiver's 'windows_key_code' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_windows_key_code put: anInteger! !

!CefKeyEvent categoriesForMethods!
character!**compiled accessors**!public! !
character:!**compiled accessors**!public! !
focus_on_editable_field!**compiled accessors**!public! !
focus_on_editable_field:!**compiled accessors**!public! !
is_system_key!**compiled accessors**!public! !
is_system_key:!**compiled accessors**!public! !
modifiers!**compiled accessors**!public! !
modifiers:!**compiled accessors**!public! !
native_key_code!**compiled accessors**!public! !
native_key_code:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
unmodified_character!**compiled accessors**!public! !
unmodified_character:!**compiled accessors**!public! !
windows_key_code!**compiled accessors**!public! !
windows_key_code:!**compiled accessors**!public! !
!

!CefKeyEvent class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #type type: SDWORDField new;
		defineField: #modifiers type: DWORDField new;
		defineField: #windows_key_code type: SDWORDField new;
		defineField: #native_key_code type: SDWORDField new;
		defineField: #is_system_key type: SDWORDField new;
		defineField: #character type: CHARField new;
		defineField: #unmodified_character type: CHARField new;
		defineField: #focus_on_editable_field type: SWORDField new!

getFieldNames
	^#(#cefSize #type #modifiers #windows_key_code #native_key_code #is_system_key #character #unmodified_character #focus_on_editable_field)! !

!CefKeyEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

