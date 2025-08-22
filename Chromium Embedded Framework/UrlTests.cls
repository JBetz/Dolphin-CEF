"Filed out from Dolphin Smalltalk"!

TestCase subclass: #UrlTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

UrlTests guid: (GUID fromString: '{be7d4391-84c8-4111-b144-2300ef620b06}')!

UrlTests comment: ''!

!UrlTests categoriesForClass!SUnit! !

!UrlTests methodsFor!

testUrlParses
	| url |
	url := Url fromString: 'https://www.youtube.com/watch?v=J1OsKJW51HY'.
	self
		assert: url scheme = 'https';
		assert: url host = 'www.youtube.com';
		assert: url path = '/watch';
		assert: url query = 'v=J1OsKJW51HY'! !

!UrlTests categoriesForMethods!
testUrlParses!public! !
!

