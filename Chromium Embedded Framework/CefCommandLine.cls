"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefCommandLine
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_append_argument _OffsetOf_append_switch _OffsetOf_append_switch_with_value _OffsetOf_copy _OffsetOf_get_arguments _OffsetOf_get_argv _OffsetOf_get_command_line_string _OffsetOf_get_program _OffsetOf_get_switch_value _OffsetOf_get_switches _OffsetOf_has_arguments _OffsetOf_has_switch _OffsetOf_has_switches _OffsetOf_init_from_argv _OffsetOf_init_from_string _OffsetOf_is_read_only _OffsetOf_is_valid _OffsetOf_prepend_wrapper _OffsetOf_reset _OffsetOf_set_program'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefCommandLine guid: (GUID fromString: '{18fecbba-af2b-4ba6-9a49-6d2b537236f3}')!
CefCommandLine addClassConstant: '_OffsetOf_append_argument' value: 16r5C!
CefCommandLine addClassConstant: '_OffsetOf_append_switch' value: 16r4C!
CefCommandLine addClassConstant: '_OffsetOf_append_switch_with_value' value: 16r50!
CefCommandLine addClassConstant: '_OffsetOf_copy' value: 16r1C!
CefCommandLine addClassConstant: '_OffsetOf_get_arguments' value: 16r58!
CefCommandLine addClassConstant: '_OffsetOf_get_argv' value: 16r2C!
CefCommandLine addClassConstant: '_OffsetOf_get_command_line_string' value: 16r30!
CefCommandLine addClassConstant: '_OffsetOf_get_program' value: 16r34!
CefCommandLine addClassConstant: '_OffsetOf_get_switch_value' value: 16r44!
CefCommandLine addClassConstant: '_OffsetOf_get_switches' value: 16r48!
CefCommandLine addClassConstant: '_OffsetOf_has_arguments' value: 16r54!
CefCommandLine addClassConstant: '_OffsetOf_has_switch' value: 16r40!
CefCommandLine addClassConstant: '_OffsetOf_has_switches' value: 16r3C!
CefCommandLine addClassConstant: '_OffsetOf_init_from_argv' value: 16r20!
CefCommandLine addClassConstant: '_OffsetOf_init_from_string' value: 16r24!
CefCommandLine addClassConstant: '_OffsetOf_is_read_only' value: 16r18!
CefCommandLine addClassConstant: '_OffsetOf_is_valid' value: 16r14!
CefCommandLine addClassConstant: '_OffsetOf_prepend_wrapper' value: 16r60!
CefCommandLine addClassConstant: '_OffsetOf_reset' value: 16r28!
CefCommandLine addClassConstant: '_OffsetOf_set_program' value: 16r38!
CefCommandLine comment: ''!
!CefCommandLine categoriesForClass!Unclassified! !
!CefCommandLine methodsFor!

_appendSwitch_cefCommandLine: cefCommandLine name: name
	<stdcall: void append_switch CefCommandLine* CefString*>
	^self invalidCall: _failureCode!

_appendSwitchWithValue_cefCommandLine: cefCommandLine name: name value: value
	<stdcall: void append_switch_with_value CefCommandLine* CefString* CefString*>
	^self invalidCall: _failureCode!

_getCommandLineString_cefCommandLine: cefCommandLine
	<stdcall: CefStringUserfree* get_command_line_string CefCommandLine*>
	^self invalidCall: _failureCode!

_isReadOnly_cefCommandLine: cefCommandLine
	<stdcall: sdword is_read_only CefCommandLine*>
	^self invalidCall: _failureCode!

_isValid_cefCommandLine: cefCommandLine
	<stdcall: sdword is_valid CefCommandLine*>
	^self invalidCall: _failureCode!

append_argument
	"Answer the <Integer> value of the receiver's 'append_argument' field."

	^bytes dwordAtOffset: _OffsetOf_append_argument!

append_argument: anInteger
	"Set the receiver's 'append_argument' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_append_argument put: anInteger!

append_switch
	"Answer the <ExternalAddress> value of the receiver's 'append_switch' field."

	^(bytes uintPtrAtOffset: _OffsetOf_append_switch) asExternalAddress!

append_switch: anExternalAddress
	"Set the receiver's 'append_switch' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_append_switch put: anExternalAddress!

append_switch_with_value
	"Answer the <Integer> value of the receiver's 'append_switch_with_value' field."

	^bytes dwordAtOffset: _OffsetOf_append_switch_with_value!

