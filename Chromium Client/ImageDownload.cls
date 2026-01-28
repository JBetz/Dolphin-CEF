"Filed out from Dolphin Smalltalk"!

Object subclass: #ImageDownload
	instanceVariableNames: 'imageUrl httpStatusCode images'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ImageDownload guid: (GUID fromString: '{e84e3a57-8b6e-4905-a53b-e88932f68bc0}')!

ImageDownload comment: ''!

!ImageDownload categoriesForClass!Kernel-Objects! !

!ImageDownload methodsFor!

httpStatusCode
	^httpStatusCode!

httpStatusCode: anObject
	httpStatusCode := anObject!

images
	^images!

images: anObject
	images := anObject!

imageUrl
	^imageUrl!

imageUrl: anObject
	imageUrl := anObject! !

!ImageDownload categoriesForMethods!
httpStatusCode!accessing!public! !
httpStatusCode:!accessing!private! !
images!accessing!public! !
images:!accessing!private! !
imageUrl!accessing!public! !
imageUrl:!accessing!private! !
!

!ImageDownload class methodsFor!

fromDictionary: aDictionary
	^self new
		imageUrl: (aDictionary at: #imageUrl);
		httpStatusCode: (aDictionary at: #httpStatusCode);
		images: ((aDictionary at: #images) collect: [:each | PNGImageData fromDictionary: each]);
		yourself! !

!ImageDownload class categoriesForMethods!
fromDictionary:!public! !
!

