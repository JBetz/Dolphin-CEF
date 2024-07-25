"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefListValue
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_clear _OffsetOf_copy _OffsetOf_get_binary _OffsetOf_get_bool _OffsetOf_get_dictionary _OffsetOf_get_double _OffsetOf_get_int _OffsetOf_get_list _OffsetOf_get_size _OffsetOf_get_string _OffsetOf_get_type _OffsetOf_get_value _OffsetOf_is_equal _OffsetOf_is_owned _OffsetOf_is_read_only _OffsetOf_is_same _OffsetOf_is_valid _OffsetOf_remove _OffsetOf_set_binary _OffsetOf_set_bool _OffsetOf_set_dictionary _OffsetOf_set_double _OffsetOf_set_int _OffsetOf_set_list _OffsetOf_set_null _OffsetOf_set_size _OffsetOf_set_string _OffsetOf_set_value'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefListValue guid: (GUID fromString: '{38735dd6-af61-496d-9ca0-8031f2d53a6a}')!

CefListValue addClassConstant: '_OffsetOf_clear' value: 16r34!
CefListValue addClassConstant: '_OffsetOf_copy' value: 16r28!
CefListValue addClassConstant: '_OffsetOf_get_binary' value: 16r54!
CefListValue addClassConstant: '_OffsetOf_get_bool' value: 16r44!
CefListValue addClassConstant: '_OffsetOf_get_dictionary' value: 16r58!
CefListValue addClassConstant: '_OffsetOf_get_double' value: 16r4C!
CefListValue addClassConstant: '_OffsetOf_get_int' value: 16r48!
CefListValue addClassConstant: '_OffsetOf_get_list' value: 16r5C!
CefListValue addClassConstant: '_OffsetOf_get_size' value: 16r30!
CefListValue addClassConstant: '_OffsetOf_get_string' value: 16r50!
CefListValue addClassConstant: '_OffsetOf_get_type' value: 16r3C!
CefListValue addClassConstant: '_OffsetOf_get_value' value: 16r40!
CefListValue addClassConstant: '_OffsetOf_is_equal' value: 16r24!
CefListValue addClassConstant: '_OffsetOf_is_owned' value: 16r18!
CefListValue addClassConstant: '_OffsetOf_is_read_only' value: 16r1C!
CefListValue addClassConstant: '_OffsetOf_is_same' value: 16r20!
CefListValue addClassConstant: '_OffsetOf_is_valid' value: 16r14!
CefListValue addClassConstant: '_OffsetOf_remove' value: 16r38!
CefListValue addClassConstant: '_OffsetOf_set_binary' value: 16r78!
CefListValue addClassConstant: '_OffsetOf_set_bool' value: 16r68!
CefListValue addClassConstant: '_OffsetOf_set_dictionary' value: 16r7C!
CefListValue addClassConstant: '_OffsetOf_set_double' value: 16r70!
CefListValue addClassConstant: '_OffsetOf_set_int' value: 16r6C!
CefListValue addClassConstant: '_OffsetOf_set_list' value: 16r80!
CefListValue addClassConstant: '_OffsetOf_set_null' value: 16r64!
CefListValue addClassConstant: '_OffsetOf_set_size' value: 16r2C!
CefListValue addClassConstant: '_OffsetOf_set_string' value: 16r74!
CefListValue addClassConstant: '_OffsetOf_set_value' value: 16r60!

CefListValue comment: ''!

!CefListValue categoriesForClass!External-Data-Structured! !

!CefListValue methodsFor!

_callClear_cefListValue: cefListValue
	<stdcall: bool clear CefListValue*>
	^self invalidCall: _failureCode!

_callCopy_cefListValue: cefListValue
	<stdcall: CefListValue* copy CefListValue*>
	^self invalidCall: _failureCode!

_getBinary_cefListValue: cefListValue index: index
	<stdcall: CefBinaryValue* get_binary CefListValue* dword>
	^self invalidCall: _failureCode!

_getBool_cefListValue: cefListValue index: index
	<stdcall: bool get_bool CefListValue* dword>
	^self invalidCall: _failureCode!

