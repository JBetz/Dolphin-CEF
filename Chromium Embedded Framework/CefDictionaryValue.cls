"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefDictionaryValue
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_clear _OffsetOf_copy _OffsetOf_get_binary _OffsetOf_get_bool _OffsetOf_get_dictionary _OffsetOf_get_double _OffsetOf_get_int _OffsetOf_get_keys _OffsetOf_get_list _OffsetOf_get_size _OffsetOf_get_string _OffsetOf_get_type _OffsetOf_get_value _OffsetOf_has_key _OffsetOf_is_equal _OffsetOf_is_owned _OffsetOf_is_read_only _OffsetOf_is_same _OffsetOf_is_valid _OffsetOf_remove _OffsetOf_set_binary _OffsetOf_set_bool _OffsetOf_set_dictionary _OffsetOf_set_double _OffsetOf_set_int _OffsetOf_set_list _OffsetOf_set_null _OffsetOf_set_string _OffsetOf_set_value'
	poolDictionaries: 'CefConstants'
	classInstanceVariableNames: ''!

CefDictionaryValue guid: (GUID fromString: '{859f8717-86af-4fe4-8484-7078c1c9fce7}')!

CefDictionaryValue addClassConstant: '_OffsetOf_clear' value: 16r30!
CefDictionaryValue addClassConstant: '_OffsetOf_copy' value: 16r28!
CefDictionaryValue addClassConstant: '_OffsetOf_get_binary' value: 16r58!
CefDictionaryValue addClassConstant: '_OffsetOf_get_bool' value: 16r48!
CefDictionaryValue addClassConstant: '_OffsetOf_get_dictionary' value: 16r5C!
CefDictionaryValue addClassConstant: '_OffsetOf_get_double' value: 16r50!
CefDictionaryValue addClassConstant: '_OffsetOf_get_int' value: 16r4C!
CefDictionaryValue addClassConstant: '_OffsetOf_get_keys' value: 16r38!
CefDictionaryValue addClassConstant: '_OffsetOf_get_list' value: 16r60!
CefDictionaryValue addClassConstant: '_OffsetOf_get_size' value: 16r2C!
CefDictionaryValue addClassConstant: '_OffsetOf_get_string' value: 16r54!
CefDictionaryValue addClassConstant: '_OffsetOf_get_type' value: 16r40!
CefDictionaryValue addClassConstant: '_OffsetOf_get_value' value: 16r44!
CefDictionaryValue addClassConstant: '_OffsetOf_has_key' value: 16r34!
CefDictionaryValue addClassConstant: '_OffsetOf_is_equal' value: 16r24!
CefDictionaryValue addClassConstant: '_OffsetOf_is_owned' value: 16r18!
CefDictionaryValue addClassConstant: '_OffsetOf_is_read_only' value: 16r1C!
CefDictionaryValue addClassConstant: '_OffsetOf_is_same' value: 16r20!
CefDictionaryValue addClassConstant: '_OffsetOf_is_valid' value: 16r14!
CefDictionaryValue addClassConstant: '_OffsetOf_remove' value: 16r3C!
CefDictionaryValue addClassConstant: '_OffsetOf_set_binary' value: 16r7C!
CefDictionaryValue addClassConstant: '_OffsetOf_set_bool' value: 16r6C!
CefDictionaryValue addClassConstant: '_OffsetOf_set_dictionary' value: 16r80!
CefDictionaryValue addClassConstant: '_OffsetOf_set_double' value: 16r74!
CefDictionaryValue addClassConstant: '_OffsetOf_set_int' value: 16r70!
CefDictionaryValue addClassConstant: '_OffsetOf_set_list' value: 16r84!
CefDictionaryValue addClassConstant: '_OffsetOf_set_null' value: 16r68!
CefDictionaryValue addClassConstant: '_OffsetOf_set_string' value: 16r78!
CefDictionaryValue addClassConstant: '_OffsetOf_set_value' value: 16r64!

