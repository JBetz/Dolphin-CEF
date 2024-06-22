"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefSslStatus
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_cert_status _OffsetOf_get_content_status _OffsetOf_get_sslversion _OffsetOf_get_x509certificate _OffsetOf_is_secure_connection'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefSslStatus guid: (GUID fromString: '{f772cafd-c958-4e3e-a8c2-48a43718f3b4}')!

CefSslStatus addClassConstant: '_OffsetOf_get_cert_status' value: 16r18!
CefSslStatus addClassConstant: '_OffsetOf_get_content_status' value: 16r20!
CefSslStatus addClassConstant: '_OffsetOf_get_sslversion' value: 16r1C!
CefSslStatus addClassConstant: '_OffsetOf_get_x509certificate' value: 16r24!
CefSslStatus addClassConstant: '_OffsetOf_is_secure_connection' value: 16r14!

CefSslStatus comment: ''!

!CefSslStatus categoriesForClass!External-Data-Structured! !

!CefSslStatus methodsFor!

_getCertStatus_cefSslStatus: cefSslStatus
	<stdcall: sdword get_cert_status CefSslStatus*>
	^self invalidCall: _failureCode!

_getContentStatus_cefSslStatus: cefSslStatus
	<stdcall: sdword get_content_status CefSslStatus*>
	^self invalidCall: _failureCode!

_getSslversion_cefSslStatus: cefSslStatus
	<stdcall: sdword get_sslversion CefSslStatus*>
	^self invalidCall: _failureCode!

_getX509certificate_cefSslStatus: cefSslStatus
	<stdcall: CefX509Certificate* get_x509certificate CefSslStatus*>
	^self invalidCall: _failureCode!

_isSecureConnection_cefSslStatus: cefSslStatus
	<stdcall: sdword is_secure_connection CefSslStatus*>
	^self invalidCall: _failureCode!

get_cert_status
	"Answer the <ExternalAddress> value of the receiver's 'get_cert_status' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_cert_status) asExternalAddress!

get_cert_status: anExternalAddress
	"Set the receiver's 'get_cert_status' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_cert_status put: anExternalAddress!

get_content_status
	"Answer the <ExternalAddress> value of the receiver's 'get_content_status' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_content_status) asExternalAddress!

get_content_status: anExternalAddress
	"Set the receiver's 'get_content_status' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_content_status put: anExternalAddress!

get_sslversion
	"Answer the <ExternalAddress> value of the receiver's 'get_sslversion' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_sslversion) asExternalAddress!

get_sslversion: anExternalAddress
	"Set the receiver's 'get_sslversion' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_sslversion put: anExternalAddress!

get_x509certificate
	"Answer the <ExternalAddress> value of the receiver's 'get_x509certificate' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_x509certificate) asExternalAddress!

get_x509certificate: anExternalAddress
	"Set the receiver's 'get_x509certificate' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_x509certificate put: anExternalAddress!

getCertStatus
	| method |
	method := self class externalMethodAt: #_getCertStatus_cefSslStatus:
				ifAbsentBindTo: self get_cert_status.
	^method value: self withArguments: (Array with: self)!

getContentStatus
	| method |
	method := self class externalMethodAt: #_getContentStatus_cefSslStatus:
				ifAbsentBindTo: self get_content_status.
	^method value: self withArguments: (Array with: self)!

getSslversion
	| method |
	method := self class externalMethodAt: #_getSslversion_cefSslStatus:
				ifAbsentBindTo: self get_sslversion.
	^method value: self withArguments: (Array with: self)!

getX509certificate
	| method |
	method := self class externalMethodAt: #_getX509certificate_cefSslStatus:
				ifAbsentBindTo: self get_x509certificate.
	^method value: self withArguments: (Array with: self)!

is_secure_connection
	"Answer the <ExternalAddress> value of the receiver's 'is_secure_connection' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_secure_connection) asExternalAddress!

is_secure_connection: anExternalAddress
	"Set the receiver's 'is_secure_connection' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_secure_connection put: anExternalAddress!

isSecureConnection
	| method |
	method := self class externalMethodAt: #_isSecureConnection_cefSslStatus:
				ifAbsentBindTo: self is_secure_connection.
	^method value: self withArguments: (Array with: self)! !

!CefSslStatus categoriesForMethods!
_getCertStatus_cefSslStatus:!**compiled accessors**!private! !
_getContentStatus_cefSslStatus:!**compiled accessors**!private! !
_getSslversion_cefSslStatus:!**compiled accessors**!private! !
_getX509certificate_cefSslStatus:!**compiled accessors**!private! !
_isSecureConnection_cefSslStatus:!**compiled accessors**!private! !
get_cert_status!**compiled accessors**!public! !
get_cert_status:!**compiled accessors**!public! !
get_content_status!**compiled accessors**!public! !
get_content_status:!**compiled accessors**!public! !
get_sslversion!**compiled accessors**!public! !
get_sslversion:!**compiled accessors**!public! !
get_x509certificate!**compiled accessors**!public! !
get_x509certificate:!**compiled accessors**!public! !
getCertStatus!**compiled accessors**!public! !
getContentStatus!**compiled accessors**!public! !
getSslversion!**compiled accessors**!public! !
getX509certificate!**compiled accessors**!public! !
is_secure_connection!**compiled accessors**!public! !
is_secure_connection:!**compiled accessors**!public! !
isSecureConnection!**compiled accessors**!public! !
!

!CefSslStatus class methodsFor!

defineFields
	"CefSslStatus compileDefinition"

	super defineFields.
	self
		defineField: #is_secure_connection
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefSslStatus*'));
		defineField: #get_cert_status
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefSslStatus*'));
		defineField: #get_sslversion
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefSslStatus*'));
		defineField: #get_content_status
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefSslStatus*'));
		defineField: #get_x509certificate
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: CefX509Certificate* CefSslStatus*'))!

getFieldNames
	^#(#base #is_secure_connection #get_cert_status #get_sslversion #get_content_status #get_x509certificate)! !

!CefSslStatus class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

