"Filed out from Dolphin Smalltalk"!

Object subclass: #Url
	instanceVariableNames: 'string fragment host origin password path port query scheme spec username'
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
	^self host!

fragment
	^fragment!

host
	^host!

origin
	^origin!

parse
	| parts |
	parts := CefUrlParts new.
	CefLibrary default parseUrl_url: string asCefString parts: parts.
	fragment := parts fragment str.
	host := parts host str.
	origin := parts origin str.
	password := parts password str.
	path := parts path str.
	port := parts port str.
	query := parts query str.
	scheme := parts scheme str.
	spec := parts spec str.
	username := parts username str!

password
	^password!

path
	^path!

port
	^port!

query
	^query!

scheme
	^scheme!

secureString
	| cefSecureString secureString |
	cefSecureString := CefLibrary default formatUrlForSecurityDisplay_originUrl: self spec.
	secureString := cefSecureString str.
	cefSecureString free.
	^secureString!

spec
	^spec!

string
	^string!

string: aString
	string := aString.
	self parse!

username
	^username! !
!Url categoriesForMethods!
displayString!public! !
domain!public! !
fragment!public! !
host!public! !
origin!public! !
parse!private! !
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
	| cef parts resultCode |
	cef := CefLibrary default.
	parts := CefUrlParts new.
	resultCode := cef parseUrl_url: aString asCefString parts: parts.
	resultCode = 0
		ifTrue: [resultCode := cef parseUrl_url: ('https://' , aString) asCefString parts: parts].
	^resultCode = 0 ifTrue: [nil] ifFalse: [self new string: aString]! !
!Url class categoriesForMethods!
fromString:!public! !
!