CefDictionaryValue comment: ''!

!CefDictionaryValue categoriesForClass!External-Data-Structured! !

!CefDictionaryValue methodsFor!

_callClear_cefDictionaryValue: cefDictionaryValue
	<stdcall: bool clear CefDictionaryValue*>
	^self invalidCall: _failureCode!

_copy_cefDictionaryValue: cefDictionaryValue excludeEmptyChildren: excludeEmptyChildren
	<stdcall: CefDictionaryValue* copy CefDictionaryValue* bool>
	^self invalidCall: _failureCode!

_getBinary_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: CefBinaryValue* get_binary CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_getBool_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: bool get_bool CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_getDictionary_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: CefDictionaryValue* get_dictionary CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_getDouble_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: double get_double CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_getInt_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: sdword get_int CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_getKeys_cefDictionaryValue: cefDictionaryValue keys: keys
	<stdcall: bool get_keys CefDictionaryValue* CefStringList*>
	^self invalidCall: _failureCode!

_getList_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: CefListValue* get_list CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_getSize_cefDictionaryValue: cefDictionaryValue
	<stdcall: dword get_size CefDictionaryValue*>
	^self invalidCall: _failureCode!

_getString_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: CefStringUserfree* get_string CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_getType_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: sdword get_type CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_getValue_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: CefValue* get_value CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_hasKey_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: bool has_key CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_isEqual_cefDictionaryValue: cefDictionaryValue that: that
	<stdcall: bool is_equal CefDictionaryValue* CefDictionaryValue*>
	^self invalidCall: _failureCode!

_isOwned_cefDictionaryValue: cefDictionaryValue
	<stdcall: bool is_owned CefDictionaryValue*>
	^self invalidCall: _failureCode!

_isReadOnly_cefDictionaryValue: cefDictionaryValue
	<stdcall: bool is_read_only CefDictionaryValue*>
	^self invalidCall: _failureCode!

_isSame_cefDictionaryValue: cefDictionaryValue that: that
	<stdcall: bool is_same CefDictionaryValue* CefDictionaryValue*>
	^self invalidCall: _failureCode!

_isValid_cefDictionaryValue: cefDictionaryValue
	<stdcall: bool is_valid CefDictionaryValue*>
	^self invalidCall: _failureCode!

_remove_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: bool remove CefDictionaryValue* CefString*>
	^self invalidCall: _failureCode!

_setBinary_cefDictionaryValue: cefDictionaryValue key: key value: value
	<stdcall: bool set_binary CefDictionaryValue* CefString* CefBinaryValue*>
	^self invalidCall: _failureCode!

_setBool_cefDictionaryValue: cefDictionaryValue key: key value: value
	<stdcall: bool set_bool CefDictionaryValue* CefString* bool>
	^self invalidCall: _failureCode!

_setDictionary_cefDictionaryValue: cefDictionaryValue key: key value: value
	<stdcall: bool set_dictionary CefDictionaryValue* CefString* CefDictionaryValue*>
	^self invalidCall: _failureCode!

_setDouble_cefDictionaryValue: cefDictionaryValue key: key value: value
	<stdcall: bool set_double CefDictionaryValue* CefString* double>
	^self invalidCall: _failureCode!

_setInt_cefDictionaryValue: cefDictionaryValue key: key value: value
	<stdcall: bool set_int CefDictionaryValue* CefString* sdword>
	^self invalidCall: _failureCode!

_setList_cefDictionaryValue: cefDictionaryValue key: key value: value
	<stdcall: bool set_list CefDictionaryValue* CefString* CefDictionaryValue*>
	^self invalidCall: _failureCode!

_setNull_cefDictionaryValue: cefDictionaryValue key: key
	<stdcall: bool set_null CefDictionaryValue* dword>
	^self invalidCall: _failureCode!

_setString_cefDictionaryValue: cefDictionaryValue key: key value: value
	<stdcall: bool set_string CefDictionaryValue* CefString* CefString*>
	^self invalidCall: _failureCode!

