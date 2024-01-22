"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefSchemeRegistrar
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_add_custom_scheme'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefSchemeRegistrar guid: (GUID fromString: '{1a166904-f1c1-4eed-9ed1-aca8dd2ca7fb}')!
CefSchemeRegistrar addClassConstant: '_OffsetOf_add_custom_scheme' value: 16r14!
CefSchemeRegistrar comment: ''!
!CefSchemeRegistrar categoriesForClass!External-Data-Structured! !
!CefSchemeRegistrar methodsFor!

_addCustomScheme_cefSchemeRegistrar: cefSchemeRegistrar schemeName: schemeName options: options
	<stdcall: void add_custom_scheme CefSchemeRegistrar* CefString* sdword>
	^self invalidCall: _failureCode!

add_custom_scheme
	"Answer the <ExternalAddress> value of the receiver's 'add_custom_scheme' field."

	^(bytes uintPtrAtOffset: _OffsetOf_add_custom_scheme) asExternalAddress!

add_custom_scheme: anExternalAddress
	"Set the receiver's 'add_custom_scheme' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_add_custom_scheme put: anExternalAddress!

addCustomScheme_schemeName: schemeName options: options
	| method arguments |
	method := self class externalMethodAt: #_addCustomScheme_cefSchemeRegistrar:schemeName:options:
				ifAbsentBindTo: self add_custom_scheme.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: schemeName;
		at: 3 put: options.
	^method value: self withArguments: arguments! !
!CefSchemeRegistrar categoriesForMethods!
_addCustomScheme_cefSchemeRegistrar:schemeName:options:!**compiled accessors**!private! !
add_custom_scheme!**compiled accessors**!public! !
add_custom_scheme:!**compiled accessors**!public! !
addCustomScheme_schemeName:options:!**compiled accessors**!public! !
!

!CefSchemeRegistrar class methodsFor!

defineFields
	"CefSchemeRegistrar  compileDefinition"

	super defineFields.
	self defineField: #add_custom_scheme
		type: (MethodField
				descriptor: (ExternalDescriptor fromString: 'stdcall: void CefSchemeRegistrar* CefString* sdword')
				smalltalkName: #addCustomScheme_schemeName:options:)!

getFieldNames
	^#(#cefSize #add_ref #release #has_one_ref #has_at_least_one_ref #add_custom_scheme)! !
!CefSchemeRegistrar class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

