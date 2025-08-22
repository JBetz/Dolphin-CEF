"Filed out from Dolphin Smalltalk"!

CefExternalStructure subclass: #CefAudioParameters
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_channel_layout _OffsetOf_frames_per_buffer _OffsetOf_sample_rate'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefAudioParameters guid: (GUID fromString: '{238b90e7-a603-407a-882c-77e6c3102f16}')!

CefAudioParameters addClassConstant: '_OffsetOf_channel_layout' value: 16r0!
CefAudioParameters addClassConstant: '_OffsetOf_frames_per_buffer' value: 16r8!
CefAudioParameters addClassConstant: '_OffsetOf_sample_rate' value: 16r4!

CefAudioParameters comment: ''!

!CefAudioParameters categoriesForClass!External-Data-Structured! !

!CefAudioParameters methodsFor!

channel_layout
	"Answer the <Integer> value of the receiver's 'channel_layout' field."

	^bytes sdwordAtOffset: _OffsetOf_channel_layout!

channel_layout: anInteger
	"Set the receiver's 'channel_layout' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_channel_layout put: anInteger!

frames_per_buffer
	"Answer the <Integer> value of the receiver's 'frames_per_buffer' field."

	^bytes sdwordAtOffset: _OffsetOf_frames_per_buffer!

frames_per_buffer: anInteger
	"Set the receiver's 'frames_per_buffer' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_frames_per_buffer put: anInteger!

sample_rate
	"Answer the <Integer> value of the receiver's 'sample_rate' field."

	^bytes sdwordAtOffset: _OffsetOf_sample_rate!

sample_rate: anInteger
	"Set the receiver's 'sample_rate' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_sample_rate put: anInteger! !

!CefAudioParameters categoriesForMethods!
channel_layout!**compiled accessors**!public! !
channel_layout:!**compiled accessors**!public! !
frames_per_buffer!**compiled accessors**!public! !
frames_per_buffer:!**compiled accessors**!public! !
sample_rate!**compiled accessors**!public! !
sample_rate:!**compiled accessors**!public! !
!

!CefAudioParameters class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #channel_layout type: SDWORDField new;
		defineField: #sample_rate type: SDWORDField new;
		defineField: #frames_per_buffer type: SDWORDField new!

getFieldNames
	^#(#channel_layout #sample_rate #frames_per_buffer)! !

!CefAudioParameters class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

