"Filed out from Dolphin Smalltalk"!

CefExternalStructure subclass: #CefTaskInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cefSize _OffsetOf_cpu_usage _OffsetOf_gpu_memory _OffsetOf_id _OffsetOf_is_gpu_memory_inflated _OffsetOf_is_killable _OffsetOf_memory _OffsetOf_number_of_processors _OffsetOf_title _OffsetOf_type'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefTaskInfo guid: (GUID fromString: '{086868c2-90ff-42fc-8d11-01538ba7d8bc}')!

CefTaskInfo addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefTaskInfo addClassConstant: '_OffsetOf_cpu_usage' value: 16r28!
CefTaskInfo addClassConstant: '_OffsetOf_gpu_memory' value: 16r40!
CefTaskInfo addClassConstant: '_OffsetOf_id' value: 16r8!
CefTaskInfo addClassConstant: '_OffsetOf_is_gpu_memory_inflated' value: 16r48!
CefTaskInfo addClassConstant: '_OffsetOf_is_killable' value: 16r14!
CefTaskInfo addClassConstant: '_OffsetOf_memory' value: 16r38!
CefTaskInfo addClassConstant: '_OffsetOf_number_of_processors' value: 16r30!
CefTaskInfo addClassConstant: '_OffsetOf_title' value: 16r18!
CefTaskInfo addClassConstant: '_OffsetOf_type' value: 16r10!

CefTaskInfo comment: ''!

!CefTaskInfo categoriesForClass!External-Data-Structured! !

!CefTaskInfo methodsFor!

cpu_usage
	"Answer the <Float> value of the receiver's 'cpu_usage' field."

	^bytes doubleAtOffset: _OffsetOf_cpu_usage!

cpu_usage: aFloat
	"Set the receiver's 'cpu_usage' field to the value of the argument, aFloat"

	bytes doubleAtOffset: _OffsetOf_cpu_usage put: aFloat!

gpu_memory
	"Answer the <Integer> value of the receiver's 'gpu_memory' field."

	^bytes sqwordAtOffset: _OffsetOf_gpu_memory!

gpu_memory: anInteger
	"Set the receiver's 'gpu_memory' field to the value of the argument, anInteger"

	bytes sqwordAtOffset: _OffsetOf_gpu_memory put: anInteger!

id
	"Answer the <Integer> value of the receiver's 'id' field."

	^bytes sqwordAtOffset: _OffsetOf_id!

id: anInteger
	"Set the receiver's 'id' field to the value of the argument, anInteger"

	bytes sqwordAtOffset: _OffsetOf_id put: anInteger!

is_gpu_memory_inflated
	"Answer the <Integer> value of the receiver's 'is_gpu_memory_inflated' field."

	^bytes sdwordAtOffset: _OffsetOf_is_gpu_memory_inflated!

is_gpu_memory_inflated: anInteger
	"Set the receiver's 'is_gpu_memory_inflated' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_is_gpu_memory_inflated put: anInteger!

is_killable
	"Answer the <Integer> value of the receiver's 'is_killable' field."

	^bytes sdwordAtOffset: _OffsetOf_is_killable!

is_killable: anInteger
	"Set the receiver's 'is_killable' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_is_killable put: anInteger!

memory
	"Answer the <Integer> value of the receiver's 'memory' field."

	^bytes sqwordAtOffset: _OffsetOf_memory!

memory: anInteger
	"Set the receiver's 'memory' field to the value of the argument, anInteger"

	bytes sqwordAtOffset: _OffsetOf_memory put: anInteger!

number_of_processors
	"Answer the <Integer> value of the receiver's 'number_of_processors' field."

	^bytes sdwordAtOffset: _OffsetOf_number_of_processors!

number_of_processors: anInteger
	"Set the receiver's 'number_of_processors' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_number_of_processors put: anInteger!

title
	"Answer the <CefString> value of the receiver's 'title' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_title!

title: aCefString
	"Set the receiver's 'title' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_title + 1)
		to: ##(_OffsetOf_title + CefString basicByteSize)
		startingAt: 1!

type
	"Answer the <Integer> value of the receiver's 'type' field."

	^bytes sdwordAtOffset: _OffsetOf_type!

type: anInteger
	"Set the receiver's 'type' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_type put: anInteger! !

!CefTaskInfo categoriesForMethods!
cpu_usage!**compiled accessors**!public! !
cpu_usage:!**compiled accessors**!public! !
gpu_memory!**compiled accessors**!public! !
gpu_memory:!**compiled accessors**!public! !
id!**compiled accessors**!public! !
id:!**compiled accessors**!public! !
is_gpu_memory_inflated!**compiled accessors**!public! !
is_gpu_memory_inflated:!**compiled accessors**!public! !
is_killable!**compiled accessors**!public! !
is_killable:!**compiled accessors**!public! !
memory!**compiled accessors**!public! !
memory:!**compiled accessors**!public! !
number_of_processors!**compiled accessors**!public! !
number_of_processors:!**compiled accessors**!public! !
title!**compiled accessors**!public! !
title:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
!

!CefTaskInfo class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #id type: SQWORDField new;
		defineField: #type type: SDWORDField new;
		defineField: #is_killable type: SDWORDField new;
		defineField: #title type: (StructureField type: CefString);
		defineField: #cpu_usage type: DOUBLEField new;
		defineField: #number_of_processors type: SDWORDField new;
		defineField: #memory type: SQWORDField new;
		defineField: #gpu_memory type: SQWORDField new;
		defineField: #is_gpu_memory_inflated type: SDWORDField new!

getFieldNames
	^#(#cefSize #id #type #is_killable #title #cpu_usage #number_of_processors #memory #gpu_memory #is_gpu_memory_inflated)! !

!CefTaskInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

