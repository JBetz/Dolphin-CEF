"Filed out from Dolphin Smalltalk"!

ImportRecord subclass: #ImportUrl
	instanceVariableNames: 'id url title visitCount typedCount lastVisitTime hidden'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ImportUrl guid: (GUID fromString: '{04fe062c-e5d9-4dd9-9af0-5b9714fa1a5c}')!

ImportUrl comment: ''!

!ImportUrl categoriesForClass!Kernel-Objects! !

!ImportUrl methodsFor!

hidden
	^hidden!

id
	^id!

lastVisitTime
	^lastVisitTime!

title
	^title!

typedCount
	^typedCount!

url
	^url!

visitCount
	^visitCount! !

!ImportUrl categoriesForMethods!
hidden!accessing!public! !
id!accessing!public! !
lastVisitTime!accessing!public! !
title!accessing!public! !
typedCount!accessing!public! !
url!accessing!public! !
visitCount!accessing!public! !
!

!ImportUrl class methodsFor!

reStoreDefinition
	^super reStoreDefinition
		name: 'urls';
		defineAsID: #id;
		define: #url as: String;
		define: #title as: String;
		define: #visitCount as: Integer;
		define: #typedCount as: Integer;
		define: #lastVisitTime as: Integer;
		define: #hidden as: Integer;
		yourself! !

!ImportUrl class categoriesForMethods!
reStoreDefinition!public! !
!

