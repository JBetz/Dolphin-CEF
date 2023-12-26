"Filed out from Dolphin Smalltalk"!

DelegatedMessageCallback subclass: #CefMessageCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefMessageCallback guid: (GUID fromString: '{1f02c0ce-32c4-458e-980f-4ba91ffcc1a7}')!
CefMessageCallback comment: ''!
!CefMessageCallback categoriesForClass!System-Support! !
!CefMessageCallback methodsFor!

isReferenceCountingCallback
	^descriptor argumentTypes first = 'CefReferenceCountedObject*'!

valueWithArgumentsAt: anAddress
	"Private - Evaluate the receiver with arguments instantiated from the raw data at anAddress."

	| actualReceiver |
	actualReceiver := self getReceiver: anAddress.
	actualReceiver ifNil: [^nil].
	(self isReferenceCountingCallback not and: [actualReceiver delegate notNil])
		ifTrue: [actualReceiver := actualReceiver delegate].
	^actualReceiver
		perform: selector
		withArgumentsAt: anAddress
		descriptor: descriptor! !
!CefMessageCallback categoriesForMethods!
isReferenceCountingCallback!private! !
valueWithArgumentsAt:!private! !
!