_setValue_cefDictionaryValue: cefDictionaryValue key: key value: value
	<stdcall: bool set_value CefDictionaryValue* CefString* CefValue*>
	^self invalidCall: _failureCode!

at: aString
	| cefKey hasKey type |
	cefKey := aString asCefString.
	hasKey := self hasKey_key: cefKey.
	hasKey ifFalse: [^nil].
	type := self getType_key: cefKey.
	type = VTYPE_INVALID ifTrue: [^nil].
	type = VTYPE_NULL ifTrue: [^nil].
	type = VTYPE_BOOL ifTrue: [^self getBool_key: cefKey].
	type = VTYPE_INT ifTrue: [^self getInt_key: cefKey].
	type = VTYPE_DOUBLE ifTrue: [^self getDouble_key: cefKey].
	type = VTYPE_STRING
		ifTrue: 
			[| string |
			string := self getString_key: cefKey.
			^string isNull ifTrue: [nil] ifFalse: [string str]].
	type = VTYPE_BINARY ifTrue: [^self getBinary_key: cefKey].
	type = VTYPE_DICTIONARY ifTrue: [^self getDictionary_key: cefKey].
	type = VTYPE_LIST ifTrue: [^self getList_key: cefKey].
	^nil!

callClear
	| method |
	method := self class externalMethodAt: #_callClear_cefDictionaryValue: ifAbsentBindTo: self clear.
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

copy_excludeEmptyChildren: excludeEmptyChildren
	| method arguments |
	method := self class externalMethodAt: #_copy_cefDictionaryValue:excludeEmptyChildren:
				ifAbsentBindTo: self copy.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: excludeEmptyChildren.
	^method value: self withArguments: arguments!

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

get_keys
	"Answer the <ExternalAddress> value of the receiver's 'get_keys' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_keys) asExternalAddress!

get_keys: anExternalAddress
	"Set the receiver's 'get_keys' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_keys put: anExternalAddress!

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

getBinary_key: key
	| method arguments |
	method := self class externalMethodAt: #_getBinary_cefDictionaryValue:key:
				ifAbsentBindTo: self get_binary.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

getBool_key: key
	| method arguments |
	method := self class externalMethodAt: #_getBool_cefDictionaryValue:key:
				ifAbsentBindTo: self get_bool.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

getDictionary_key: key
	| method arguments |
	method := self class externalMethodAt: #_getDictionary_cefDictionaryValue:key:
				ifAbsentBindTo: self get_dictionary.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

getDouble_key: key
	| method arguments |
	method := self class externalMethodAt: #_getDouble_cefDictionaryValue:key:
				ifAbsentBindTo: self get_double.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

getInt_key: key
	| method arguments |
	method := self class externalMethodAt: #_getInt_cefDictionaryValue:key: ifAbsentBindTo: self get_int.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

getKeys_keys: keys
	| method arguments |
	method := self class externalMethodAt: #_getKeys_cefDictionaryValue:keys:
				ifAbsentBindTo: self get_keys.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: keys.
	^method value: self withArguments: arguments!

getList_key: key
	| method arguments |
	method := self class externalMethodAt: #_getList_cefDictionaryValue:key:
				ifAbsentBindTo: self get_list.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

getSize
	| method |
	method := self class externalMethodAt: #_getSize_cefDictionaryValue: ifAbsentBindTo: self get_size.
	^method value: self withArguments: (Array with: self)!

getString_key: key
	| method arguments |
	method := self class externalMethodAt: #_getString_cefDictionaryValue:key:
				ifAbsentBindTo: self get_string.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

getType_key: key
	| method arguments |
	method := self class externalMethodAt: #_getType_cefDictionaryValue:key:
				ifAbsentBindTo: self get_type.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

getValue_key: key
	| method arguments |
	method := self class externalMethodAt: #_getValue_cefDictionaryValue:key:
				ifAbsentBindTo: self get_value.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

