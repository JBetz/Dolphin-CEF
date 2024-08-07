﻿"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefBrowser
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_can_go_back _OffsetOf_can_go_forward _OffsetOf_get_focused_frame _OffsetOf_get_frame_by_identifier _OffsetOf_get_frame_by_name _OffsetOf_get_frame_count _OffsetOf_get_frame_identifiers _OffsetOf_get_frame_names _OffsetOf_get_host _OffsetOf_get_identifier _OffsetOf_get_main_frame _OffsetOf_go_back _OffsetOf_go_forward _OffsetOf_has_document _OffsetOf_is_loading _OffsetOf_is_popup _OffsetOf_is_same _OffsetOf_is_valid _OffsetOf_reload _OffsetOf_reload_ignore_cache _OffsetOf_stop_load'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefBrowser guid: (GUID fromString: '{d434de6f-00d9-4cee-9953-fbfbd09ffa9b}')!

CefBrowser addClassConstant: '_OffsetOf_can_go_back' value: 16r1C!
CefBrowser addClassConstant: '_OffsetOf_can_go_forward' value: 16r24!
CefBrowser addClassConstant: '_OffsetOf_get_focused_frame' value: 16r50!
CefBrowser addClassConstant: '_OffsetOf_get_frame_by_identifier' value: 16r54!
CefBrowser addClassConstant: '_OffsetOf_get_frame_by_name' value: 16r58!
CefBrowser addClassConstant: '_OffsetOf_get_frame_count' value: 16r5C!
CefBrowser addClassConstant: '_OffsetOf_get_frame_identifiers' value: 16r60!
CefBrowser addClassConstant: '_OffsetOf_get_frame_names' value: 16r64!
CefBrowser addClassConstant: '_OffsetOf_get_host' value: 16r18!
CefBrowser addClassConstant: '_OffsetOf_get_identifier' value: 16r3C!
CefBrowser addClassConstant: '_OffsetOf_get_main_frame' value: 16r4C!
CefBrowser addClassConstant: '_OffsetOf_go_back' value: 16r20!
CefBrowser addClassConstant: '_OffsetOf_go_forward' value: 16r28!
CefBrowser addClassConstant: '_OffsetOf_has_document' value: 16r48!
CefBrowser addClassConstant: '_OffsetOf_is_loading' value: 16r2C!
CefBrowser addClassConstant: '_OffsetOf_is_popup' value: 16r44!
CefBrowser addClassConstant: '_OffsetOf_is_same' value: 16r40!
CefBrowser addClassConstant: '_OffsetOf_is_valid' value: 16r14!
CefBrowser addClassConstant: '_OffsetOf_reload' value: 16r30!
CefBrowser addClassConstant: '_OffsetOf_reload_ignore_cache' value: 16r34!
CefBrowser addClassConstant: '_OffsetOf_stop_load' value: 16r38!

CefBrowser comment: ''!

!CefBrowser categoriesForClass!External-Data-Structured! !

!CefBrowser methodsFor!

_callReload_cefBrowser: cefBrowser
	<stdcall: void reload CefBrowser*>
	^self invalidCall: _failureCode!

_callReloadIgnoreCache_cefBrowser: cefBrowser
	<stdcall: void reload_ignore_cache CefBrowser*>
	^self invalidCall: _failureCode!

_canGoBack_cefBrowser: cefBrowser
	<stdcall: bool can_go_back CefBrowser*>
	^self invalidCall: _failureCode!

_canGoForward_cefBrowser: cefBrowser
	<stdcall: bool can_go_forward CefBrowser*>
	^self invalidCall: _failureCode!

_getFocusedFrame_cefBrowser: cefBrowser
	<stdcall: CefFrame* get_focused_frame CefBrowser*>
	^self invalidCall: _failureCode!

_getFrameByIdentifier_cefBrowser: cefBrowser identifier: identifier
	<stdcall: CefFrame* get_frame_by_identifier CefBrowser* CefString*>
	^self invalidCall: _failureCode!

