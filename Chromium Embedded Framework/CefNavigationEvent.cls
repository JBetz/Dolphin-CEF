"Filed out from Dolphin Smalltalk"!

Object subclass: #CefNavigationEvent
	instanceVariableNames: 'destination formData hashChange navigationType userInitiated'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefNavigationEvent guid: (GUID fromString: '{944e19eb-cccf-472d-89d9-cbcab6225d6f}')!

CefNavigationEvent comment: ''!

!CefNavigationEvent categoriesForClass!Kernel-Objects! !

!CefNavigationEvent methodsFor!

destination
	^destination!

destination: aDestination
	destination := aDestination!

formData
	^formData!

formData: aDictionary 
	formData := aDictionary!

hashChange
	^hashChange!

hashChange: aBoolean 
	hashChange := aBoolean!

isPush
	^navigationType = 'push'!

isReload
	^navigationType = 'reload'!

isReplace
	^navigationType = 'replace'!

isTraverse
	^navigationType = 'traverse'!

navigationType
	^navigationType!

navigationType: aString
	navigationType := aString!

origin
	^self userInitiated ifTrue: [#user] ifFalse: [#system]!

userInitiated
	^userInitiated!

userInitiated: aBoolean
	userInitiated := aBoolean! !

!CefNavigationEvent categoriesForMethods!
destination!accessing!public! !
destination:!accessing!public! !
formData!accessing!public! !
formData:!public! !
hashChange!accessing!public! !
hashChange:!public! !
isPush!public! !
isReload!public! !
isReplace!public! !
isTraverse!public! !
navigationType!accessing!public! !
navigationType:!accessing!public! !
origin!public! !
userInitiated!accessing!public! !
userInitiated:!accessing!public! !
!

!CefNavigationEvent class methodsFor!

fromCefDictionaryValue: aCefDictionaryValue
	^self new
		destination: (CefNavigationDestination
					fromCefDictionaryValue: (aCefDictionaryValue at: 'destination'));
		formData: (aCefDictionaryValue at: 'formData');
		hashChange: (aCefDictionaryValue at: 'hashChange');
		navigationType: (aCefDictionaryValue at: 'navigationType');
		userInitiated: (aCefDictionaryValue at: 'userInitiated')! !

!CefNavigationEvent class categoriesForMethods!
fromCefDictionaryValue:!public! !
!

