"Filed out from Dolphin Smalltalk"!

Object subclass: #DownloadItem
	instanceVariableNames: 'isInProgress isComplete isCanceled isInterrupted isPaused interruptReason currentSpeed percentComplete totalBytes receivedBytes startTime endTime fullPath id url originalUrl suggestedFileName contentDisposition mimeType'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DownloadItem guid: (GUID fromString: '{83b917fa-d985-4402-84a2-f81564022a91}')!

DownloadItem comment: ''!

!DownloadItem categoriesForClass!Kernel-Objects! !

!DownloadItem methodsFor!

contentDisposition
	^contentDisposition!

contentDisposition: anObject
	contentDisposition := anObject!

currentSpeed
	^currentSpeed!

currentSpeed: anObject
	currentSpeed := anObject!

endTime
	^endTime!

endTime: anObject
	endTime := anObject!

fullPath
	^fullPath!

fullPath: anObject
	fullPath := anObject!

id
	^id!

id: anObject
	id := anObject!

interruptReason
	^interruptReason!

interruptReason: anObject
	interruptReason := anObject!

isCanceled
	^isCanceled!

isCanceled: anObject
	isCanceled := anObject!

isComplete
	^isComplete!

isComplete: anObject
	isComplete := anObject!

isInProgress
	^isInProgress!

isInProgress: anObject
	isInProgress := anObject!

isInterrupted
	^isInterrupted!

isInterrupted: anObject
	isInterrupted := anObject!

isPaused
	^isPaused!

isPaused: anObject
	isPaused := anObject!

mimeType
	^mimeType!

mimeType: anObject
	mimeType := anObject!

originalUrl
	^originalUrl!

originalUrl: anObject
	originalUrl := anObject!

percentComplete
	^percentComplete!

percentComplete: anObject
	percentComplete := anObject!

receivedBytes
	^receivedBytes!

receivedBytes: anObject
	receivedBytes := anObject!

startTime
	^startTime!

startTime: anObject
	startTime := anObject!

suggestedFileName
	^suggestedFileName!

suggestedFileName: anObject
	suggestedFileName := anObject!

totalBytes
	^totalBytes!

totalBytes: anObject
	totalBytes := anObject!

url
	^url!

url: anObject
	url := anObject! !

!DownloadItem categoriesForMethods!
contentDisposition!accessing!private! !
contentDisposition:!accessing!private! !
currentSpeed!accessing!private! !
currentSpeed:!accessing!private! !
endTime!accessing!private! !
endTime:!accessing!private! !
fullPath!accessing!private! !
fullPath:!accessing!private! !
id!accessing!private! !
id:!accessing!private! !
interruptReason!accessing!private! !
interruptReason:!accessing!private! !
isCanceled!accessing!private! !
isCanceled:!accessing!private! !
isComplete!accessing!private! !
isComplete:!accessing!private! !
isInProgress!accessing!private! !
isInProgress:!accessing!private! !
isInterrupted!accessing!private! !
isInterrupted:!accessing!private! !
isPaused!accessing!private! !
isPaused:!accessing!private! !
mimeType!accessing!private! !
mimeType:!accessing!private! !
originalUrl!accessing!private! !
originalUrl:!accessing!private! !
percentComplete!accessing!private! !
percentComplete:!accessing!private! !
receivedBytes!accessing!private! !
receivedBytes:!accessing!private! !
startTime!accessing!private! !
startTime:!accessing!private! !
suggestedFileName!accessing!private! !
suggestedFileName:!accessing!private! !
totalBytes!accessing!private! !
totalBytes:!accessing!private! !
url!accessing!private! !
url:!accessing!private! !
!

!DownloadItem class methodsFor!

fromDictionary: aDictionary
	^self new
		isInProgress: (aDictionary at: #isInProgress);
		isComplete: (aDictionary at: #isComplete);
		isCanceled: (aDictionary at: #isCanceled);
		isInterrupted: (aDictionary at: #isInterrupted);
		isPaused: (aDictionary at: #isPaused);
		interruptReason: (aDictionary at: #interruptReason);
		currentSpeed: (aDictionary at: #currentSpeed);
		percentComplete: (aDictionary at: #percentComplete);
		totalBytes: (aDictionary at: #totalBytes);
		receivedBytes: (aDictionary at: #receivedBytes);
		startTime: (aDictionary at: #startTime);
		endTime: (aDictionary at: #endTime);
		fullPath: (aDictionary at: #fullPath);
		id: (aDictionary at: #id);
		url: (aDictionary at: #url);
		originalUrl: (aDictionary at: #originalUrl);
		suggestedFileName: (aDictionary at: #suggestedFileName);
		contentDisposition: (aDictionary at: #contentDisposition);
		mimeType: (aDictionary at: #mimeType);
		yourself! !

!DownloadItem class categoriesForMethods!
fromDictionary:!public! !
!