_getFrameByName_cefBrowser: cefBrowser name: name
	<stdcall: CefFrame* get_frame_by_name CefBrowser* CefString*>
	^self invalidCall: _failureCode!

_getFrameCount_cefBrowser: cefBrowser
	<stdcall: dword get_frame_count CefBrowser*>
	^self invalidCall: _failureCode!

_getFrameIdentifiers_cefBrowser: cefBrowser identifiers: identifiers
	<stdcall: void get_frame_identifiers CefBrowser* CefStringList*>
	^self invalidCall: _failureCode!

_getFrameNames_cefBrowser: cefBrowser names: names
	<stdcall: void get_frame_names CefBrowser* CefStringList*>
	^self invalidCall: _failureCode!

_getHost_cefBrowser: cefBrowser
	<stdcall: CefBrowserHost* get_host CefBrowser*>
	^self invalidCall: _failureCode!

_getIdentifier_cefBrowser: cefBrowser
	<stdcall: sdword get_identifier CefBrowser*>
	^self invalidCall: _failureCode!

_getMainFrame_cefBrowser: cefBrowser
	<stdcall: CefFrame* get_main_frame CefBrowser*>
	^self invalidCall: _failureCode!

_goBack_cefBrowser: cefBrowser
	<stdcall: void go_back CefBrowser*>
	^self invalidCall: _failureCode!

_goForward_cefBrowser: cefBrowser
	<stdcall: void go_forward CefBrowser*>
	^self invalidCall: _failureCode!

_hasDocument_cefBrowser: cefBrowser
	<stdcall: bool has_document CefBrowser*>
	^self invalidCall: _failureCode!

_isLoading_cefBrowser: cefBrowser
	<stdcall: bool is_loading CefBrowser*>
	^self invalidCall: _failureCode!

_isPopup_cefBrowser: cefBrowser
	<stdcall: bool is_popup CefBrowser*>
	^self invalidCall: _failureCode!

_isSame_cefBrowser: cefBrowser that: that
	<stdcall: void is_same CefBrowser* CefBrowser*>
	^self invalidCall: _failureCode!

_isValid_cefBrowser: cefBrowser
	<stdcall: bool is_valid CefBrowser*>
	^self invalidCall: _failureCode!

_stopLoad_cefBrowser: cefBrowser
	<stdcall: void stop_load CefBrowser*>
	^self invalidCall: _failureCode!

callReload
	| method |
	method := self class externalMethodAt: #_callReload_cefBrowser: ifAbsentBindTo: self reload.
	^method value: self withArguments: (Array with: self)!

callReloadIgnoreCache
	| method |
	method := self class externalMethodAt: #_callReloadIgnoreCache_cefBrowser:
				ifAbsentBindTo: self reload_ignore_cache.
	^method value: self withArguments: (Array with: self)!

can_go_back
	"Answer the <ExternalAddress> value of the receiver's 'can_go_back' field."

	^(bytes uintPtrAtOffset: _OffsetOf_can_go_back) asExternalAddress!

can_go_back: anExternalAddress
	"Set the receiver's 'can_go_back' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_can_go_back put: anExternalAddress!

can_go_forward
	"Answer the <ExternalAddress> value of the receiver's 'can_go_forward' field."

	^(bytes uintPtrAtOffset: _OffsetOf_can_go_forward) asExternalAddress!

can_go_forward: anExternalAddress
	"Set the receiver's 'can_go_forward' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_can_go_forward put: anExternalAddress!

canGoBack
	| method |
	method := self class externalMethodAt: #_canGoBack_cefBrowser: ifAbsentBindTo: self can_go_back.
	^method value: self withArguments: (Array with: self)!

canGoForward
	| method |
	method := self class externalMethodAt: #_canGoForward_cefBrowser:
				ifAbsentBindTo: self can_go_forward.
	^method value: self withArguments: (Array with: self)!

