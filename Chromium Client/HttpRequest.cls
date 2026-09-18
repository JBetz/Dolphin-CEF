"Filed out from Dolphin Smalltalk"!

ChromiumObject subclass: #HttpRequest
	instanceVariableNames: 'id client'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

HttpRequest guid: (GUID fromString: '{52502bdf-3dff-4dca-9c2f-cd67c5cfe1e3}')!

HttpRequest comment: ''!

!HttpRequest categoriesForClass!Kernel-Objects! !

!HttpRequest methodsFor!

cancel
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #HttpRequest;
				at: #method put: #Cancel;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

client: anObject
	client := anObject!

onData: aDictionary
	| theData |
	theData := aDictionary at: #data.
	model onData: theData.
	^nil!

onError: aDictionary
	| theError |
	theError := aDictionary at: #error.
	model onError: theError.
	^nil!

onResponse: aDictionary
	| theStatusCode theStatusText theHeaders |
	theStatusCode := aDictionary at: #statusCode.
	theStatusText := aDictionary at: #statusText.
	theHeaders := aDictionary at: #headers.
	model
		onResponse: theStatusCode
		statusText: theStatusText
		headers: theHeaders.
	^nil! !

!HttpRequest categoriesForMethods!
cancel!**compiled methods**!public!rpc! !
client:!accessing!private! !
onData:!**compiled callbacks**!private!rpc! !
onError:!**compiled callbacks**!private!rpc! !
onResponse:!**compiled callbacks**!private!rpc! !
!

!HttpRequest class methodsFor!

defineRpcCallbacks
	self
		defineRpcCallback: #onData
			target: #model
			arguments: #(#data);
		defineRpcCallback: #onResponse
			target: #model
			arguments: #(#statusCode #statusText #headers);
		defineRpcCallback: #onError
			target: #model
			arguments: #(#error)!

defineRpcMethods
	self defineRpcMethod: #cancel!

rpcClassName
	^#HttpRequest! !

!HttpRequest class categoriesForMethods!
defineRpcCallbacks!private! !
defineRpcMethods!private! !
rpcClassName!public! !
!

