"Filed out from Dolphin Smalltalk"!

CefExternalStructure subclass: #CefAcceleratedPaintInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_extra _OffsetOf_format _OffsetOf_shared_texture_handle'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefAcceleratedPaintInfo guid: (GUID fromString: '{839bcef5-54e7-4b4a-90d0-61e6a72eff12}')!

CefAcceleratedPaintInfo addClassConstant: '_OffsetOf_extra' value: 16r10!
CefAcceleratedPaintInfo addClassConstant: '_OffsetOf_format' value: 16r8!
CefAcceleratedPaintInfo addClassConstant: '_OffsetOf_shared_texture_handle' value: 16r4!

CefAcceleratedPaintInfo comment: ''!

!CefAcceleratedPaintInfo categoriesForClass!External-Data-Structured! !

!CefAcceleratedPaintInfo methodsFor!

extra
	"Answer the <CefAcceleratedPaintInfoCommon> value of the receiver's 'extra' field."

	^CefAcceleratedPaintInfoCommon fromAddress: bytes yourAddress + _OffsetOf_extra!

extra: aCefAcceleratedPaintInfoCommon
	"Set the receiver's 'extra' field to the value of the argument, aCefAcceleratedPaintInfoCommon"

	aCefAcceleratedPaintInfoCommon
		replaceBytesOf: bytes
		from: ##(_OffsetOf_extra + 1)
		to: ##(_OffsetOf_extra + CefAcceleratedPaintInfoCommon basicByteSize)
		startingAt: 1!

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
extra!**compiled accessors**!public! !
extra:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
shared_texture_handle!**compiled accessors**!public! !
shared_texture_handle:!**compiled accessors**!public! !
!

!CefAcceleratedPaintInfo class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #shared_texture_handle type: HANDLEField new;
		defineField: #format type: SDWORDField new;
		defineField: #extra type: (StructureField type: CefAcceleratedPaintInfoCommon)!

getFieldNames
	^#(#cefSize #shared_texture_handle #format #extra)! !

!CefAcceleratedPaintInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

