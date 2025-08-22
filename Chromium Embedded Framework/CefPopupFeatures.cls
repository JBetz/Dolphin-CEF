"Filed out from Dolphin Smalltalk"!

CefExternalStructure subclass: #CefPopupFeatures
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cefSize _OffsetOf_height _OffsetOf_heightSet _OffsetOf_isPopup _OffsetOf_width _OffsetOf_widthSet _OffsetOf_x _OffsetOf_xSet _OffsetOf_y _OffsetOf_ySet'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefPopupFeatures guid: (GUID fromString: '{423cfa44-42af-4e55-afa7-8cd8414f25d8}')!

CefPopupFeatures addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefPopupFeatures addClassConstant: '_OffsetOf_height' value: 16r1C!
CefPopupFeatures addClassConstant: '_OffsetOf_heightSet' value: 16r20!
CefPopupFeatures addClassConstant: '_OffsetOf_isPopup' value: 16r24!
CefPopupFeatures addClassConstant: '_OffsetOf_width' value: 16r14!
CefPopupFeatures addClassConstant: '_OffsetOf_widthSet' value: 16r18!
CefPopupFeatures addClassConstant: '_OffsetOf_x' value: 16r4!
CefPopupFeatures addClassConstant: '_OffsetOf_xSet' value: 16r8!
CefPopupFeatures addClassConstant: '_OffsetOf_y' value: 16rC!
CefPopupFeatures addClassConstant: '_OffsetOf_ySet' value: 16r10!

CefPopupFeatures comment: ''!

!CefPopupFeatures categoriesForClass!External-Data-Structured! !

!CefPopupFeatures methodsFor!

height
	"Answer the <Integer> value of the receiver's 'height' field."

	^bytes sdwordAtOffset: _OffsetOf_height!

height: anInteger
	"Set the receiver's 'height' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_height put: anInteger!

heightSet
	"Answer the <Integer> value of the receiver's 'heightSet' field."

	^bytes sdwordAtOffset: _OffsetOf_heightSet!

heightSet: anInteger
	"Set the receiver's 'heightSet' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_heightSet put: anInteger!

isPopup
	"Answer the <Integer> value of the receiver's 'isPopup' field."

	^bytes sdwordAtOffset: _OffsetOf_isPopup!

isPopup: anInteger
	"Set the receiver's 'isPopup' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_isPopup put: anInteger!

width
	"Answer the <Integer> value of the receiver's 'width' field."

	^bytes sdwordAtOffset: _OffsetOf_width!

width: anInteger
	"Set the receiver's 'width' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_width put: anInteger!

widthSet
	"Answer the <Integer> value of the receiver's 'widthSet' field."

	^bytes sdwordAtOffset: _OffsetOf_widthSet!

widthSet: anInteger
	"Set the receiver's 'widthSet' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_widthSet put: anInteger!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes sdwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_x put: anInteger!

xSet
	"Answer the <Integer> value of the receiver's 'xSet' field."

	^bytes sdwordAtOffset: _OffsetOf_xSet!

xSet: anInteger
	"Set the receiver's 'xSet' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_xSet put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger!

ySet
	"Answer the <Integer> value of the receiver's 'ySet' field."

	^bytes sdwordAtOffset: _OffsetOf_ySet!

ySet: anInteger
	"Set the receiver's 'ySet' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_ySet put: anInteger! !

!CefPopupFeatures categoriesForMethods!
height!**compiled accessors**!public! !
height:!**compiled accessors**!public! !
heightSet!**compiled accessors**!public! !
heightSet:!**compiled accessors**!public! !
isPopup!**compiled accessors**!public! !
isPopup:!**compiled accessors**!public! !
width!**compiled accessors**!public! !
width:!**compiled accessors**!public! !
widthSet!**compiled accessors**!public! !
widthSet:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
xSet!**compiled accessors**!public! !
xSet:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
ySet!**compiled accessors**!public! !
ySet:!**compiled accessors**!public! !
!

!CefPopupFeatures class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #x type: SDWORDField new;
		defineField: #xSet type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #ySet type: SDWORDField new;
		defineField: #width type: SDWORDField new;
		defineField: #widthSet type: SDWORDField new;
		defineField: #height type: SDWORDField new;
		defineField: #heightSet type: SDWORDField new;
		defineField: #isPopup type: SDWORDField new!

getFieldNames
	^#(#cefSize #x #xSet #y #ySet #width #widthSet #height #heightSet #isPopup)! !

!CefPopupFeatures class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

