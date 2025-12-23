"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #UpdateTabNavigationCommand
	instanceVariableNames: 'index tabId virtualUrl title state transitionType hasPostData referrerUrl ignoredReferrerPolicy originalRequestUrl isOverridingUserAgent timestamp searchTerms httpStatus referrerPolicy extendedMap taskId parentTaskId rootTaskId childTaskIdCount'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

UpdateTabNavigationCommand guid: (GUID fromString: '{ebee2130-94ab-4427-a4a1-62d90dac8564}')!

UpdateTabNavigationCommand comment: ''!

!UpdateTabNavigationCommand categoriesForClass!Kernel-Objects! !

!UpdateTabNavigationCommand methodsFor!

<= anUpdateTabNavigationCommand
	^timestamp <= anUpdateTabNavigationCommand timestamp!

childTaskIdCount
	^childTaskIdCount!

childTaskIdCount: anObject
	childTaskIdCount := anObject!

extendedMap
	^extendedMap!

extendedMap: anObject
	extendedMap := anObject!

hasPostData
	^hasPostData!

hasPostData: anObject
	hasPostData := anObject!

httpStatus
	^httpStatus!

httpStatus: anObject
	httpStatus := anObject!

ignoredReferrerPolicy
	^ignoredReferrerPolicy!

ignoredReferrerPolicy: anObject
	ignoredReferrerPolicy := anObject!

index
	^index!

index: anObject
	index := anObject!

isOverridingUserAgent
	^isOverridingUserAgent!

isOverridingUserAgent: anObject
	isOverridingUserAgent := anObject!

isTabNavigation
	^true!

originalRequestUrl
	^originalRequestUrl!

originalRequestUrl: anObject
	originalRequestUrl := anObject!

parentTaskId
	^parentTaskId!

parentTaskId: anObject
	parentTaskId := anObject!

referrerPolicy
	^referrerPolicy!

referrerPolicy: anObject
	referrerPolicy := anObject!

referrerUrl
	^referrerUrl!

referrerUrl: anObject
	referrerUrl := anObject!

rootTaskId
	^rootTaskId!

rootTaskId: anObject
	rootTaskId := anObject!

searchTerms
	^searchTerms!

searchTerms: anObject
	searchTerms := anObject!

state
	^state!

state: anObject
	state := anObject!

tabId
	^tabId!

tabId: anObject
	tabId := anObject!

taskId
	^taskId!

taskId: anObject
	taskId := anObject!

timestamp
	^timestamp!

timestamp: anObject
	timestamp := anObject!

title
	^title!

title: anObject
	title := anObject!

transitionType
	^transitionType!

transitionType: anObject
	transitionType := anObject!

virtualUrl
	^virtualUrl!

virtualUrl: anObject
	virtualUrl := anObject! !

!UpdateTabNavigationCommand categoriesForMethods!
<=!public! !
childTaskIdCount!accessing!public! !
childTaskIdCount:!accessing!private! !
extendedMap!accessing!public! !
extendedMap:!accessing!private! !
hasPostData!accessing!public! !
hasPostData:!accessing!private! !
httpStatus!accessing!public! !
httpStatus:!accessing!private! !
ignoredReferrerPolicy!accessing!public! !
ignoredReferrerPolicy:!accessing!private! !
index!accessing!public! !
index:!accessing!private! !
isOverridingUserAgent!accessing!public! !
isOverridingUserAgent:!accessing!private! !
isTabNavigation!public! !
originalRequestUrl!accessing!public! !
originalRequestUrl:!accessing!private! !
parentTaskId!accessing!public! !
parentTaskId:!accessing!private! !
referrerPolicy!accessing!public! !
referrerPolicy:!accessing!private! !
referrerUrl!accessing!public! !
referrerUrl:!accessing!private! !
rootTaskId!accessing!public! !
rootTaskId:!accessing!private! !
searchTerms!accessing!public! !
searchTerms:!accessing!private! !
state!accessing!public! !
state:!accessing!private! !
tabId!accessing!public! !
tabId:!accessing!private! !
taskId!accessing!public! !
taskId:!accessing!private! !
timestamp!accessing!public! !
timestamp:!accessing!private! !
title!accessing!public! !
title:!accessing!private! !
transitionType!accessing!public! !
transitionType:!accessing!private! !
virtualUrl!accessing!public! !
virtualUrl:!accessing!private! !
!

!UpdateTabNavigationCommand class methodsFor!

fromStream: aStream
	aStream checkLength.
	^self new
		tabId: aStream nextSDWORD;
		index: aStream nextSDWORD;
		virtualUrl: aStream nextString;
		title: aStream nextUtf16String;
		state: aStream nextPageState;
		transitionType: (CefTransitionType fromInteger: aStream nextDWORD);
		hasPostData: aStream nextBoolean;
		referrerUrl: aStream nextString;
		ignoredReferrerPolicy: aStream nextSDWORD;
		originalRequestUrl: aStream nextString;
		isOverridingUserAgent: aStream nextBoolean;
		timestamp: aStream nextDateAndTime;
		searchTerms: aStream nextUtf16String;
		httpStatus: aStream nextSDWORD;
		referrerPolicy: aStream nextSDWORD;
		extendedMap: aStream nextDictionary;
		taskId: aStream tryNextSQWORD;
		parentTaskId: aStream tryNextSQWORD;
		rootTaskId: aStream tryNextSQWORD;
		childTaskIdCount: aStream tryNextSDWORD;
		yourself! !

!UpdateTabNavigationCommand class categoriesForMethods!
fromStream:!public! !
!

