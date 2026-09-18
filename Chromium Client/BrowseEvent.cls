"Filed out from Dolphin Smalltalk"!

Object subclass: #BrowseEvent
	instanceVariableNames: 'url method referrerUrl headers userGesture isRedirect transitionType resourceType'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BrowseEvent guid: (GUID fromString: '{b327addf-c5a2-4657-9129-739e833ab71d}')!

BrowseEvent comment: ''!

!BrowseEvent categoriesForClass!Unclassified! !

!BrowseEvent methodsFor!

headers
	^headers!

headers: anObject
	headers := anObject!

isRedirect
	^isRedirect!

isRedirect: anObject
	isRedirect := anObject!

method
	^method!

method: anObject
	method := anObject!

referrerUrl
	^referrerUrl!

referrerUrl: anObject
	referrerUrl := anObject!

resourceType
	^resourceType!

resourceType: anObject
	resourceType := anObject!

transitionType
	^transitionType!

transitionType: anObject
	transitionType := anObject!

url
	^url!

url: anObject
	url := anObject!

userGesture
	^userGesture!

userGesture: anObject
	userGesture := anObject! !

!BrowseEvent categoriesForMethods!
headers!public! !
headers:!public! !
isRedirect!public! !
isRedirect:!public! !
method!public! !
method:!public! !
referrerUrl!public! !
referrerUrl:!public! !
resourceType!public! !
resourceType:!public! !
transitionType!public! !
transitionType:!public! !
url!public! !
url:!public! !
userGesture!public! !
userGesture:!public! !
!