get_focused_frame
	"Answer the <ExternalAddress> value of the receiver's 'get_focused_frame' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_focused_frame) asExternalAddress!

get_focused_frame: anExternalAddress
	"Set the receiver's 'get_focused_frame' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_focused_frame put: anExternalAddress!

get_frame_by_identifier
	"Answer the <ExternalAddress> value of the receiver's 'get_frame_by_identifier' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_frame_by_identifier) asExternalAddress!

get_frame_by_identifier: anExternalAddress
	"Set the receiver's 'get_frame_by_identifier' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_frame_by_identifier put: anExternalAddress!

get_frame_by_name
	"Answer the <ExternalAddress> value of the receiver's 'get_frame_by_name' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_frame_by_name) asExternalAddress!

get_frame_by_name: anExternalAddress
	"Set the receiver's 'get_frame_by_name' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_frame_by_name put: anExternalAddress!

get_frame_count
	"Answer the <ExternalAddress> value of the receiver's 'get_frame_count' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_frame_count) asExternalAddress!

get_frame_count: anExternalAddress
	"Set the receiver's 'get_frame_count' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_frame_count put: anExternalAddress!

get_frame_identifiers
	"Answer the <ExternalAddress> value of the receiver's 'get_frame_identifiers' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_frame_identifiers) asExternalAddress!

get_frame_identifiers: anExternalAddress
	"Set the receiver's 'get_frame_identifiers' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_frame_identifiers put: anExternalAddress!

get_frame_names
	"Answer the <ExternalAddress> value of the receiver's 'get_frame_names' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_frame_names) asExternalAddress!

get_frame_names: anExternalAddress
	"Set the receiver's 'get_frame_names' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_frame_names put: anExternalAddress!

get_host
	"Answer the <ExternalAddress> value of the receiver's 'get_host' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_host) asExternalAddress!

get_host: anExternalAddress
	"Set the receiver's 'get_host' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_host put: anExternalAddress!

get_identifier
	"Answer the <ExternalAddress> value of the receiver's 'get_identifier' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_identifier) asExternalAddress!

get_identifier: anExternalAddress
	"Set the receiver's 'get_identifier' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_identifier put: anExternalAddress!

get_main_frame
	"Answer the <ExternalAddress> value of the receiver's 'get_main_frame' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_main_frame) asExternalAddress!

get_main_frame: anExternalAddress
	"Set the receiver's 'get_main_frame' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_main_frame put: anExternalAddress!

getFocusedFrame
	| method |
	method := self class externalMethodAt: #_getFocusedFrame_cefBrowser:
				ifAbsentBindTo: self get_focused_frame.
	^method value: self withArguments: (Array with: self)!

getFrameByIdentifier_identifier: identifier
	| method arguments |
	method := self class externalMethodAt: #_getFrameByIdentifier_cefBrowser:identifier:
				ifAbsentBindTo: self get_frame_by_identifier.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: identifier.
	^method value: self withArguments: arguments!

getFrameByName_name: name
	| method arguments |
	method := self class externalMethodAt: #_getFrameByName_cefBrowser:name:
				ifAbsentBindTo: self get_frame_by_name.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: name.
	^method value: self withArguments: arguments!

getFrameCount
	| method |
	method := self class externalMethodAt: #_getFrameCount_cefBrowser:
				ifAbsentBindTo: self get_frame_count.
	^method value: self withArguments: (Array with: self)!

getFrameIdentifiers_identifiers: identifiers
	| method arguments |
	method := self class externalMethodAt: #_getFrameIdentifiers_cefBrowser:identifiers:
				ifAbsentBindTo: self get_frame_identifiers.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: identifiers.
	^method value: self withArguments: arguments!

getFrameNames_names: names
	| method arguments |
	method := self class externalMethodAt: #_getFrameNames_cefBrowser:names:
				ifAbsentBindTo: self get_frame_names.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: names.
	^method value: self withArguments: arguments!

