"Filed out from Dolphin Smalltalk"!

Object subclass: #HttpResponse
	instanceVariableNames: 'headers body statusCode statusText'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

HttpResponse guid: (GUID fromString: '{f570f0a6-f43d-4bd7-816c-99d9c178d7bc}')!

HttpResponse comment: ''!

!HttpResponse categoriesForClass!Kernel-Objects! !

!HttpResponse methodsFor!

body
	^body!

body: anObject
	body := anObject!

headers
	^headers!

headers: anObject
	headers := anObject!

statusCode
	^statusCode!

statusCode: anInteger 
	statusCode := anInteger!

statusText
	^statusText!

statusText: aString 
	statusText := aString! !

!HttpResponse categoriesForMethods!
body!accessing!public! !
body:!accessing!private! !
headers!accessing!public! !
headers:!accessing!private! !
statusCode!public! !
statusCode:!public! !
statusText!public! !
statusText:!public! !
!