_getDictionary_cefListValue: cefListValue index: index
	<stdcall: CefDictionaryValue* get_dictionary CefListValue* dword>
	^self invalidCall: _failureCode!

_getDouble_cefListValue: cefListValue index: index
	<stdcall: double get_double CefListValue* dword>
	^self invalidCall: _failureCode!

_getInt_cefListValue: cefListValue index: index
	<stdcall: sdword get_int CefListValue* dword>
	^self invalidCall: _failureCode!

_getList_cefListValue: cefListValue index: index
	<stdcall: CefListValue* get_list CefListValue* dword>
	^self invalidCall: _failureCode!

_getSize_cefListValue: cefListValue
	<stdcall: dword get_size CefListValue*>
	^self invalidCall: _failureCode!

_getString_cefListValue: cefListValue index: index
	<stdcall: CefStringUserfree* get_string CefListValue* dword>
	^self invalidCall: _failureCode!

_getType_cefListValue: cefListValue index: index
	<stdcall: sdword get_type CefListValue* dword>
	^self invalidCall: _failureCode!

_getValue_cefListValue: cefListValue index: index
	<stdcall: CefValue* get_value CefListValue* dword>
	^self invalidCall: _failureCode!

_isEqual_cefListValue: cefListValue that: that
	<stdcall: bool is_equal CefListValue* CefListValue*>
	^self invalidCall: _failureCode!

_isOwned_cefListValue: cefListValue
	<stdcall: bool is_owned CefListValue*>
	^self invalidCall: _failureCode!

_isReadOnly_cefListValue: cefListValue
	<stdcall: bool is_read_only CefListValue*>
	^self invalidCall: _failureCode!

_isSame_cefListValue: cefListValue that: that
	<stdcall: bool is_same CefListValue* CefListValue*>
	^self invalidCall: _failureCode!

_isValid_cefListValue: cefListValue
	<stdcall: bool is_valid CefListValue*>
	^self invalidCall: _failureCode!

_remove_cefListValue: cefListValue index: index
	<stdcall: sdword remove CefListValue* dword>
	^self invalidCall: _failureCode!

_setBinary_cefListValue: cefListValue index: index value: value
	<stdcall: bool set_binary CefListValue* dword CefBinaryValue*>
	^self invalidCall: _failureCode!

_setBool_cefListValue: cefListValue index: index value: value
	<stdcall: bool set_bool CefListValue* dword bool>
	^self invalidCall: _failureCode!

_setDictionary_cefListValue: cefListValue index: index value: value
	<stdcall: bool set_dictionary CefListValue* dword CefDictionaryValue*>
	^self invalidCall: _failureCode!

_setDouble_cefListValue: cefListValue index: index value: value
	<stdcall: bool set_double CefListValue* dword double>
	^self invalidCall: _failureCode!

_setInt_cefListValue: cefListValue index: index value: value
	<stdcall: bool set_int CefListValue* dword sdword>
	^self invalidCall: _failureCode!

_setList_cefListValue: cefListValue index: index value: value
	<stdcall: bool set_list CefListValue* dword CefListValue*>
	^self invalidCall: _failureCode!

_setNull_cefListValue: cefListValue index: index
	<stdcall: bool set_null CefListValue* dword>
	^self invalidCall: _failureCode!

_setSize_cefListValue: cefListValue size: size
	<stdcall: bool set_size CefListValue* dword>
	^self invalidCall: _failureCode!

_setString_cefListValue: cefListValue index: index value: value
	<stdcall: bool set_string CefListValue* dword CefString*>
	^self invalidCall: _failureCode!

_setValue_cefListValue: cefListValue index: index value: value
	<stdcall: bool set_value CefListValue* dword CefValue*>
	^self invalidCall: _failureCode!

callClear
	| method |
	method := self class externalMethodAt: #_callClear_cefListValue: ifAbsentBindTo: self clear.
	^method value: self withArguments: (Array with: self)!

callCopy
	| method |
	method := self class externalMethodAt: #_callCopy_cefListValue: ifAbsentBindTo: self copy.
	^method value: self withArguments: (Array with: self)!

