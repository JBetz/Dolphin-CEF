"Filed out from Dolphin Smalltalk"!

CefExternalStructure subclass: #CefUrlParts
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_fragment _OffsetOf_host _OffsetOf_origin _OffsetOf_password _OffsetOf_path _OffsetOf_port _OffsetOf_query _OffsetOf_scheme _OffsetOf_spec _OffsetOf_username'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefUrlParts guid: (GUID fromString: '{5835f6f5-3db0-474a-b530-b50df424ad5a}')!

CefUrlParts addClassConstant: '_OffsetOf_fragment' value: 16r70!
CefUrlParts addClassConstant: '_OffsetOf_host' value: 16r34!
CefUrlParts addClassConstant: '_OffsetOf_origin' value: 16r4C!
CefUrlParts addClassConstant: '_OffsetOf_password' value: 16r28!
CefUrlParts addClassConstant: '_OffsetOf_path' value: 16r58!
CefUrlParts addClassConstant: '_OffsetOf_port' value: 16r40!
CefUrlParts addClassConstant: '_OffsetOf_query' value: 16r64!
CefUrlParts addClassConstant: '_OffsetOf_scheme' value: 16r10!
CefUrlParts addClassConstant: '_OffsetOf_spec' value: 16r4!
CefUrlParts addClassConstant: '_OffsetOf_username' value: 16r1C!

CefUrlParts comment: ''!

!CefUrlParts categoriesForClass!External-Data-Structured! !

!CefUrlParts methodsFor!

fragment
	"Answer the <CefString> value of the receiver's 'fragment' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_fragment!

fragment: aCefString
	"Set the receiver's 'fragment' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_fragment + 1)
		to: ##(_OffsetOf_fragment + CefString basicByteSize)
		startingAt: 1!

host
	"Answer the <CefString> value of the receiver's 'host' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_host!

host: aCefString
	"Set the receiver's 'host' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_host + 1)
		to: ##(_OffsetOf_host + CefString basicByteSize)
		startingAt: 1!

origin
	"Answer the <CefString> value of the receiver's 'origin' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_origin!

origin: aCefString
	"Set the receiver's 'origin' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_origin + 1)
		to: ##(_OffsetOf_origin + CefString basicByteSize)
		startingAt: 1!

password
	"Answer the <CefString> value of the receiver's 'password' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_password!

password: aCefString
	"Set the receiver's 'password' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_password + 1)
		to: ##(_OffsetOf_password + CefString basicByteSize)
		startingAt: 1!

path
	"Answer the <CefString> value of the receiver's 'path' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_path!

path: aCefString
	"Set the receiver's 'path' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_path + 1)
		to: ##(_OffsetOf_path + CefString basicByteSize)
		startingAt: 1!

port
	"Answer the <CefString> value of the receiver's 'port' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_port!

port: aCefString
	"Set the receiver's 'port' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_port + 1)
		to: ##(_OffsetOf_port + CefString basicByteSize)
		startingAt: 1!

query
	"Answer the <CefString> value of the receiver's 'query' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_query!

query: aCefString
	"Set the receiver's 'query' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_query + 1)
		to: ##(_OffsetOf_query + CefString basicByteSize)
		startingAt: 1!

scheme
	"Answer the <CefString> value of the receiver's 'scheme' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_scheme!

scheme: aCefString
	"Set the receiver's 'scheme' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_scheme + 1)
		to: ##(_OffsetOf_scheme + CefString basicByteSize)
		startingAt: 1!

spec
	"Answer the <CefString> value of the receiver's 'spec' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_spec!

spec: aCefString
	"Set the receiver's 'spec' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_spec + 1)
		to: ##(_OffsetOf_spec + CefString basicByteSize)
		startingAt: 1!

username
	"Answer the <CefString> value of the receiver's 'username' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_username!

username: aCefString
	"Set the receiver's 'username' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_username + 1)
		to: ##(_OffsetOf_username + CefString basicByteSize)
		startingAt: 1! !

!CefUrlParts categoriesForMethods!
fragment!**compiled accessors**!public! !
fragment:!**compiled accessors**!public! !
host!**compiled accessors**!public! !
host:!**compiled accessors**!public! !
origin!**compiled accessors**!public! !
origin:!**compiled accessors**!public! !
password!**compiled accessors**!public! !
password:!**compiled accessors**!public! !
path!**compiled accessors**!public! !
path:!**compiled accessors**!public! !
port!**compiled accessors**!public! !
port:!**compiled accessors**!public! !
query!**compiled accessors**!public! !
query:!**compiled accessors**!public! !
scheme!**compiled accessors**!public! !
scheme:!**compiled accessors**!public! !
spec!**compiled accessors**!public! !
spec:!**compiled accessors**!public! !
username!**compiled accessors**!public! !
username:!**compiled accessors**!public! !
!

!CefUrlParts class methodsFor!

defineFields
	"self compileDefinition"

	super defineFields.
	self
		defineField: #spec type: (StructureField type: CefString);
		defineField: #scheme type: (StructureField type: CefString);
		defineField: #username type: (StructureField type: CefString);
		defineField: #password type: (StructureField type: CefString);
		defineField: #host type: (StructureField type: CefString);
		defineField: #port type: (StructureField type: CefString);
		defineField: #origin type: (StructureField type: CefString);
		defineField: #path type: (StructureField type: CefString);
		defineField: #query type: (StructureField type: CefString);
		defineField: #fragment type: (StructureField type: CefString)!

fromString: aString
	| urlString cef parts resultCode |
	urlString := (aString beginsWith: 'https://') | (aString beginsWith: 'http://')
				ifTrue: [aString]
				ifFalse: ['https://' , aString].
	cef := CefLibrary default.
	parts := CefUrlParts new.
	resultCode := cef parseUrl_url: urlString asCefString parts: parts.
	resultCode = 0 ifTrue: [self error: ('Invalid URL string: <1s>' expandMacrosWith: urlString)].
	^parts!

getFieldNames
	^#(#cefSize #spec #scheme #username #password #host #port #origin #path #query #fragment)! !

!CefUrlParts class categoriesForMethods!
defineFields!public! !
fromString:!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

