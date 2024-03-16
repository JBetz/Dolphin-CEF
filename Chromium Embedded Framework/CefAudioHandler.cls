"Filed out from Dolphin Smalltalk"!

CefEventHandler subclass: #CefAudioHandler
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_audio_parameters _OffsetOf_on_audio_stream_error _OffsetOf_on_audio_stream_packet _OffsetOf_on_audio_stream_started _OffsetOf_on_audio_stream_stopped'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefAudioHandler guid: (GUID fromString: '{e397d1c2-ead3-4370-9d2c-4b5ebee6eca2}')!
CefAudioHandler addClassConstant: '_OffsetOf_get_audio_parameters' value: 16r14!
CefAudioHandler addClassConstant: '_OffsetOf_on_audio_stream_error' value: 16r24!
CefAudioHandler addClassConstant: '_OffsetOf_on_audio_stream_packet' value: 16r1C!
CefAudioHandler addClassConstant: '_OffsetOf_on_audio_stream_started' value: 16r18!
CefAudioHandler addClassConstant: '_OffsetOf_on_audio_stream_stopped' value: 16r20!
CefAudioHandler comment: ''!
!CefAudioHandler categoriesForClass!External-Data-Structured! !
!CefAudioHandler methodsFor!

get_audio_parameters
	"Answer the <ExternalAddress> value of the receiver's 'get_audio_parameters' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_audio_parameters) asExternalAddress!

get_audio_parameters: anExternalAddress
	"Set the receiver's 'get_audio_parameters' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_audio_parameters put: anExternalAddress!

on_audio_stream_error
	"Answer the <ExternalAddress> value of the receiver's 'on_audio_stream_error' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_audio_stream_error) asExternalAddress!

on_audio_stream_error: anExternalAddress
	"Set the receiver's 'on_audio_stream_error' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_audio_stream_error put: anExternalAddress!

on_audio_stream_packet
	"Answer the <ExternalAddress> value of the receiver's 'on_audio_stream_packet' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_audio_stream_packet) asExternalAddress!

on_audio_stream_packet: anExternalAddress
	"Set the receiver's 'on_audio_stream_packet' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_audio_stream_packet put: anExternalAddress!

on_audio_stream_started
	"Answer the <ExternalAddress> value of the receiver's 'on_audio_stream_started' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_audio_stream_started) asExternalAddress!

on_audio_stream_started: anExternalAddress
	"Set the receiver's 'on_audio_stream_started' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_audio_stream_started put: anExternalAddress!

on_audio_stream_stopped
	"Answer the <ExternalAddress> value of the receiver's 'on_audio_stream_stopped' field."

	^(bytes uintPtrAtOffset: _OffsetOf_on_audio_stream_stopped) asExternalAddress!

on_audio_stream_stopped: anExternalAddress
	"Set the receiver's 'on_audio_stream_stopped' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_on_audio_stream_stopped put: anExternalAddress! !
!CefAudioHandler categoriesForMethods!
get_audio_parameters!**compiled accessors**!public! !
get_audio_parameters:!**compiled accessors**!public! !
on_audio_stream_error!**compiled accessors**!public! !
on_audio_stream_error:!**compiled accessors**!public! !
on_audio_stream_packet!**compiled accessors**!public! !
on_audio_stream_packet:!**compiled accessors**!public! !
on_audio_stream_started!**compiled accessors**!public! !
on_audio_stream_started:!**compiled accessors**!public! !
on_audio_stream_stopped!**compiled accessors**!public! !
on_audio_stream_stopped:!**compiled accessors**!public! !
!

!CefAudioHandler class methodsFor!

defineFields
	"CefAudioHandler  compileDefinition"

	super defineFields.
	self
		defineField: #get_audio_parameters
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: sdword CefAudioHandler* CefBrowser* CefAudioParameters*')
					smalltalkName: #getAudioParameters:browser:params:);
		defineField: #on_audio_stream_started
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefAudioHandler* CefBrowser* CefAudioParameters* sdword')
					smalltalkName: #onAudioStreamStarted:browser:params:channels:);
		defineField: #on_audio_stream_packet type: LPVOIDField new;
			"type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefAudioHandler* CefBrowser* float** sdword sqword')
					smalltalkName: #onAudioStreamPacket:browser:data:frames:pts:);"
		defineField: #on_audio_stream_stopped
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefAudioHandler* CefBrowser*')
					smalltalkName: #onAudioStreamStopped:browser:);
		defineField: #on_audio_stream_error
			type: (CallbackField descriptor: (ExternalDescriptor
							fromString: 'stdcall: void CefAudioHandler* CefBrowser* CefString*')
					smalltalkName: #onAudioStreamError:browser:message:)!

getFieldNames
	^#(#base #get_audio_parameters #on_audio_stream_started #on_audio_stream_packet #on_audio_stream_stopped #on_audio_stream_error)! !
!CefAudioHandler class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

