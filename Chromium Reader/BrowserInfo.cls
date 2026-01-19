"Filed out from Dolphin Smalltalk"!

Object subclass: #BrowserInfo
	instanceVariableNames: 'name organization application'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BrowserInfo guid: (GUID fromString: '{e69d8849-9992-4369-a12c-fbba6367fa0d}')!

BrowserInfo comment: ''!

!BrowserInfo categoriesForClass!Kernel-Objects! !

!BrowserInfo methodsFor!

application
	^application!

application: anObject
	application := anObject!

name
	^name!

name: anObject
	name := anObject!

organization
	^organization!

organization: anObject
	organization := anObject! !

!BrowserInfo categoriesForMethods!
application!accessing!public! !
application:!accessing!private! !
name!accessing!public! !
name:!accessing!private! !
organization!accessing!public! !
organization:!accessing!private! !
!

!BrowserInfo class methodsFor!

newBrave
	^self new
		name: 'Brave';
		organization: 'BraveSoftware';
		application: 'Brave-Browser'!

newEdge
	^self new
		name: 'Edge';
		organization: 'Microsoft';
		application: 'Edge'! !

!BrowserInfo class categoriesForMethods!
newBrave!public! !
newEdge!public! !
!

