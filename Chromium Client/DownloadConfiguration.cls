"Filed out from Dolphin Smalltalk"!

Object subclass: #DownloadConfiguration
	instanceVariableNames: 'shouldContinue downloadPath showDialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DownloadConfiguration guid: (GUID fromString: '{dad6bda3-4997-4d7c-8b12-305690bf14b7}')!

DownloadConfiguration comment: ''!

!DownloadConfiguration categoriesForClass!Kernel-Objects! !

!DownloadConfiguration methodsFor!

asDictionary
	^Dictionary new
		at: #shouldContinue put: shouldContinue;
		at: #downloadPath put: downloadPath;
		at: #showDialog put: showDialog;
		yourself!

downloadPath
	^downloadPath!

downloadPath: anObject
	downloadPath := anObject!

shouldContinue
	^shouldContinue!

shouldContinue: anObject
	shouldContinue := anObject!

showDialog
	^showDialog!

showDialog: anObject
	showDialog := anObject! !

!DownloadConfiguration categoriesForMethods!
asDictionary!accessing!public! !
downloadPath!accessing!public! !
downloadPath:!accessing!private! !
shouldContinue!accessing!public! !
shouldContinue:!accessing!private! !
showDialog!accessing!public! !
showDialog:!accessing!private! !
!