clear
	"Answer the <ExternalAddress> value of the receiver's 'clear' field."

	^(bytes uintPtrAtOffset: _OffsetOf_clear) asExternalAddress!

clear: anExternalAddress
	"Set the receiver's 'clear' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_clear put: anExternalAddress!

copy
	"Answer the <ExternalAddress> value of the receiver's 'copy' field."

	^(bytes uintPtrAtOffset: _OffsetOf_copy) asExternalAddress!

copy: anExternalAddress
	"Set the receiver's 'copy' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_copy put: anExternalAddress!

get_binary
	"Answer the <ExternalAddress> value of the receiver's 'get_binary' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_binary) asExternalAddress!

get_binary: anExternalAddress
	"Set the receiver's 'get_binary' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_binary put: anExternalAddress!

get_bool
	"Answer the <ExternalAddress> value of the receiver's 'get_bool' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_bool) asExternalAddress!

get_bool: anExternalAddress
	"Set the receiver's 'get_bool' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_bool put: anExternalAddress!

get_dictionary
	"Answer the <ExternalAddress> value of the receiver's 'get_dictionary' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_dictionary) asExternalAddress!

get_dictionary: anExternalAddress
	"Set the receiver's 'get_dictionary' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_dictionary put: anExternalAddress!

get_double
	"Answer the <ExternalAddress> value of the receiver's 'get_double' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_double) asExternalAddress!

get_double: anExternalAddress
	"Set the receiver's 'get_double' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_double put: anExternalAddress!

get_int
	"Answer the <ExternalAddress> value of the receiver's 'get_int' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_int) asExternalAddress!

get_int: anExternalAddress
	"Set the receiver's 'get_int' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_int put: anExternalAddress!

get_list
	"Answer the <ExternalAddress> value of the receiver's 'get_list' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_list) asExternalAddress!

get_list: anExternalAddress
	"Set the receiver's 'get_list' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_list put: anExternalAddress!

get_size
	"Answer the <ExternalAddress> value of the receiver's 'get_size' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_size) asExternalAddress!

get_size: anExternalAddress
	"Set the receiver's 'get_size' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_size put: anExternalAddress!

get_string
	"Answer the <ExternalAddress> value of the receiver's 'get_string' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_string) asExternalAddress!

get_string: anExternalAddress
	"Set the receiver's 'get_string' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_string put: anExternalAddress!

get_type
	"Answer the <ExternalAddress> value of the receiver's 'get_type' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_type) asExternalAddress!

get_type: anExternalAddress
	"Set the receiver's 'get_type' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_type put: anExternalAddress!

get_value
	"Answer the <ExternalAddress> value of the receiver's 'get_value' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_value) asExternalAddress!

get_value: anExternalAddress
	"Set the receiver's 'get_value' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_value put: anExternalAddress!

getBinary_index: index
	| method arguments |
	method := self class externalMethodAt: #_getBinary_cefListValue:index:
				ifAbsentBindTo: self get_binary.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

getBool_index: index
	| method arguments |
	method := self class externalMethodAt: #_getBool_cefListValue:index: ifAbsentBindTo: self get_bool.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

getDictionary_index: index
	| method arguments |
	method := self class externalMethodAt: #_getDictionary_cefListValue:index:
				ifAbsentBindTo: self get_dictionary.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

getDouble_index: index
	| method arguments |
	method := self class externalMethodAt: #_getDouble_cefListValue:index:
				ifAbsentBindTo: self get_double.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

getInt_index: index
	| method arguments |
	method := self class externalMethodAt: #_getInt_cefListValue:index: ifAbsentBindTo: self get_int.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

getList_index: index
	| method arguments |
	method := self class externalMethodAt: #_getList_cefListValue:index: ifAbsentBindTo: self get_list.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

getSize
	| method |
	method := self class externalMethodAt: #_getSize_cefListValue: ifAbsentBindTo: self get_size.
	^method value: self withArguments: (Array with: self)!

