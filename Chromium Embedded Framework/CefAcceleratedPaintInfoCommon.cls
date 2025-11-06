"Filed out from Dolphin Smalltalk"!

CefExternalStructure subclass: #CefAcceleratedPaintInfoCommon
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_capture_counter _OffsetOf_capture_update_rect _OffsetOf_coded_size _OffsetOf_content_rect _OffsetOf_has_capture_counter _OffsetOf_has_region_capture_rect _OffsetOf_has_source_size _OffsetOf_region_capture_rect _OffsetOf_source_size _OffsetOf_timestamp _OffsetOf_visible_rect'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefAcceleratedPaintInfoCommon guid: (GUID fromString: '{eec32921-21bb-436b-b6de-24c6dcd1335e}')!

CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_capture_counter' value: 16r58!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_capture_update_rect' value: 16r38!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_coded_size' value: 16r10!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_content_rect' value: 16r24!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_has_capture_counter' value: 16r64!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_has_region_capture_rect' value: 16r60!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_has_source_size' value: 16r62!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_region_capture_rect' value: 16r48!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_source_size' value: 16r34!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_timestamp' value: 16r8!
CefAcceleratedPaintInfoCommon addClassConstant: '_OffsetOf_visible_rect' value: 16r14!

CefAcceleratedPaintInfoCommon comment: ''!

!CefAcceleratedPaintInfoCommon categoriesForClass!External-Data-Structured! !

!CefAcceleratedPaintInfoCommon methodsFor!

capture_counter
	"Answer the <Integer> value of the receiver's 'capture_counter' field."

	^bytes qwordAtOffset: _OffsetOf_capture_counter!

capture_counter: anInteger
	"Set the receiver's 'capture_counter' field to the value of the argument, anInteger"

	bytes qwordAtOffset: _OffsetOf_capture_counter put: anInteger!

capture_update_rect
	"Answer the <CefRect> value of the receiver's 'capture_update_rect' field."

	^CefRect fromAddress: bytes yourAddress + _OffsetOf_capture_update_rect!

capture_update_rect: aCefRect
	"Set the receiver's 'capture_update_rect' field to the value of the argument, aCefRect"

	aCefRect
		replaceBytesOf: bytes
		from: ##(_OffsetOf_capture_update_rect + 1)
		to: ##(_OffsetOf_capture_update_rect + CefRect basicByteSize)
		startingAt: 1!

coded_size
	"Answer the <Integer> value of the receiver's 'coded_size' field."

	^bytes dwordAtOffset: _OffsetOf_coded_size!

coded_size: anInteger
	"Set the receiver's 'coded_size' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_coded_size put: anInteger!

content_rect
	"Answer the <CefRect> value of the receiver's 'content_rect' field."

	^CefRect fromAddress: bytes yourAddress + _OffsetOf_content_rect!

content_rect: aCefRect
	"Set the receiver's 'content_rect' field to the value of the argument, aCefRect"

	aCefRect
		replaceBytesOf: bytes
		from: ##(_OffsetOf_content_rect + 1)
		to: ##(_OffsetOf_content_rect + CefRect basicByteSize)
		startingAt: 1!

has_capture_counter
	"Answer the <Integer> value of the receiver's 'has_capture_counter' field."

	^bytes wordAtOffset: _OffsetOf_has_capture_counter!

has_capture_counter: anInteger
	"Set the receiver's 'has_capture_counter' field to the value of the argument, anInteger"

	bytes wordAtOffset: _OffsetOf_has_capture_counter put: anInteger!

has_region_capture_rect
	"Answer the <Integer> value of the receiver's 'has_region_capture_rect' field."

	^bytes wordAtOffset: _OffsetOf_has_region_capture_rect!

has_region_capture_rect: anInteger
	"Set the receiver's 'has_region_capture_rect' field to the value of the argument, anInteger"

	bytes wordAtOffset: _OffsetOf_has_region_capture_rect put: anInteger!

has_source_size
	"Answer the <Integer> value of the receiver's 'has_source_size' field."

	^bytes wordAtOffset: _OffsetOf_has_source_size!

has_source_size: anInteger
	"Set the receiver's 'has_source_size' field to the value of the argument, anInteger"

	bytes wordAtOffset: _OffsetOf_has_source_size put: anInteger!

region_capture_rect
	"Answer the <CefRect> value of the receiver's 'region_capture_rect' field."

	^CefRect fromAddress: bytes yourAddress + _OffsetOf_region_capture_rect!

region_capture_rect: aCefRect
	"Set the receiver's 'region_capture_rect' field to the value of the argument, aCefRect"

	aCefRect
		replaceBytesOf: bytes
		from: ##(_OffsetOf_region_capture_rect + 1)
		to: ##(_OffsetOf_region_capture_rect + CefRect basicByteSize)
		startingAt: 1!

source_size
	"Answer the <Integer> value of the receiver's 'source_size' field."

	^bytes dwordAtOffset: _OffsetOf_source_size!

source_size: anInteger
	"Set the receiver's 'source_size' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_source_size put: anInteger!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes qwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes qwordAtOffset: _OffsetOf_timestamp put: anInteger!

visible_rect
	"Answer the <CefRect> value of the receiver's 'visible_rect' field."

	^CefRect fromAddress: bytes yourAddress + _OffsetOf_visible_rect!

visible_rect: aCefRect
	"Set the receiver's 'visible_rect' field to the value of the argument, aCefRect"

	aCefRect
		replaceBytesOf: bytes
		from: ##(_OffsetOf_visible_rect + 1)
		to: ##(_OffsetOf_visible_rect + CefRect basicByteSize)
		startingAt: 1! !

!CefAcceleratedPaintInfoCommon categoriesForMethods!
capture_counter!**compiled accessors**!public! !
capture_counter:!**compiled accessors**!public! !
capture_update_rect!**compiled accessors**!public! !
capture_update_rect:!**compiled accessors**!public! !
coded_size!**compiled accessors**!public! !
coded_size:!**compiled accessors**!public! !
content_rect!**compiled accessors**!public! !
content_rect:!**compiled accessors**!public! !
has_capture_counter!**compiled accessors**!public! !
has_capture_counter:!**compiled accessors**!public! !
has_region_capture_rect!**compiled accessors**!public! !
has_region_capture_rect:!**compiled accessors**!public! !
has_source_size!**compiled accessors**!public! !
has_source_size:!**compiled accessors**!public! !
region_capture_rect!**compiled accessors**!public! !
region_capture_rect:!**compiled accessors**!public! !
source_size!**compiled accessors**!public! !
source_size:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
visible_rect!**compiled accessors**!public! !
visible_rect:!**compiled accessors**!public! !
!

!CefAcceleratedPaintInfoCommon class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #timestamp type: QWORDField new;
		defineField: #coded_size type: DWORDField new;
		defineField: #visible_rect type: (StructureField type: CefRect);
		defineField: #content_rect type: (StructureField type: CefRect);
		defineField: #source_size type: DWORDField new;
		defineField: #capture_update_rect type: (StructureField type: CefRect);
		defineField: #region_capture_rect type: (StructureField type: CefRect);
		defineField: #capture_counter type: QWORDField new;
		defineField: #has_region_capture_rect type: WORDField new;
		defineField: #has_source_size type: WORDField new;
		defineField: #has_capture_counter type: WORDField new!

getFieldNames
	^#(#cefSize #timestamp #coded_size #visible_rect #content_rect #source_size #capture_update_rect #region_capture_rect #capture_counter #has_region_capture_rect #has_source_size #has_capture_counter)! !

!CefAcceleratedPaintInfoCommon class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

