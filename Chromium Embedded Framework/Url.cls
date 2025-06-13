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
	^self parts fragment str!

host
	^self parts host str!

origin
	^self parts origin str!

parts
	parts ifNil: [parts := CefUrlParts fromString: string].
	^parts!

parts: aCefUrlParts
	parts := aCefUrlParts!

password
	^self parts password str!

path
	^self parts path str!

port
	^self parts port str!

query
	^self parts query str!

scheme
	^self parts scheme str!

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
	^self parts username str! !

!Url categoriesForMethods!
asCefString!public! !
asUrl!public! !
displayString!public! !
domain!public! !
fragment!public! !
host!public! !
origin!public! !
parts!public! !
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
	urlParts := CefUrlParts fromString: aString.
	urlParts ifNil: [self error: ('Invalid URL string: <1s>' expandMacrosWith: aString)].
	^self new
		string: aString;
		parts: urlParts! !

!Url class categoriesForMethods!
fromString:!public! !
!