has_key
	"Answer the <ExternalAddress> value of the receiver's 'has_key' field."

	^(bytes uintPtrAtOffset: _OffsetOf_has_key) asExternalAddress!

has_key: anExternalAddress
	"Set the receiver's 'has_key' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_has_key put: anExternalAddress!

hasKey_key: key
	| method arguments |
	method := self class externalMethodAt: #_hasKey_cefDictionaryValue:key: ifAbsentBindTo: self has_key.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
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

isEmpty
	^self getSize = 0!

isEqual_that: that
	| method arguments |
	method := self class externalMethodAt: #_isEqual_cefDictionaryValue:that:
				ifAbsentBindTo: self is_equal.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: that.
	^method value: self withArguments: arguments!

isOwned
	| method |
	method := self class externalMethodAt: #_isOwned_cefDictionaryValue: ifAbsentBindTo: self is_owned.
	^method value: self withArguments: (Array with: self)!

isReadOnly
	| method |
	method := self class externalMethodAt: #_isReadOnly_cefDictionaryValue:
				ifAbsentBindTo: self is_read_only.
	^method value: self withArguments: (Array with: self)!

isSame_that: that
	| method arguments |
	method := self class externalMethodAt: #_isSame_cefDictionaryValue:that:
				ifAbsentBindTo: self is_same.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: that.
	^method value: self withArguments: arguments!

isValid
	| method |
	method := self class externalMethodAt: #_isValid_cefDictionaryValue: ifAbsentBindTo: self is_valid.
	^method value: self withArguments: (Array with: self)!

remove
	"Answer the <ExternalAddress> value of the receiver's 'remove' field."

	^(bytes uintPtrAtOffset: _OffsetOf_remove) asExternalAddress!

remove: anExternalAddress
	"Set the receiver's 'remove' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_remove put: anExternalAddress!

remove_key: key
	| method arguments |
	method := self class externalMethodAt: #_remove_cefDictionaryValue:key: ifAbsentBindTo: self remove.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
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

setBinary_key: key value: value
	| method arguments |
	method := self class externalMethodAt: #_setBinary_cefDictionaryValue:key:value:
				ifAbsentBindTo: self set_binary.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: key;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setBool_key: key value: value
	| method arguments |
	method := self class externalMethodAt: #_setBool_cefDictionaryValue:key:value:
				ifAbsentBindTo: self set_bool.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: key;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setDictionary_key: key value: value
	| method arguments |
	method := self class externalMethodAt: #_setDictionary_cefDictionaryValue:key:value:
				ifAbsentBindTo: self set_dictionary.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: key;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setDouble_key: key value: value
	| method arguments |
	method := self class externalMethodAt: #_setDouble_cefDictionaryValue:key:value:
				ifAbsentBindTo: self set_double.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: key;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setInt_key: key value: value
	| method arguments |
	method := self class externalMethodAt: #_setInt_cefDictionaryValue:key:value:
				ifAbsentBindTo: self set_int.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: key;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setList_key: key value: value
	| method arguments |
	method := self class externalMethodAt: #_setList_cefDictionaryValue:key:value:
				ifAbsentBindTo: self set_list.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: key;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setNull_key: key
	| method arguments |
	method := self class externalMethodAt: #_setNull_cefDictionaryValue:key:
				ifAbsentBindTo: self set_null.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: key.
	^method value: self withArguments: arguments!

setString_key: key value: value
	| method arguments |
	method := self class externalMethodAt: #_setString_cefDictionaryValue:key:value:
				ifAbsentBindTo: self set_string.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: key;
		at: 3 put: value.
	^method value: self withArguments: arguments!

setValue_key: key value: value
	| method arguments |
	method := self class externalMethodAt: #_setValue_cefDictionaryValue:key:value:
				ifAbsentBindTo: self set_value.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: key;
		at: 3 put: value.
	^method value: self withArguments: arguments! !