append_switch_with_value: anInteger
	"Set the receiver's 'append_switch_with_value' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_append_switch_with_value put: anInteger!

appendSwitch_name: name
	| method arguments |
	method := self class externalMethodAt: #_appendSwitch_cefCommandLine:name:
				ifAbsentBindTo: self append_switch.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: name.
	^method value: self withArguments: arguments!

appendSwitchWithValue_name: name value: value
	| method arguments |
	method := self class externalMethodAt: #_appendSwitchWithValue_cefCommandLine:name:value:
				ifAbsentBindTo: self append_switch_with_value.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: name;
		at: 3 put: value.
	^method value: self withArguments: arguments!

copy
	"Answer the <Integer> value of the receiver's 'copy' field."

	^bytes dwordAtOffset: _OffsetOf_copy!

copy: anInteger
	"Set the receiver's 'copy' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_copy put: anInteger!

get_arguments
	"Answer the <Integer> value of the receiver's 'get_arguments' field."

	^bytes dwordAtOffset: _OffsetOf_get_arguments!

get_arguments: anInteger
	"Set the receiver's 'get_arguments' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_arguments put: anInteger!

get_argv
	"Answer the <Integer> value of the receiver's 'get_argv' field."

	^bytes dwordAtOffset: _OffsetOf_get_argv!

get_argv: anInteger
	"Set the receiver's 'get_argv' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_argv put: anInteger!

get_command_line_string
	"Answer the <Integer> value of the receiver's 'get_command_line_string' field."

	^bytes dwordAtOffset: _OffsetOf_get_command_line_string!

get_command_line_string: anInteger
	"Set the receiver's 'get_command_line_string' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_command_line_string put: anInteger!

get_program
	"Answer the <Integer> value of the receiver's 'get_program' field."

	^bytes dwordAtOffset: _OffsetOf_get_program!

get_program: anInteger
	"Set the receiver's 'get_program' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_program put: anInteger!

get_switch_value
	"Answer the <Integer> value of the receiver's 'get_switch_value' field."

	^bytes dwordAtOffset: _OffsetOf_get_switch_value!

get_switch_value: anInteger
	"Set the receiver's 'get_switch_value' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_switch_value put: anInteger!

get_switches
	"Answer the <Integer> value of the receiver's 'get_switches' field."

	^bytes dwordAtOffset: _OffsetOf_get_switches!

get_switches: anInteger
	"Set the receiver's 'get_switches' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_switches put: anInteger!

getCommandLineString
	| method |
	method := self class externalMethodAt: #_getCommandLineString_cefCommandLine:
				ifAbsentBindTo: self get_command_line_string.
	^method value: self withArguments: (Array with: self)!

has_arguments
	"Answer the <Integer> value of the receiver's 'has_arguments' field."

	^bytes dwordAtOffset: _OffsetOf_has_arguments!

has_arguments: anInteger
	"Set the receiver's 'has_arguments' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_has_arguments put: anInteger!

has_switch
	"Answer the <Integer> value of the receiver's 'has_switch' field."

	^bytes dwordAtOffset: _OffsetOf_has_switch!

has_switch: anInteger
	"Set the receiver's 'has_switch' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_has_switch put: anInteger!

has_switches
	"Answer the <Integer> value of the receiver's 'has_switches' field."

	^bytes dwordAtOffset: _OffsetOf_has_switches!

has_switches: anInteger
	"Set the receiver's 'has_switches' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_has_switches put: anInteger!

init_from_argv
	"Answer the <Integer> value of the receiver's 'init_from_argv' field."

	^bytes dwordAtOffset: _OffsetOf_init_from_argv!

init_from_argv: anInteger
	"Set the receiver's 'init_from_argv' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_init_from_argv put: anInteger!

init_from_string
	"Answer the <Integer> value of the receiver's 'init_from_string' field."

	^bytes dwordAtOffset: _OffsetOf_init_from_string!

init_from_string: anInteger
	"Set the receiver's 'init_from_string' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_init_from_string put: anInteger!

is_read_only
	"Answer the <Integer> value of the receiver's 'is_read_only' field."

	^bytes dwordAtOffset: _OffsetOf_is_read_only!

is_read_only: anInteger
	"Set the receiver's 'is_read_only' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_read_only put: anInteger!

is_valid
	"Answer the <Integer> value of the receiver's 'is_valid' field."

	^bytes dwordAtOffset: _OffsetOf_is_valid!

is_valid: anInteger
	"Set the receiver's 'is_valid' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_valid put: anInteger!