getHost
	| method |
	method := self class externalMethodAt: #_getHost_cefBrowser: ifAbsentBindTo: self get_host.
	^method value: self withArguments: (Array with: self)!

getIdentifier
	| method |
	method := self class externalMethodAt: #_getIdentifier_cefBrowser:
				ifAbsentBindTo: self get_identifier.
	^method value: self withArguments: (Array with: self)!

getMainFrame
	| method |
	method := self class externalMethodAt: #_getMainFrame_cefBrowser:
				ifAbsentBindTo: self get_main_frame.
	^method value: self withArguments: (Array with: self)!

go_back
	"Answer the <ExternalAddress> value of the receiver's 'go_back' field."

	^(bytes uintPtrAtOffset: _OffsetOf_go_back) asExternalAddress!

go_back: anExternalAddress
	"Set the receiver's 'go_back' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_go_back put: anExternalAddress!

go_forward
	"Answer the <ExternalAddress> value of the receiver's 'go_forward' field."

	^(bytes uintPtrAtOffset: _OffsetOf_go_forward) asExternalAddress!

go_forward: anExternalAddress
	"Set the receiver's 'go_forward' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_go_forward put: anExternalAddress!

goBack
	| method |
	method := self class externalMethodAt: #_goBack_cefBrowser: ifAbsentBindTo: self go_back.
	^method value: self withArguments: (Array with: self)!

goForward
	| method |
	method := self class externalMethodAt: #_goForward_cefBrowser: ifAbsentBindTo: self go_forward.
	^method value: self withArguments: (Array with: self)!

has_document
	"Answer the <ExternalAddress> value of the receiver's 'has_document' field."

	^(bytes uintPtrAtOffset: _OffsetOf_has_document) asExternalAddress!

has_document: anExternalAddress
	"Set the receiver's 'has_document' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_has_document put: anExternalAddress!

hasDocument
	| method |
	method := self class externalMethodAt: #_hasDocument_cefBrowser: ifAbsentBindTo: self has_document.
	^method value: self withArguments: (Array with: self)!

is_loading
	"Answer the <ExternalAddress> value of the receiver's 'is_loading' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_loading) asExternalAddress!

is_loading: anExternalAddress
	"Set the receiver's 'is_loading' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_loading put: anExternalAddress!

is_popup
	"Answer the <ExternalAddress> value of the receiver's 'is_popup' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_popup) asExternalAddress!

is_popup: anExternalAddress
	"Set the receiver's 'is_popup' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_popup put: anExternalAddress!

is_same
	"Answer the <ExternalAddress> value of the receiver's 'is_same' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_same) asExternalAddress!

is_same: anExternalAddress
	"Set the receiver's 'is_same' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_same put: anExternalAddress!

is_valid
	"Answer the <ExternalAddress> value of the receiver's 'is_valid' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_valid) asExternalAddress!

is_valid: anExternalAddress
	"Set the receiver's 'is_valid' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_valid put: anExternalAddress!

isLoading
	| method |
	method := self class externalMethodAt: #_isLoading_cefBrowser: ifAbsentBindTo: self is_loading.
	^method value: self withArguments: (Array with: self)!

isPopup
	| method |
	method := self class externalMethodAt: #_isPopup_cefBrowser: ifAbsentBindTo: self is_popup.
	^method value: self withArguments: (Array with: self)!

isSame_that: that
	| method arguments |
	method := self class externalMethodAt: #_isSame_cefBrowser:that: ifAbsentBindTo: self is_same.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: that.
	^method value: self withArguments: arguments!

isValid
	| method |
	method := self class externalMethodAt: #_isValid_cefBrowser: ifAbsentBindTo: self is_valid.
	^method value: self withArguments: (Array with: self)!

reload
	"Answer the <ExternalAddress> value of the receiver's 'reload' field."

	^(bytes uintPtrAtOffset: _OffsetOf_reload) asExternalAddress!

reload: anExternalAddress
	"Set the receiver's 'reload' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_reload put: anExternalAddress!