!CefDictionaryValue categoriesForMethods!
_callClear_cefDictionaryValue:!**compiled accessors**!private! !
_copy_cefDictionaryValue:excludeEmptyChildren:!**compiled accessors**!private! !
_getBinary_cefDictionaryValue:key:!**compiled accessors**!private! !
_getBool_cefDictionaryValue:key:!**compiled accessors**!private! !
_getDictionary_cefDictionaryValue:key:!**compiled accessors**!private! !
_getDouble_cefDictionaryValue:key:!**compiled accessors**!private! !
_getInt_cefDictionaryValue:key:!**compiled accessors**!private! !
_getKeys_cefDictionaryValue:keys:!**compiled accessors**!private! !
_getList_cefDictionaryValue:key:!**compiled accessors**!private! !
_getSize_cefDictionaryValue:!**compiled accessors**!private! !
_getString_cefDictionaryValue:key:!**compiled accessors**!private! !
_getType_cefDictionaryValue:key:!**compiled accessors**!private! !
_getValue_cefDictionaryValue:key:!**compiled accessors**!private! !
_hasKey_cefDictionaryValue:key:!**compiled accessors**!private! !
_isEqual_cefDictionaryValue:that:!**compiled accessors**!private! !
_isOwned_cefDictionaryValue:!**compiled accessors**!private! !
_isReadOnly_cefDictionaryValue:!**compiled accessors**!private! !
_isSame_cefDictionaryValue:that:!**compiled accessors**!private! !
_isValid_cefDictionaryValue:!**compiled accessors**!private! !
_remove_cefDictionaryValue:key:!**compiled accessors**!private! !
_setBinary_cefDictionaryValue:key:value:!**compiled accessors**!private! !
_setBool_cefDictionaryValue:key:value:!**compiled accessors**!private! !
_setDictionary_cefDictionaryValue:key:value:!**compiled accessors**!private! !
_setDouble_cefDictionaryValue:key:value:!**compiled accessors**!private! !
_setInt_cefDictionaryValue:key:value:!**compiled accessors**!private! !
_setList_cefDictionaryValue:key:value:!**compiled accessors**!private! !
_setNull_cefDictionaryValue:key:!**compiled accessors**!private! !
_setString_cefDictionaryValue:key:value:!**compiled accessors**!private! !
_setValue_cefDictionaryValue:key:value:!**compiled accessors**!private! !
at:!public! !
callClear!**compiled accessors**!public! !
clear!**compiled accessors**!public! !
clear:!**compiled accessors**!public! !
copy!**compiled accessors**!public! !
copy:!**compiled accessors**!public! !
copy_excludeEmptyChildren:!**compiled accessors**!public! !
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
get_keys!**compiled accessors**!public! !
get_keys:!**compiled accessors**!public! !
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
getBinary_key:!**compiled accessors**!public! !
getBool_key:!**compiled accessors**!public! !
getDictionary_key:!**compiled accessors**!public! !
getDouble_key:!**compiled accessors**!public! !
getInt_key:!**compiled accessors**!public! !
getKeys_keys:!**compiled accessors**!public! !
getList_key:!**compiled accessors**!public! !
getSize!**compiled accessors**!public! !
getString_key:!**compiled accessors**!public! !
getType_key:!**compiled accessors**!public! !
getValue_key:!**compiled accessors**!public! !
has_key!**compiled accessors**!public! !
has_key:!**compiled accessors**!public! !
hasKey_key:!**compiled accessors**!public! !
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
isEmpty!public! !
isEqual_that:!**compiled accessors**!public! !
isOwned!**compiled accessors**!public! !
isReadOnly!**compiled accessors**!public! !
isSame_that:!**compiled accessors**!public! !
isValid!**compiled accessors**!public! !
remove!**compiled accessors**!public! !
remove:!**compiled accessors**!public! !
remove_key:!**compiled accessors**!public! !
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
set_string!**compiled accessors**!public! !
set_string:!**compiled accessors**!public! !
set_value!**compiled accessors**!public! !
set_value:!**compiled accessors**!public! !
setBinary_key:value:!**compiled accessors**!public! !
setBool_key:value:!**compiled accessors**!public! !
setDictionary_key:value:!**compiled accessors**!public! !
setDouble_key:value:!**compiled accessors**!public! !
setInt_key:value:!**compiled accessors**!public! !
setList_key:value:!**compiled accessors**!public! !
setNull_key:!**compiled accessors**!public! !
setString_key:value:!**compiled accessors**!public! !
setValue_key:value:!**compiled accessors**!public! !
!

