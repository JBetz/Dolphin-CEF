"Filed out from Dolphin Smalltalk"!

Object subclass: #PageState
	instanceVariableNames: 'version url originalUrl target parent title alternativeTitle lastVisitedTime xScrollOffset yScrollOffset isTargetItem visitCount referrerUrl documentState pageScaleFactor itemSequenceNumber documentSequenceNumber hasStateObject stateObject formData httpContentType referrerUrl1 subItemsSize subItems referencedFiles'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

PageState guid: (GUID fromString: '{9de2f90d-5067-40f8-90ec-5998691af18d}')!

PageState comment: ''!

!PageState categoriesForClass!Kernel-Objects! !

!PageState methodsFor!

alternativeTitle
	^alternativeTitle!

alternativeTitle: anObject
	alternativeTitle := anObject!

documentSequenceNumber
	^documentSequenceNumber!

documentSequenceNumber: anObject
	documentSequenceNumber := anObject!

documentState
	^documentState!

documentState: anObject
	documentState := anObject!

formData
	^formData!

formData: anObject
	formData := anObject!

hasStateObject
	^hasStateObject!

hasStateObject: anObject
	hasStateObject := anObject!

httpContentType
	^httpContentType!

httpContentType: anObject
	httpContentType := anObject!

isTargetItem
	^isTargetItem!

isTargetItem: anObject
	isTargetItem := anObject!

itemSequenceNumber
	^itemSequenceNumber!

itemSequenceNumber: anObject
	itemSequenceNumber := anObject!

lastVisitedTime
	^lastVisitedTime!

lastVisitedTime: anObject
	lastVisitedTime := anObject!

originalUrl
	^originalUrl!

originalUrl: anObject
	originalUrl := anObject!

pageScaleFactor
	^pageScaleFactor!

pageScaleFactor: anObject
	pageScaleFactor := anObject!

parent
	^parent!

parent: anObject
	parent := anObject!

referencedFiles
	^referencedFiles!

referencedFiles: anObject
	referencedFiles := anObject!

referrerUrl
	^referrerUrl!

referrerUrl: anObject
	referrerUrl := anObject!

referrerUrl1
	^referrerUrl1!

referrerUrl1: anObject
	referrerUrl1 := anObject!

stateObject
	^stateObject!

stateObject: anObject
	stateObject := anObject!

subItems
	^subItems!

subItems: anObject
	subItems := anObject!

subItemsSize
	^subItemsSize!

subItemsSize: anObject
	subItemsSize := anObject!

target
	^target!

target: anObject
	target := anObject!

title
	^title!

title: anObject
	title := anObject!

url
	^url!

url: aString 
	url := aString!

version
	^version!

version: anObject
	version := anObject!

visitCount
	^visitCount!

visitCount: anObject
	visitCount := anObject!

xScrollOffset
	^xScrollOffset!

xScrollOffset: anObject
	xScrollOffset := anObject!

yScrollOffset
	^yScrollOffset!

yScrollOffset: anObject
	yScrollOffset := anObject! !

!PageState categoriesForMethods!
alternativeTitle!accessing!public! !
alternativeTitle:!accessing!private! !
documentSequenceNumber!accessing!public! !
documentSequenceNumber:!accessing!private! !
documentState!accessing!public! !
documentState:!accessing!private! !
formData!accessing!public! !
formData:!accessing!private! !
hasStateObject!accessing!public! !
hasStateObject:!accessing!private! !
httpContentType!accessing!public! !
httpContentType:!accessing!private! !
isTargetItem!accessing!public! !
isTargetItem:!accessing!private! !
itemSequenceNumber!accessing!public! !
itemSequenceNumber:!accessing!private! !
lastVisitedTime!accessing!public! !
lastVisitedTime:!accessing!private! !
originalUrl!accessing!public! !
originalUrl:!accessing!private! !
pageScaleFactor!accessing!public! !
pageScaleFactor:!accessing!private! !
parent!accessing!public! !
parent:!accessing!private! !
referencedFiles!accessing!public! !
referencedFiles:!accessing!private! !
referrerUrl!accessing!public! !
referrerUrl:!accessing!private! !
referrerUrl1!accessing!public! !
referrerUrl1:!accessing!private! !
stateObject!accessing!public! !
stateObject:!accessing!private! !
subItems!accessing!public! !
subItems:!accessing!private! !
subItemsSize!accessing!public! !
subItemsSize:!accessing!private! !
target!accessing!public! !
target:!accessing!private! !
title!accessing!public! !
title:!accessing!private! !
url!public! !
url:!private! !
version!accessing!public! !
version:!accessing!private! !
visitCount!accessing!public! !
visitCount:!accessing!private! !
xScrollOffset!accessing!public! !
xScrollOffset:!accessing!private! !
yScrollOffset!accessing!public! !
yScrollOffset:!accessing!private! !
!

!PageState class methodsFor!

fromStream: aStream
	| version pageState |
	aStream reset.
	aStream checkLength.
	version := aStream nextSDWORD.
	aStream position: 208.
	pageState := self new
		version: version;
		referencedFiles: aStream nextStringArray;
		url: aStream nextInnerUtf16String.

	Transcript display: pageState url; cr.
	pageState
		originalUrl: aStream nextInnerUtf16String;
		target: aStream nextInnerUtf16String;
		parent: aStream nextInnerUtf16String;
		title: aStream nextInnerUtf16String;
		alternativeTitle: aStream nextInnerUtf16String;
		yourself.
	self halt.
	^pageState! !

!PageState class categoriesForMethods!
fromStream:!public! !
!

