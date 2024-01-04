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

displayString
	^string!

domain
	^self host str!

fragment
	^parts fragment!

host
	^parts host!

origin
	^parts origin!

parse
	parts := CefUrlParts new. 
	CefLibrary default parseUrl_url: string asCefString parts: parts!

parts: aCefUrlParts
	parts := aCefUrlParts!

password
	^parts password!

path
	^parts path!

port
	^parts port!

query
	^parts query!

scheme
	^parts scheme!

secureString
	| cefSecureString secureString |
	cefSecureString := CefLibrary default formatUrlForSecurityDisplay_originUrl: self spec.
	secureString := cefSecureString str.
	cefSecureString free.
	^secureString!

spec
	^parts spec!

string
	^string!

string: aString
	string := aString.
	self parse!

username
	^parts username! !
!Url categoriesForMethods!
displayString!public! !
domain!public! !
fragment!public! !
host!public! !
origin!public! !
parse!private! !
parts:!private! !
password!public! !
path!public! !
port!public! !
query!public! !
scheme!public! !
secureString!public! !
spec!public! !
string!public! !
string:!public! !
username!public! !
!

!Url class methodsFor!

fromString: aString
	| parts resultCode |
	parts := CefUrlParts new.
	resultCode := CefLibrary default parseUrl_url: aString asCefString parts: parts.
	^resultCode = 0
		ifTrue: [nil]
		ifFalse: 
			[self new
				string: aString;
				parts: parts]! !
!Url class categoriesForMethods!
fromString:!public! !
!