getString_index: index
	| method arguments |
	method := self class externalMethodAt: #_getString_cefListValue:index:
				ifAbsentBindTo: self get_string.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

getType_index: index
	| method arguments |
	method := self class externalMethodAt: #_getType_cefListValue:index: ifAbsentBindTo: self get_type.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

getValue_index: index
	| method arguments |
	method := self class externalMethodAt: #_getValue_cefListValue:index: ifAbsentBindTo: self get_value.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

is_equal
	"Answer the <ExternalAddress> value of the receiver's 'is_equal' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_equal) asExternalAddress!

is_equal: anExternalAddress
	"Set the receiver's 'is_equal' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_equal put: anExternalAddress!

is_owned
	"Answer the <ExternalAddress> value of the receiver's 'is_owned' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_owned) asExternalAddress!

is_owned: anExternalAddress
	"Set the receiver's 'is_owned' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_owned put: anExternalAddress!

is_read_only
	"Answer the <ExternalAddress> value of the receiver's 'is_read_only' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_read_only) asExternalAddress!

is_read_only: anExternalAddress
	"Set the receiver's 'is_read_only' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_read_only put: anExternalAddress!

is_same
	"Answer the <ExternalAddress> value of the receiver's 'is_same' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_same) asExternalAddress!

is_same: anExternalAddress
	"Set the receiver's 'is_same' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_same put: anExternalAddress!

is_valid
	"Answer the <ExternalAddress> value of the receiver's 'is_valid' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_valid) asExternalAddress!

is_valid: anExternalAddress
	"Set the receiver's 'is_valid' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_valid put: anExternalAddress!

isEqual_that: that
	| method arguments |
	method := self class externalMethodAt: #_isEqual_cefListValue:that: ifAbsentBindTo: self is_equal.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: that.
	^method value: self withArguments: arguments!

isOwned
	| method |
	method := self class externalMethodAt: #_isOwned_cefListValue: ifAbsentBindTo: self is_owned.
	^method value: self withArguments: (Array with: self)!

isReadOnly
	| method |
	method := self class externalMethodAt: #_isReadOnly_cefListValue: ifAbsentBindTo: self is_read_only.
	^method value: self withArguments: (Array with: self)!

isSame_that: that
	| method arguments |
	method := self class externalMethodAt: #_isSame_cefListValue:that: ifAbsentBindTo: self is_same.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: that.
	^method value: self withArguments: arguments!

isValid
	| method |
	method := self class externalMethodAt: #_isValid_cefListValue: ifAbsentBindTo: self is_valid.
	^method value: self withArguments: (Array with: self)!

remove
	"Answer the <ExternalAddress> value of the receiver's 'remove' field."

	^(bytes uintPtrAtOffset: _OffsetOf_remove) asExternalAddress!

remove: anExternalAddress
	"Set the receiver's 'remove' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_remove put: anExternalAddress!

remove_index: index
	| method arguments |
	method := self class externalMethodAt: #_remove_cefListValue:index: ifAbsentBindTo: self remove.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

set_binary
	"Answer the <ExternalAddress> value of the receiver's 'set_binary' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_binary) asExternalAddress!

set_binary: anExternalAddress
	"Set the receiver's 'set_binary' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_binary put: anExternalAddress!

set_bool
	"Answer the <ExternalAddress> value of the receiver's 'set_bool' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_bool) asExternalAddress!

set_bool: anExternalAddress
	"Set the receiver's 'set_bool' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_bool put: anExternalAddress!

set_dictionary
	"Answer the <ExternalAddress> value of the receiver's 'set_dictionary' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_dictionary) asExternalAddress!

set_dictionary: anExternalAddress
	"Set the receiver's 'set_dictionary' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_dictionary put: anExternalAddress!

set_double
	"Answer the <ExternalAddress> value of the receiver's 'set_double' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_double) asExternalAddress!

set_double: anExternalAddress
	"Set the receiver's 'set_double' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_double put: anExternalAddress!

set_int
	"Answer the <ExternalAddress> value of the receiver's 'set_int' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_int) asExternalAddress!

