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

asFileName
	| validSpecialCharacters |
	validSpecialCharacters := #(#- #_).
	^self string
		collect: [:each | each isAlphaNumeric | (validSpecialCharacters includes: each) ifTrue: [each] ifFalse: [$_]]!

asUrl
	^self!

displayOn: aStream
	aStream nextPutAll: self string!

domain
	^self host!

fragment
	^self parts fragment str!

host
	^self parts host str!

origin
	^self parts origin str!

parts
	^CefUrlParts fromString: string!

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
asFileName!public! !
asUrl!public! !
displayOn:!public! !
domain!public! !
fragment!public! !
host!public! !
origin!public! !
parts!public! !
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
	^self new string: aString!

stonAllInstVarNames
	^self instVarNames difference: #(parts)! !

!Url class categoriesForMethods!
fromString:!public! !
stonAllInstVarNames!public! !
!