reload_ignore_cache
	"Answer the <ExternalAddress> value of the receiver's 'reload_ignore_cache' field."

	^(bytes uintPtrAtOffset: _OffsetOf_reload_ignore_cache) asExternalAddress!

reload_ignore_cache: anExternalAddress
	"Set the receiver's 'reload_ignore_cache' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_reload_ignore_cache put: anExternalAddress!

stop_load
	"Answer the <ExternalAddress> value of the receiver's 'stop_load' field."

	^(bytes uintPtrAtOffset: _OffsetOf_stop_load) asExternalAddress!

stop_load: anExternalAddress
	"Set the receiver's 'stop_load' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_stop_load put: anExternalAddress!

stopLoad
	| method |
	method := self class externalMethodAt: #_stopLoad_cefBrowser: ifAbsentBindTo: self stop_load.
	^method value: self withArguments: (Array with: self)! !

!CefBrowser categoriesForMethods!
_callReload_cefBrowser:!**compiled accessors**!private! !
_callReloadIgnoreCache_cefBrowser:!**compiled accessors**!private! !
_canGoBack_cefBrowser:!**compiled accessors**!private! !
_canGoForward_cefBrowser:!**compiled accessors**!private! !
_getFocusedFrame_cefBrowser:!**compiled accessors**!private! !
_getFrameByIdentifier_cefBrowser:identifier:!**compiled accessors**!private! !
_getFrameByName_cefBrowser:name:!**compiled accessors**!private! !
_getFrameCount_cefBrowser:!**compiled accessors**!private! !
_getFrameIdentifiers_cefBrowser:identifiers:!**compiled accessors**!private! !
_getFrameNames_cefBrowser:names:!**compiled accessors**!private! !
_getHost_cefBrowser:!**compiled accessors**!private! !
_getIdentifier_cefBrowser:!**compiled accessors**!private! !
_getMainFrame_cefBrowser:!**compiled accessors**!private! !
_goBack_cefBrowser:!**compiled accessors**!private! !
_goForward_cefBrowser:!**compiled accessors**!private! !
_hasDocument_cefBrowser:!**compiled accessors**!private! !
_isLoading_cefBrowser:!**compiled accessors**!private! !
_isPopup_cefBrowser:!**compiled accessors**!private! !
_isSame_cefBrowser:that:!**compiled accessors**!private! !
_isValid_cefBrowser:!**compiled accessors**!private! !
_stopLoad_cefBrowser:!**compiled accessors**!private! !
callReload!**compiled accessors**!public! !
callReloadIgnoreCache!**compiled accessors**!public! !
can_go_back!**compiled accessors**!public! !
can_go_back:!**compiled accessors**!public! !
can_go_forward!**compiled accessors**!public! !
can_go_forward:!**compiled accessors**!public! !
canGoBack!**compiled accessors**!public! !
canGoForward!**compiled accessors**!public! !
get_focused_frame!**compiled accessors**!public! !
get_focused_frame:!**compiled accessors**!public! !
get_frame_by_identifier!**compiled accessors**!public! !
get_frame_by_identifier:!**compiled accessors**!public! !
get_frame_by_name!**compiled accessors**!public! !
get_frame_by_name:!**compiled accessors**!public! !
get_frame_count!**compiled accessors**!public! !
get_frame_count:!**compiled accessors**!public! !
get_frame_identifiers!**compiled accessors**!public! !
get_frame_identifiers:!**compiled accessors**!public! !
get_frame_names!**compiled accessors**!public! !
get_frame_names:!**compiled accessors**!public! !
get_host!**compiled accessors**!public! !
get_host:!**compiled accessors**!public! !
get_identifier!**compiled accessors**!public! !
get_identifier:!**compiled accessors**!public! !
get_main_frame!**compiled accessors**!public! !
get_main_frame:!**compiled accessors**!public! !
getFocusedFrame!**compiled accessors**!public! !
getFrameByIdentifier_identifier:!**compiled accessors**!public! !
getFrameByName_name:!**compiled accessors**!public! !
getFrameCount!**compiled accessors**!public! !
getFrameIdentifiers_identifiers:!**compiled accessors**!public! !
getFrameNames_names:!**compiled accessors**!public! !
getHost!**compiled accessors**!public! !
getIdentifier!**compiled accessors**!public! !
getMainFrame!**compiled accessors**!public! !
go_back!**compiled accessors**!public! !
go_back:!**compiled accessors**!public! !
go_forward!**compiled accessors**!public! !
go_forward:!**compiled accessors**!public! !
goBack!**compiled accessors**!public! !
goForward!**compiled accessors**!public! !
has_document!**compiled accessors**!public! !
has_document:!**compiled accessors**!public! !
hasDocument!**compiled accessors**!public! !
is_loading!**compiled accessors**!public! !
is_loading:!**compiled accessors**!public! !
is_popup!**compiled accessors**!public! !
is_popup:!**compiled accessors**!public! !
is_same!**compiled accessors**!public! !
is_same:!**compiled accessors**!public! !
is_valid!**compiled accessors**!public! !
is_valid:!**compiled accessors**!public! !
isLoading!**compiled accessors**!public! !
isPopup!**compiled accessors**!public! !
isSame_that:!**compiled accessors**!public! !
isValid!**compiled accessors**!public! !
reload!**compiled accessors**!public! !
reload:!**compiled accessors**!public! !
reload_ignore_cache!**compiled accessors**!public! !
reload_ignore_cache:!**compiled accessors**!public! !
stop_load!**compiled accessors**!public! !
stop_load:!**compiled accessors**!public! !
stopLoad!**compiled accessors**!public! !
!