!CefDictionaryValue class methodsFor!

defineFields
	"CefDictionaryValue compileDefinition"

	super defineFields.
	self
		defineField: #is_valid
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue*'));
		defineField: #is_owned
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue*'));
		defineField: #is_read_only
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue*'));
		defineField: #is_same
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefDictionaryValue*')
					smalltalkName: #isSame_that:);
		defineField: #is_equal
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefDictionaryValue*')
					smalltalkName: #isEqual_that:);
		defineField: #copy
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefDictionaryValue* CefDictionaryValue* bool')
					smalltalkName: #copy_excludeEmptyChildren:);
		defineField: #get_size
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: dword CefDictionaryValue*'));
		defineField: #clear
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue*')
					smalltalkName: #callClear);
		defineField: #has_key
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString*')
					smalltalkName: #hasKey_key:);
		defineField: #get_keys
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefStringList*')
					smalltalkName: #getKeys_keys:);
		defineField: #remove
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString*')
					smalltalkName: #remove_key:);
		defineField: #get_type
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefDictionaryValue* CefString*')
					smalltalkName: #getType_key:);
		defineField: #get_value
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefValue* CefDictionaryValue* CefString*')
					smalltalkName: #getValue_key:);
		defineField: #get_bool
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString*')
					smalltalkName: #getBool_key:);
		defineField: #get_int
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefDictionaryValue* CefString*')
					smalltalkName: #getInt_key:);
		defineField: #get_double
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: double CefDictionaryValue* CefString*')
					smalltalkName: #getDouble_key:);
		defineField: #get_string
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefDictionaryValue* CefString*')
					smalltalkName: #getString_key:);
		defineField: #get_binary
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefBinaryValue* CefDictionaryValue* CefString*')
					smalltalkName: #getBinary_key:);
		defineField: #get_dictionary
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefDictionaryValue* CefDictionaryValue* CefString*')
					smalltalkName: #getDictionary_key:);
		defineField: #get_list
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefListValue* CefDictionaryValue* CefString*')
					smalltalkName: #getList_key:);
		defineField: #set_value
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString* CefValue*')
					smalltalkName: #setValue_key:value:);
		defineField: #set_null
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* dword')
					smalltalkName: #setNull_key:);
		defineField: #set_bool
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString* bool')
					smalltalkName: #setBool_key:value:);
		defineField: #set_int
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString* sdword')
					smalltalkName: #setInt_key:value:);
		defineField: #set_double
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString* double')
					smalltalkName: #setDouble_key:value:);
		defineField: #set_string
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString* CefString*')
					smalltalkName: #setString_key:value:);
		defineField: #set_binary
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString* CefBinaryValue*')
					smalltalkName: #setBinary_key:value:);
		defineField: #set_dictionary
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString* CefDictionaryValue*')
					smalltalkName: #setDictionary_key:value:);
		defineField: #set_list
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDictionaryValue* CefString* CefDictionaryValue*')
					smalltalkName: #setList_key:value:)!

getFieldNames
	^#(#base #is_valid #is_owned #is_read_only #is_same #is_equal #copy #get_size #clear #has_key #get_keys #remove #get_type #get_value #get_bool #get_int #get_double #get_string #get_binary #get_dictionary #get_list #set_value #set_null #set_bool #set_int #set_double #set_string #set_binary #set_dictionary #set_list)! !

!CefDictionaryValue class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

