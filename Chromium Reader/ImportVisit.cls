"Filed out from Dolphin Smalltalk"!

ImportRecord subclass: #ImportVisit
	instanceVariableNames: 'id url visitTime fromVisit externalReferrerUrl transition segmentId visitDuration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ImportVisit guid: (GUID fromString: '{4bfec31a-9453-41ce-98b4-8dcec47aa351}')!

ImportVisit comment: ''!

!ImportVisit categoriesForClass!Kernel-Objects! !

!ImportVisit methodsFor!

externalReferrerUrl
	^externalReferrerUrl!

fromVisit
	^fromVisit!

id
	^id!

segmentId
	^segmentId!

transition
	^transition!

url
	^url!

visitDuration
	^visitDuration!

visitTime
	^visitTime! !

!ImportVisit categoriesForMethods!
externalReferrerUrl!accessing!public! !
fromVisit!accessing!public! !
id!accessing!public! !
segmentId!accessing!public! !
transition!accessing!public! !
url!accessing!public! !
visitDuration!accessing!public! !
visitTime!accessing!public! !
!

!ImportVisit class methodsFor!

reStoreDefinition
	^super reStoreDefinition
		name: 'visits';
		defineAsID: #id;
		define: #url as: ImportUrl dependent;
		define: #visitTime as: Integer;
		define: #fromVisit as: Integer;
		define: #externalReferrerUrl as: String;
		define: #transition as: Integer;
		define: #segmentId as: Integer;
		define: #visitDuration as: Integer;
		yourself! !

!ImportVisit class categoriesForMethods!
reStoreDefinition!public! !
!