set_int: anExternalAddress
	"Set the receiver's 'set_int' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_int put: anExternalAddress!

set_list
	"Answer the <ExternalAddress> value of the receiver's 'set_list' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_list) asExternalAddress!

set_list: anExternalAddress
	"Set the receiver's 'set_list' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_list put: anExternalAddress!

set_null
	"Answer the <ExternalAddress> value of the receiver's 'set_null' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_null) asExternalAddress!

set_null: anExternalAddress
	"Set the receiver's 'set_null' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_null put: anExternalAddress!

set_size
	"Answer the <ExternalAddress> value of the receiver's 'set_size' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_size) asExternalAddress!

set_size: anExternalAddress
	"Set the receiver's 'set_size' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_size put: anExternalAddress!

set_string
	"Answer the <ExternalAddress> value of the receiver's 'set_string' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_string) asExternalAddress!

set_string: anExternalAddress
	"Set the receiver's 'set_string' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_string put: anExternalAddress!

set_value
	"Answer the <ExternalAddress> value of the receiver's 'set_value' field."

	^(bytes uintPtrAtOffset: _OffsetOf_set_value) asExternalAddress!

set_value: anExternalAddress
	"Set the receiver's 'set_value' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_set_value put: anExternalAddress!

setBinary_index: index value: value
	| method arguments |
	method := self class externalMethodAt: #_setBinary_cefListValue:index:value:
				ifAbsentBindTo: self set_binary.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: index;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setBool_index: index value: value
	| method arguments |
	method := self class externalMethodAt: #_setBool_cefListValue:index:value:
				ifAbsentBindTo: self set_bool.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: index;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setDictionary_index: index value: value
	| method arguments |
	method := self class externalMethodAt: #_setDictionary_cefListValue:index:value:
				ifAbsentBindTo: self set_dictionary.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: index;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setDouble_index: index value: value
	| method arguments |
	method := self class externalMethodAt: #_setDouble_cefListValue:index:value:
				ifAbsentBindTo: self set_double.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: index;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setInt_index: index value: value
	| method arguments |
	method := self class externalMethodAt: #_setInt_cefListValue:index:value:
				ifAbsentBindTo: self set_int.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: index;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setList_index: index value: value
	| method arguments |
	method := self class externalMethodAt: #_setList_cefListValue:index:value:
				ifAbsentBindTo: self set_list.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: index;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setNull_index: index
	| method arguments |
	method := self class externalMethodAt: #_setNull_cefListValue:index: ifAbsentBindTo: self set_null.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: index.
	^method value: self withArguments: arguments!

setSize_size: size
	| method arguments |
	method := self class externalMethodAt: #_setSize_cefListValue:size: ifAbsentBindTo: self set_size.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: size.
	^method value: self withArguments: arguments!

setString_index: index value: value
	| method arguments |
	method := self class externalMethodAt: #_setString_cefListValue:index:value:
				ifAbsentBindTo: self set_string.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: index;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setValue_index: index value: value
	| method arguments |
	method := self class externalMethodAt: #_setValue_cefListValue:index:value:
				ifAbsentBindTo: self set_value.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: index;
		at: 3 put: value.
	^method value: self withArguments: arguments! !