isReadOnly
	| method |
	method := self class externalMethodAt: #_isReadOnly_cefCommandLine:
				ifAbsentBindTo: self is_read_only.
	^method value: self withArguments: (Array with: self)!

isValid
	| method |
	method := self class externalMethodAt: #_isValid_cefCommandLine: ifAbsentBindTo: self is_valid.
	^method value: self withArguments: (Array with: self)!

prepend_wrapper
	"Answer the <Integer> value of the receiver's 'prepend_wrapper' field."

	^bytes dwordAtOffset: _OffsetOf_prepend_wrapper!

prepend_wrapper: anInteger
	"Set the receiver's 'prepend_wrapper' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_prepend_wrapper put: anInteger!

reset
	"Answer the <Integer> value of the receiver's 'reset' field."

	^bytes dwordAtOffset: _OffsetOf_reset!

reset: anInteger
	"Set the receiver's 'reset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_reset put: anInteger!

set_program
	"Answer the <Integer> value of the receiver's 'set_program' field."

	^bytes dwordAtOffset: _OffsetOf_set_program!

set_program: anInteger
	"Set the receiver's 'set_program' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_set_program put: anInteger! !
!CefCommandLine categoriesForMethods!
_appendSwitch_cefCommandLine:name:!**compiled accessors**!private! !
_appendSwitchWithValue_cefCommandLine:name:value:!**compiled accessors**!private! !
_getCommandLineString_cefCommandLine:!**compiled accessors**!private! !
_isReadOnly_cefCommandLine:!**compiled accessors**!private! !
_isValid_cefCommandLine:!**compiled accessors**!private! !
append_argument!public! !
append_argument:!public! !
append_switch!public! !
append_switch:!public! !
append_switch_with_value!public! !
append_switch_with_value:!public! !
appendSwitch_name:!**compiled accessors**!public! !
appendSwitchWithValue_name:value:!**compiled accessors**!public! !
copy!public! !
copy:!public! !
get_arguments!public! !
get_arguments:!public! !
get_argv!public! !
get_argv:!public! !
get_command_line_string!public! !
get_command_line_string:!public! !
get_program!public! !
get_program:!public! !
get_switch_value!public! !
get_switch_value:!public! !
get_switches!public! !
get_switches:!public! !
getCommandLineString!**compiled accessors**!public! !
has_arguments!public! !
has_arguments:!public! !
has_switch!public! !
has_switch:!public! !
has_switches!public! !
has_switches:!public! !
init_from_argv!public! !
init_from_argv:!public! !
init_from_string!public! !
init_from_string:!public! !
is_read_only!public! !
is_read_only:!public! !
is_valid!public! !
is_valid:!public! !
isReadOnly!**compiled accessors**!public! !
isValid!**compiled accessors**!public! !
prepend_wrapper!public! !
prepend_wrapper:!public! !
reset!public! !
reset:!public! !
set_program!public! !
set_program:!public! !
!

!CefCommandLine class methodsFor!

defineFields
	"CefCommandLine compileDefinition"

	super defineFields.
	self
		defineField: #is_valid
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefCommandLine*'));
		defineField: #is_read_only
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefCommandLine*'));
		defineField: #copy type: DWORDField new;
		defineField: #init_from_argv type: DWORDField new;
		defineField: #init_from_string type: DWORDField new;
		defineField: #reset type: DWORDField new;
		defineField: #get_argv type: DWORDField new;
		defineField: #get_command_line_string
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefCommandLine*'));
		defineField: #get_program type: DWORDField new;
		defineField: #set_program type: DWORDField new;
		defineField: #has_switches type: DWORDField new;
		defineField: #has_switch type: DWORDField new;
		defineField: #get_switch_value type: DWORDField new;
		defineField: #get_switches type: DWORDField new;
		defineField: #append_switch
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefCommandLine* CefString*')
					smalltalkName: #appendSwitch_name:);
		defineField: #append_switch_with_value
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefCommandLine* CefString* CefString*')
					smalltalkName: #appendSwitchWithValue_name:value:);
		defineField: #has_arguments type: DWORDField new;
		defineField: #get_arguments type: DWORDField new;
		defineField: #append_argument type: DWORDField new;
		defineField: #prepend_wrapper type: DWORDField new!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref #is_valid #is_read_only #copy #init_from_argv #init_from_string #reset #get_argv #get_command_line_string #get_program #set_program #has_switches #has_switch #get_switch_value #get_switches #append_switch #append_switch_with_value #has_arguments #get_arguments #append_argument #prepend_wrapper)! !
!CefCommandLine class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

