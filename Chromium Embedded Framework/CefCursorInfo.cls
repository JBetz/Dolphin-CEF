"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefCursorInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_buffer _OffsetOf_hotspot _OffsetOf_image_scale_factor _OffsetOf_size'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefCursorInfo guid: (GUID fromString: '{41e8c531-c677-4524-b7a3-21824a6e22bd}')!
CefCursorInfo addClassConstant: '_OffsetOf_buffer' value: 16rC!
CefCursorInfo addClassConstant: '_OffsetOf_hotspot' value: 16r0!
CefCursorInfo addClassConstant: '_OffsetOf_image_scale_factor' value: 16r8!
CefCursorInfo addClassConstant: '_OffsetOf_size' value: 16r10!
CefCursorInfo comment: ''!
!CefCursorInfo categoriesForClass!External-Data-Structured! !
!CefCursorInfo methodsFor!

buffer
	"Answer the <ExternalAddress> value of the receiver's 'buffer' field."

	^(bytes uintPtrAtOffset: _OffsetOf_buffer) asExternalAddress!

buffer: anExternalAddress
	"Set the receiver's 'buffer' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_buffer put: anExternalAddress!

hotspot
	"Answer the <CefPoint> value of the receiver's 'hotspot' field."

	^CefPoint fromAddress: bytes yourAddress!

hotspot: aCefPoint
	"Set the receiver's 'hotspot' field to the value of the argument, aCefPoint"

	aCefPoint
		replaceBytesOf: bytes
		from: ##(_OffsetOf_hotspot + 1)
		to: ##(_OffsetOf_hotspot + CefPoint basicByteSize)
		startingAt: 1!

image_scale_factor
	"Answer the <Float> value of the receiver's 'image_scale_factor' field."

	^bytes floatAtOffset: _OffsetOf_image_scale_factor!

image_scale_factor: aFloat
	"Set the receiver's 'image_scale_factor' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_image_scale_factor put: aFloat!

size
	"Answer the <Integer> value of the receiver's 'size' field."

	^bytes dwordAtOffset: _OffsetOf_size!

size: anInteger
	"Set the receiver's 'size' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_size put: anInteger! !
!CefCursorInfo categoriesForMethods!
buffer!**compiled accessors**!public! !
buffer:!**compiled accessors**!public! !
hotspot!**compiled accessors**!public! !
hotspot:!**compiled accessors**!public! !
image_scale_factor!**compiled accessors**!public! !
image_scale_factor:!**compiled accessors**!public! !
size!**compiled accessors**!public! !
size:!**compiled accessors**!public! !
!

!CefCursorInfo class methodsFor!

defineFields
	"CefCursorInfo compileDefinition

	///
	/// Structure representing cursor information. |buffer| will be
	/// |size.width|*|size.height|*4 bytes in size and represents a BGRA image with
	/// an upper-left origin.
	///
	typedef struct _cef_cursor_info_t {
		cef_point_t hotspot;
		float image_scale_factor;
		void* buffer;
		cef_size_t size;
	} cef_cursor_info_t;"

	self
		defineField: #hotspot type: (StructureField type: CefPoint);
		defineField: #image_scale_factor type: FLOATField new;
		defineField: #buffer type: LPVOIDField new;
		defineField: #size type: DWORDField new!

getFieldNames
	^#(#hotspot #image_scale_factor #buffer #size)! !
!CefCursorInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