!CefListValue categoriesForMethods!
_callClear_cefListValue:!**compiled accessors**!private! !
_callCopy_cefListValue:!**compiled accessors**!private! !
_getBinary_cefListValue:index:!**compiled accessors**!private! !
_getBool_cefListValue:index:!**compiled accessors**!private! !
_getDictionary_cefListValue:index:!**compiled accessors**!private! !
_getDouble_cefListValue:index:!**compiled accessors**!private! !
_getInt_cefListValue:index:!**compiled accessors**!private! !
_getList_cefListValue:index:!**compiled accessors**!private! !
_getSize_cefListValue:!**compiled accessors**!private! !
_getString_cefListValue:index:!**compiled accessors**!private! !
_getType_cefListValue:index:!**compiled accessors**!private! !
_getValue_cefListValue:index:!**compiled accessors**!private! !
_isEqual_cefListValue:that:!**compiled accessors**!private! !
_isOwned_cefListValue:!**compiled accessors**!private! !
_isReadOnly_cefListValue:!**compiled accessors**!private! !
_isSame_cefListValue:that:!**compiled accessors**!private! !
_isValid_cefListValue:!**compiled accessors**!private! !
_remove_cefListValue:index:!**compiled accessors**!private! !
_setBinary_cefListValue:index:value:!**compiled accessors**!private! !
_setBool_cefListValue:index:value:!**compiled accessors**!private! !
_setDictionary_cefListValue:index:value:!**compiled accessors**!private! !
_setDouble_cefListValue:index:value:!**compiled accessors**!private! !
_setInt_cefListValue:index:value:!**compiled accessors**!private! !
_setList_cefListValue:index:value:!**compiled accessors**!private! !
_setNull_cefListValue:index:!**compiled accessors**!private! !
_setSize_cefListValue:size:!**compiled accessors**!private! !
_setString_cefListValue:index:value:!**compiled accessors**!private! !
_setValue_cefListValue:index:value:!**compiled accessors**!private! !
callClear!**compiled accessors**!public! !
callCopy!**compiled accessors**!public! !
clear!**compiled accessors**!public! !
clear:!**compiled accessors**!public! !
copy!**compiled accessors**!public! !
copy:!**compiled accessors**!public! !
get_binary!**compiled accessors**!public! !
get_binary:!**compiled accessors**!public! !
get_bool!**compiled accessors**!public! !
get_bool:!**compiled accessors**!public! !
get_dictionary!**compiled accessors**!public! !
get_dictionary:!**compiled accessors**!public! !
get_double!**compiled accessors**!public! !
get_double:!**compiled accessors**!public! !
get_int!**compiled accessors**!public! !
get_int:!**compiled accessors**!public! !
get_list!**compiled accessors**!public! !
get_list:!**compiled accessors**!public! !
get_size!**compiled accessors**!public! !
get_size:!**compiled accessors**!public! !
get_string!**compiled accessors**!public! !
get_string:!**compiled accessors**!public! !
get_type!**compiled accessors**!public! !
get_type:!**compiled accessors**!public! !
get_value!**compiled accessors**!public! !
get_value:!**compiled accessors**!public! !
getBinary_index:!**compiled accessors**!public! !
getBool_index:!**compiled accessors**!public! !
getDictionary_index:!**compiled accessors**!public! !
getDouble_index:!**compiled accessors**!public! !
getInt_index:!**compiled accessors**!public! !
getList_index:!**compiled accessors**!public! !
getSize!**compiled accessors**!public! !
getString_index:!**compiled accessors**!public! !
getType_index:!**compiled accessors**!public! !
getValue_index:!**compiled accessors**!public! !
is_equal!**compiled accessors**!public! !
is_equal:!**compiled accessors**!public! !
is_owned!**compiled accessors**!public! !
is_owned:!**compiled accessors**!public! !
is_read_only!**compiled accessors**!public! !
is_read_only:!**compiled accessors**!public! !
is_same!**compiled accessors**!public! !
is_same:!**compiled accessors**!public! !
is_valid!**compiled accessors**!public! !
is_valid:!**compiled accessors**!public! !
isEqual_that:!**compiled accessors**!public! !
isOwned!**compiled accessors**!public! !
isReadOnly!**compiled accessors**!public! !
isSame_that:!**compiled accessors**!public! !
isValid!**compiled accessors**!public! !
remove!**compiled accessors**!public! !
remove:!**compiled accessors**!public! !
remove_index:!**compiled accessors**!public! !
set_binary!**compiled accessors**!public! !
set_binary:!**compiled accessors**!public! !
set_bool!**compiled accessors**!public! !
set_bool:!**compiled accessors**!public! !
set_dictionary!**compiled accessors**!public! !
set_dictionary:!**compiled accessors**!public! !
set_double!**compiled accessors**!public! !
set_double:!**compiled accessors**!public! !
set_int!**compiled accessors**!public! !
set_int:!**compiled accessors**!public! !
set_list!**compiled accessors**!public! !
set_list:!**compiled accessors**!public! !
set_null!**compiled accessors**!public! !
set_null:!**compiled accessors**!public! !
set_size!**compiled accessors**!public! !
set_size:!**compiled accessors**!public! !
set_string!**compiled accessors**!public! !
set_string:!**compiled accessors**!public! !
set_value!**compiled accessors**!public! !
set_value:!**compiled accessors**!public! !
setBinary_index:value:!**compiled accessors**!public! !
setBool_index:value:!**compiled accessors**!public! !
setDictionary_index:value:!**compiled accessors**!public! !
setDouble_index:value:!**compiled accessors**!public! !
setInt_index:value:!**compiled accessors**!public! !
setList_index:value:!**compiled accessors**!public! !
setNull_index:!**compiled accessors**!public! !
setSize_size:!**compiled accessors**!public! !
setString_index:value:!**compiled accessors**!public! !
setValue_index:value:!**compiled accessors**!public! !
!