!CefBrowser class methodsFor!

defineFields
	"CefBrowser  compileDefinition"

	super defineFields.
	self
		defineField: #is_valid
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefBrowser*'));
		defineField: #get_host
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefBrowserHost* CefBrowser*'));
		defineField: #can_go_back
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefBrowser*'));
		defineField: #go_back
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser*'));
		defineField: #can_go_forward
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefBrowser*'));
		defineField: #go_forward
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser*'));
		defineField: #is_loading
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefBrowser*'));
		defineField: #reload
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser*')
					smalltalkName: #callReload);
		defineField: #reload_ignore_cache
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser*')
					smalltalkName: #callReloadIgnoreCache);
		defineField: #stop_load
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser*'));
		defineField: #get_identifier
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefBrowser*'));
		defineField: #is_same
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser* CefBrowser*')
					smalltalkName: #isSame_that:);
		defineField: #is_popup
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefBrowser*'));
		defineField: #has_document
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefBrowser*'));
		defineField: #get_main_frame
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: CefFrame* CefBrowser*'));
		defineField: #get_focused_frame
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: CefFrame* CefBrowser*'));
		defineField: #get_frame_by_identifier
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefFrame* CefBrowser* CefString*')
					smalltalkName: #getFrameByIdentifier_identifier:);
		defineField: #get_frame_by_name
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefFrame* CefBrowser* CefString*')
					smalltalkName: #getFrameByName_name:);
		defineField: #get_frame_count
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: dword CefBrowser*'));
		defineField: #get_frame_identifiers
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser* CefStringList*')
					smalltalkName: #getFrameIdentifiers_identifiers:);
		defineField: #get_frame_names
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser* CefStringList*')
					smalltalkName: #getFrameNames_names:)!

getFieldNames
	^#(#base #is_valid #get_host #can_go_back #go_back #can_go_forward #go_forward #is_loading #reload #reload_ignore_cache #stop_load #get_identifier #is_same #is_popup #has_document #get_main_frame #get_focused_frame #get_frame_by_identifier #get_frame_by_name #get_frame_count #get_frame_identifiers #get_frame_names)! !

!CefBrowser class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

