"Filed out from Dolphin Smalltalk"!

MessageCallback subclass: #DelegatedMessageCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DelegatedMessageCallback guid: (GUID fromString: '{dd2aba9a-96a2-4b7f-8bfb-40cf91461a75}')!
DelegatedMessageCallback comment: ''!
!DelegatedMessageCallback categoriesForClass!System-Support! !
!DelegatedMessageCallback methodsFor!

valueWithArgumentsAt: anAddress
	"Private - Evaluate the receiver with arguments instantiated from the raw data at anAddress."

	^(receiver delegate ifNil: [receiver])
		perform: selector
		withArgumentsAt: anAddress
		descriptor: descriptor! !
!DelegatedMessageCallback categoriesForMethods!
valueWithArgumentsAt:!private! !
!

!DelegatedMessageCallback class methodsFor!

new
	^super new initialize!

receiver: anObject selector: aSymbol descriptor: anExternalDescriptor
	"Answer a new instance of the receiver configured to send the <selector>, aSymbol,
	to the <Object>, anObject, when invoked as a callback with descriptor, anExternalDescriptor."

	^self new
		receiver: anObject;
		selector: aSymbol;
		descriptor: anExternalDescriptor;
		yourself! !
!DelegatedMessageCallback class categoriesForMethods!
new!public! !
receiver:selector:descriptor:!public! !
!

