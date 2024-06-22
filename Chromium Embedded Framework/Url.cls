"Filed out from Dolphin Smalltalk"!

Object subclass: #Url
	instanceVariableNames: 'inputString fragment host origin password path port query scheme spec username'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Url guid: (GUID fromString: '{2d068995-1667-4e79-9b1d-ffc0a15aa089}')!

Url comment: ''!

!Url categoriesForClass!Kernel-Objects! !

!Url methodsFor!

displayString
	^self inputString!

domain
	^self host!

extractParts: aCefUrlParts
	fragment := aCefUrlParts fragment str.
	host := aCefUrlParts host str.
	origin := aCefUrlParts origin str.
	password := aCefUrlParts password str.
	path := aCefUrlParts path str.
	port := aCefUrlParts port str.
	query := aCefUrlParts query str.
	scheme := aCefUrlParts scheme str.
	spec := aCefUrlParts spec str.
	username := aCefUrlParts username str!

fragment
	^fragment!

fragment: anUndefinedObject 
	fragment := anUndefinedObject!

host
	^host!

host: anObject
	host := anObject!

inputString
	^inputString!

inputString: aString
	inputString := aString!

origin
	^origin!

origin: anObject
	origin := anObject!

password
	^password!

password: anObject
	password := anObject!

path
	^path!

path: anObject
	path := anObject!

port
	^port!

port: anObject
	port := anObject!

query
	^query!

query: anObject
	query := anObject!

scheme
	^scheme!

scheme: anObject
	scheme := anObject!

secureString
	| cefSecureString secureString |
	cefSecureString := CefLibrary default formatUrlForSecurityDisplay_originUrl: self spec asCefString.
	secureString := cefSecureString str.
	cefSecureString free.
	^secureString!

spec
	^spec!

spec: anObject
	spec := anObject!

username
	^username!

username: anObject
	username := anObject! !

!Url categoriesForMethods!
displayString!public! !
domain!public! !
extractParts:!private! !
fragment!public! !
fragment:!public! !
host!public! !
host:!accessing!private! !
inputString!public! !
inputString:!public! !
origin!public! !
origin:!accessing!private! !
password!public! !
password:!accessing!private! !
path!public! !
path:!accessing!private! !
port!public! !
port:!accessing!private! !
query!public! !
query:!accessing!private! !
scheme!public! !
scheme:!accessing!private! !
secureString!public! !
spec!public! !
spec:!accessing!private! !
username!public! !
username:!accessing!private! !
!

!Url class methodsFor!

fromString: aString
	| urlParts |
	urlParts := self parseString: aString.
	urlParts ifNil: [Error signal: ('Invalid URL string: <1s>' expandMacrosWith: aString)].
	^self new
		inputString: aString;
		fragment: urlParts fragment str;
		host: urlParts host str;
		origin: urlParts origin str;
		password: urlParts password str;
		path: urlParts path str;
		port: urlParts port str;
		query: urlParts query str;
		scheme: urlParts scheme str;
		spec: urlParts spec str;
		username: urlParts username str!

parseString: aString
	| cef parts resultCode |
	cef := CefLibrary default.
	parts := CefUrlParts new.
	resultCode := cef parseUrl_url: aString asCefString parts: parts.
	resultCode = 0
		ifTrue: [resultCode := cef parseUrl_url: ('https://' , aString) asCefString parts: parts].
	^resultCode = 0 ifTrue: [nil] ifFalse: [parts]! !

!Url class categoriesForMethods!
fromString:!public! !
parseString:!private! !
!

