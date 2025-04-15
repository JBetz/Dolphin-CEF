"Filed out from Dolphin Smalltalk"!

Object subclass: #Url
	instanceVariableNames: 'string parts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Url guid: (GUID fromString: '{2d068995-1667-4e79-9b1d-ffc0a15aa089}')!

Url comment: ''!

!Url categoriesForClass!Kernel-Objects! !

!Url methodsFor!

asCefString
	^string asCefString!

asUrl
	^self!

displayString
	^self string!

domain
	^self host!

fragment
	^parts fragment str!

host
	^parts host str!

origin
	^parts origin str!

parts: aCefUrlParts
	parts := aCefUrlParts!

password
	^parts password str!

path
	^parts path str!

port
	^parts port str!

query
	^parts query str!

scheme
	^parts scheme str!

secureString
	| cefSecureString secureString |
	cefSecureString := CefLibrary default formatUrlForSecurityDisplay_originUrl: self spec asCefString.
	secureString := cefSecureString str.
	cefSecureString free.
	^secureString!

string
	^string!

string: aString
	string := aString!

username
	^parts username str! !

!Url categoriesForMethods!
asCefString!public! !
asUrl!public! !
displayString!public! !
domain!public! !
fragment!public! !
host!public! !
origin!public! !
parts:!public! !
password!public! !
path!public! !
port!public! !
query!public! !
scheme!public! !
secureString!public! !
string!public! !
string:!public! !
username!public! !
!

!Url class methodsFor!

fromString: aString
	| urlParts |
	urlParts := self parseString: aString.
	urlParts ifNil: [self error: ('Invalid URL string: <1s>' expandMacrosWith: aString)].
	^self new
		string: aString;
		parts: urlParts!

parseString: aString
	| cef parts resultCode |
	cef := CefLibrary default.
	parts := CefUrlParts new.
	resultCode := cef parseUrl_url: aString asCefString parts: parts.
	resultCode = 0
		ifTrue: [resultCode := cef parseUrl_url: ('https://' , aString) asCefString parts: parts].
	^resultCode = 0 ifTrue: [nil] ifFalse: [parts]!

stonAllInstVarNames
	^#(#string)! !

!Url class categoriesForMethods!
fromString:!public! !
parseString:!private! !
stonAllInstVarNames!public! !
!

