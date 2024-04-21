"Filed out from Dolphin Smalltalk"!

Object subclass: #CefNavigationDestination
	instanceVariableNames: 'id index key sameDocument url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefNavigationDestination guid: (GUID fromString: '{5ee17834-8dc7-4e46-b905-e51b1b15a15c}')!
CefNavigationDestination comment: ''!
!CefNavigationDestination categoriesForClass!Kernel-Objects! !
!CefNavigationDestination methodsFor!

id
	^id!

id: anObject
	id := anObject!

index
	^index!

index: anObject
	index := anObject!

key
	^key!

key: anObject
	key := anObject!

sameDocument
	^sameDocument!

sameDocument: anObject
	sameDocument := anObject!

url
	^url!

url: anObject
	url := anObject! !
!CefNavigationDestination categoriesForMethods!
id!accessing!public! !
id:!accessing!public! !
index!accessing!public! !
index:!accessing!public! !
key!accessing!public! !
key:!accessing!public! !
sameDocument!accessing!public! !
sameDocument:!accessing!public! !
url!accessing!public! !
url:!accessing!public! !
!

!CefNavigationDestination class methodsFor!

fromCefDictionaryValue: aCefDictionaryValue
	^self new
		id: (aCefDictionaryValue at: 'id');
		index: (aCefDictionaryValue at: 'index');
		key: (aCefDictionaryValue at: 'key');
		sameDocument: (aCefDictionaryValue at: 'sameDocument');
		url: (aCefDictionaryValue at: 'url')! !
!CefNavigationDestination class categoriesForMethods!
fromCefDictionaryValue:!public! !
!