!CefListValue class methodsFor!

defineFields
	"CefListValue compileDefinition"

	super defineFields.
	self
		defineField: #is_valid
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue*'));
		defineField: #is_owned
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue*'));
		defineField: #is_read_only
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue*'));
		defineField: #is_same
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* CefListValue*')
					smalltalkName: #isSame_that:);
		defineField: #is_equal
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* CefListValue*')
					smalltalkName: #isEqual_that:);
		defineField: #copy
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefListValue* CefListValue*')
					smalltalkName: #callCopy);
		defineField: #set_size
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword')
					smalltalkName: #setSize_size:);
		defineField: #get_size
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: dword CefListValue*'));
		defineField: #clear
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue*')
					smalltalkName: #callClear);
		defineField: #remove
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefListValue* dword')
					smalltalkName: #remove_index:);
		defineField: #get_type
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefListValue* dword')
					smalltalkName: #getType_index:);
		defineField: #get_value
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefValue* CefListValue* dword')
					smalltalkName: #getValue_index:);
		defineField: #get_bool
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword')
					smalltalkName: #getBool_index:);
		defineField: #get_int
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefListValue* dword')
					smalltalkName: #getInt_index:);
		defineField: #get_double
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: double CefListValue* dword')
					smalltalkName: #getDouble_index:);
		defineField: #get_string
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefListValue* dword')
					smalltalkName: #getString_index:);
		defineField: #get_binary
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefBinaryValue* CefListValue* dword')
					smalltalkName: #getBinary_index:);
		defineField: #get_dictionary
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefDictionaryValue* CefListValue* dword')
					smalltalkName: #getDictionary_index:);
		defineField: #get_list
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefListValue* CefListValue* dword')
					smalltalkName: #getList_index:);
		defineField: #set_value
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword CefValue*')
					smalltalkName: #setValue_index:value:);
		defineField: #set_null
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword')
					smalltalkName: #setNull_index:);
		defineField: #set_bool
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword bool')
					smalltalkName: #setBool_index:value:);
		defineField: #set_int
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword sdword')
					smalltalkName: #setInt_index:value:);
		defineField: #set_double
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword double')
					smalltalkName: #setDouble_index:value:);
		defineField: #set_string
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword CefString*')
					smalltalkName: #setString_index:value:);
		defineField: #set_binary
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword CefBinaryValue*')
					smalltalkName: #setBinary_index:value:);
		defineField: #set_dictionary
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword CefDictionaryValue*')
					smalltalkName: #setDictionary_index:value:);
		defineField: #set_list
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefListValue* dword CefListValue*')
					smalltalkName: #setList_index:value:)!

getFieldNames
	^#(#base #is_valid #is_owned #is_read_only #is_same #is_equal #copy #set_size #get_size #clear #remove #get_type #get_value #get_bool #get_int #get_double #get_string #get_binary #get_dictionary #get_list #set_value #set_null #set_bool #set_int #set_double #set_string #set_binary #set_dictionary #set_list)!

new
	^CefLibrary default listValueCreate! !

!CefListValue class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
new!public! !
!

