"Filed out from Dolphin Smalltalk"!

CefExternalStructure subclass: #CefScreenInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_available_rect _OffsetOf_cefSize _OffsetOf_depth _OffsetOf_depth_per_component _OffsetOf_device_scale_factor _OffsetOf_is_monochrome _OffsetOf_rect'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefScreenInfo guid: (GUID fromString: '{eb601c7a-d293-4b66-ba67-f569f22b5f7c}')!

CefScreenInfo addClassConstant: '_OffsetOf_available_rect' value: 16r24!
CefScreenInfo addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefScreenInfo addClassConstant: '_OffsetOf_depth' value: 16r8!
CefScreenInfo addClassConstant: '_OffsetOf_depth_per_component' value: 16rC!
CefScreenInfo addClassConstant: '_OffsetOf_device_scale_factor' value: 16r4!
CefScreenInfo addClassConstant: '_OffsetOf_is_monochrome' value: 16r10!
CefScreenInfo addClassConstant: '_OffsetOf_rect' value: 16r14!

CefScreenInfo comment: ''!

!CefScreenInfo categoriesForClass!External-Data-Structured! !

!CefScreenInfo methodsFor!

available_rect
	"Answer the <CefRect> value of the receiver's 'available_rect' field."

	^CefRect fromAddress: bytes yourAddress + _OffsetOf_available_rect!

available_rect: aCefRect
	"Set the receiver's 'available_rect' field to the value of the argument, aCefRect"

	aCefRect
		replaceBytesOf: bytes
		from: ##(_OffsetOf_available_rect + 1)
		to: ##(_OffsetOf_available_rect + CefRect basicByteSize)
		startingAt: 1!

depth
	"Answer the <Integer> value of the receiver's 'depth' field."

	^bytes sdwordAtOffset: _OffsetOf_depth!

depth: anInteger
	"Set the receiver's 'depth' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_depth put: anInteger!

depth_per_component
	"Answer the <Integer> value of the receiver's 'depth_per_component' field."

	^bytes sdwordAtOffset: _OffsetOf_depth_per_component!

depth_per_component: anInteger
	"Set the receiver's 'depth_per_component' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_depth_per_component put: anInteger!

device_scale_factor
	"Answer the <Float> value of the receiver's 'device_scale_factor' field."

	^bytes floatAtOffset: _OffsetOf_device_scale_factor!

device_scale_factor: aFloat
	"Set the receiver's 'device_scale_factor' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_device_scale_factor put: aFloat!

is_monochrome
	"Answer the <Integer> value of the receiver's 'is_monochrome' field."

	^bytes sdwordAtOffset: _OffsetOf_is_monochrome!

is_monochrome: anInteger
	"Set the receiver's 'is_monochrome' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_is_monochrome put: anInteger!

rect
	"Answer the <CefRect> value of the receiver's 'rect' field."

	^CefRect fromAddress: bytes yourAddress + _OffsetOf_rect!

rect: aCefRect
	"Set the receiver's 'rect' field to the value of the argument, aCefRect"

	aCefRect
		replaceBytesOf: bytes
		from: ##(_OffsetOf_rect + 1)
		to: ##(_OffsetOf_rect + CefRect basicByteSize)
		startingAt: 1! !

!CefScreenInfo categoriesForMethods!
available_rect!**compiled accessors**!public! !
available_rect:!**compiled accessors**!public! !
depth!**compiled accessors**!public! !
depth:!**compiled accessors**!public! !
depth_per_component!**compiled accessors**!public! !
depth_per_component:!**compiled accessors**!public! !
device_scale_factor!**compiled accessors**!public! !
device_scale_factor:!**compiled accessors**!public! !
is_monochrome!**compiled accessors**!public! !
is_monochrome:!**compiled accessors**!public! !
rect!**compiled accessors**!public! !
rect:!**compiled accessors**!public! !
!

!CefScreenInfo class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #device_scale_factor type: FLOATField new;
		defineField: #depth type: SDWORDField new;
		defineField: #depth_per_component type: SDWORDField new;
		defineField: #is_monochrome type: SDWORDField new;
		defineField: #rect type: (StructureField type: CefRect);
		defineField: #available_rect type: (StructureField type: CefRect)!

getFieldNames
	^#(#cefSize #device_scale_factor #depth #depth_per_component #is_monochrome #rect #available_rect)! !

!CefScreenInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

