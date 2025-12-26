"Filed out from Dolphin Smalltalk"!

Object subclass: #RpcResponse
	instanceVariableNames: 'requestId success returnValue error'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

RpcResponse guid: (GUID fromString: '{25097e67-1316-4e5d-9cc9-9b8d7c2ebe27}')!

RpcResponse comment: ''!

!RpcResponse categoriesForClass!Kernel-Objects! !

!RpcResponse methodsFor!

error
	^error!

error: anObject
	error := anObject!

requestId
	^requestId!

requestId: anObject
	requestId := anObject!

returnValue
	^returnValue!

returnValue: anObject
	returnValue := anObject!

success
	^success!

success: anObject
	success := anObject! !

!RpcResponse categoriesForMethods!
error!accessing!public! !
error:!accessing!private! !
requestId!accessing!public! !
requestId:!accessing!private! !
returnValue!accessing!public! !
returnValue:!accessing!private! !
success!accessing!public! !
success:!accessing!private! !
!

!RpcResponse class methodsFor!

fromDictionary: aDictionary
	^self new
		requestId: (aDictionary at: #requestId);
		success: (aDictionary at: #success);
		returnValue: (aDictionary at: #returnValue);
		error: (aDictionary at: #error)! !

!RpcResponse class categoriesForMethods!
fromDictionary:!public! !
!

