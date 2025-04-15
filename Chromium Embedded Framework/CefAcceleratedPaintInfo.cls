"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefAcceleratedPaintInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_format _OffsetOf_shared_texture_handle'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefAcceleratedPaintInfo guid: (GUID fromString: '{839bcef5-54e7-4b4a-90d0-61e6a72eff12}')!

CefAcceleratedPaintInfo addClassConstant: '_OffsetOf_format' value: 16r4!
CefAcceleratedPaintInfo addClassConstant: '_OffsetOf_shared_texture_handle' value: 16r0!

CefAcceleratedPaintInfo comment: ''!

!CefAcceleratedPaintInfo categoriesForClass!External-Data-Structured! !

!CefAcceleratedPaintInfo methodsFor!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes sdwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_format put: anInteger!

shared_texture_handle
	"Answer the <ExternalHandle> value of the receiver's 'shared_texture_handle' field."

	^(bytes uintPtrAtOffset: _OffsetOf_shared_texture_handle) asExternalHandle!

shared_texture_handle: anExternalHandle
	"Set the receiver's 'shared_texture_handle' field to the value of the argument, anExternalHandle"

	bytes uintPtrAtOffset: _OffsetOf_shared_texture_handle put: anExternalHandle! !

!CefAcceleratedPaintInfo categoriesForMethods!
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
shared_texture_handle!**compiled accessors**!public! !
shared_texture_handle:!**compiled accessors**!public! !
!

!CefAcceleratedPaintInfo class methodsFor!

defineFields
	"self compileDefinition"

	"///
	/// Structure containing shared texture information for the OnAcceleratedPaint
	/// callback. Resources will be released to the underlying pool for reuse when
	/// the callback returns from client code.
	///
	typedef struct _cef_accelerated_paint_info_t {
	  ///
	  /// Handle for the shared texture. The shared texture is instantiated
	  /// without a keyed mutex.
	  ///
	  cef_shared_texture_handle_t shared_texture_handle;

	  ///
	  /// The pixel format of the texture.
	  ///
	  cef_color_type_t format;
	} cef_accelerated_paint_info_t;"

	self
		defineField: #shared_texture_handle type: HANDLEField new;
		defineField: #format type: SDWORDField new!

getFieldNames
	^#(#shared_texture_handle #format)! !

!CefAcceleratedPaintInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

