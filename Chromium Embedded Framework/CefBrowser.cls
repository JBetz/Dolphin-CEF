"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefBrowser
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_can_go_back _OffsetOf_can_go_forward _OffsetOf_get_focused_frame _OffsetOf_get_frame _OffsetOf_get_frame_byident _OffsetOf_get_frame_count _OffsetOf_get_frame_identifiers _OffsetOf_get_frame_names _OffsetOf_get_host _OffsetOf_get_identifier _OffsetOf_get_main_frame _OffsetOf_go_back _OffsetOf_go_forward _OffsetOf_has_document _OffsetOf_is_loading _OffsetOf_is_popup _OffsetOf_is_same _OffsetOf_is_valid _OffsetOf_reload _OffsetOf_reload_ignore_cache _OffsetOf_stop_load'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefBrowser guid: (GUID fromString: '{d434de6f-00d9-4cee-9953-fbfbd09ffa9b}')!
CefBrowser addClassConstant: '_OffsetOf_can_go_back' value: 16r1C!
CefBrowser addClassConstant: '_OffsetOf_can_go_forward' value: 16r24!
CefBrowser addClassConstant: '_OffsetOf_get_focused_frame' value: 16r50!
CefBrowser addClassConstant: '_OffsetOf_get_frame' value: 16r58!
CefBrowser addClassConstant: '_OffsetOf_get_frame_byident' value: 16r54!
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

_getFrame_cefBrowser: cefBrowser name: name
	<stdcall: CefFrame* get_frame CefBrowser* CefString*>
	^self invalidCall: _failureCode!

_getFrameByident_cefBrowser: cefBrowser identifier: identifier
	<stdcall: CefFrame* get_frame_byident CefBrowser* sqword>
	^self invalidCall: _failureCode!

_getFrameCount_cefBrowser: cefBrowser
	<stdcall: dword get_frame_count CefBrowser*>
	^self invalidCall: _failureCode!

_getFrameIdentifiers_cefBrowser: cefBrowser identifiersCount: identifiersCount identifiers: identifiers
	<stdcall: void get_frame_identifiers CefBrowser* dword* sqword*>
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
	"Answer the <Integer> value of the receiver's 'can_go_back' field."

	^bytes dwordAtOffset: _OffsetOf_can_go_back!

can_go_back: anInteger
	"Set the receiver's 'can_go_back' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_can_go_back put: anInteger!

can_go_forward
	"Answer the <Integer> value of the receiver's 'can_go_forward' field."

	^bytes dwordAtOffset: _OffsetOf_can_go_forward!

can_go_forward: anInteger
	"Set the receiver's 'can_go_forward' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_can_go_forward put: anInteger!

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
	"Answer the <Integer> value of the receiver's 'get_focused_frame' field."

	^bytes dwordAtOffset: _OffsetOf_get_focused_frame!

get_focused_frame: anInteger
	"Set the receiver's 'get_focused_frame' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_focused_frame put: anInteger!

get_frame
	"Answer the <Integer> value of the receiver's 'get_frame' field."

	^bytes dwordAtOffset: _OffsetOf_get_frame!

get_frame: anInteger
	"Set the receiver's 'get_frame' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_frame put: anInteger!

get_frame_byident
	"Answer the <Integer> value of the receiver's 'get_frame_byident' field."

	^bytes dwordAtOffset: _OffsetOf_get_frame_byident!

get_frame_byident: anInteger
	"Set the receiver's 'get_frame_byident' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_frame_byident put: anInteger!

get_frame_count
	"Answer the <Integer> value of the receiver's 'get_frame_count' field."

	^bytes dwordAtOffset: _OffsetOf_get_frame_count!

get_frame_count: anInteger
	"Set the receiver's 'get_frame_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_frame_count put: anInteger!

get_frame_identifiers
	"Answer the <Integer> value of the receiver's 'get_frame_identifiers' field."

	^bytes dwordAtOffset: _OffsetOf_get_frame_identifiers!

get_frame_identifiers: anInteger
	"Set the receiver's 'get_frame_identifiers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_frame_identifiers put: anInteger!

get_frame_names
	"Answer the <Integer> value of the receiver's 'get_frame_names' field."

	^bytes dwordAtOffset: _OffsetOf_get_frame_names!

get_frame_names: anInteger
	"Set the receiver's 'get_frame_names' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_frame_names put: anInteger!

get_host
	"Answer the <ExternalAddress> value of the receiver's 'get_host' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_host) asExternalAddress!

get_host: anExternalAddress
	"Set the receiver's 'get_host' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_host put: anExternalAddress!

get_identifier
	"Answer the <Integer> value of the receiver's 'get_identifier' field."

	^bytes dwordAtOffset: _OffsetOf_get_identifier!

get_identifier: anInteger
	"Set the receiver's 'get_identifier' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_identifier put: anInteger!

get_main_frame
	"Answer the <Integer> value of the receiver's 'get_main_frame' field."

	^bytes dwordAtOffset: _OffsetOf_get_main_frame!

get_main_frame: anInteger
	"Set the receiver's 'get_main_frame' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_main_frame put: anInteger!

getFocusedFrame
	| method |
	method := self class externalMethodAt: #_getFocusedFrame_cefBrowser:
				ifAbsentBindTo: self get_focused_frame.
	^method value: self withArguments: (Array with: self)!

getFrame_name: name
	| method arguments |
	method := self class externalMethodAt: #_getFrame_cefBrowser:name: ifAbsentBindTo: self get_frame.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: name.
	^method value: self withArguments: arguments!

getFrameByident_identifier: identifier
	| method arguments |
	method := self class externalMethodAt: #_getFrameByident_cefBrowser:identifier:
				ifAbsentBindTo: self get_frame_byident.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: identifier.
	^method value: self withArguments: arguments!

getFrameCount
	| method |
	method := self class externalMethodAt: #_getFrameCount_cefBrowser:
				ifAbsentBindTo: self get_frame_count.
	^method value: self withArguments: (Array with: self)!

getFrameIdentifiers_identifiersCount: identifiersCount identifiers: identifiers
	| method arguments |
	method := self class
				externalMethodAt: #_getFrameIdentifiers_cefBrowser:identifiersCount:identifiers:
				ifAbsentBindTo: self get_frame_identifiers.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: identifiersCount;
		at: 3 put: identifiers.
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
	"Answer the <Integer> value of the receiver's 'go_back' field."

	^bytes dwordAtOffset: _OffsetOf_go_back!

go_back: anInteger
	"Set the receiver's 'go_back' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_go_back put: anInteger!

go_forward
	"Answer the <Integer> value of the receiver's 'go_forward' field."

	^bytes dwordAtOffset: _OffsetOf_go_forward!

go_forward: anInteger
	"Set the receiver's 'go_forward' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_go_forward put: anInteger!

goBack
	| method |
	method := self class externalMethodAt: #_goBack_cefBrowser: ifAbsentBindTo: self go_back.
	^method value: self withArguments: (Array with: self)!

goForward
	| method |
	method := self class externalMethodAt: #_goForward_cefBrowser: ifAbsentBindTo: self go_forward.
	^method value: self withArguments: (Array with: self)!

has_document
	"Answer the <Integer> value of the receiver's 'has_document' field."

	^bytes dwordAtOffset: _OffsetOf_has_document!

has_document: anInteger
	"Set the receiver's 'has_document' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_has_document put: anInteger!

hasDocument
	| method |
	method := self class externalMethodAt: #_hasDocument_cefBrowser: ifAbsentBindTo: self has_document.
	^method value: self withArguments: (Array with: self)!

is_loading
	"Answer the <Integer> value of the receiver's 'is_loading' field."

	^bytes dwordAtOffset: _OffsetOf_is_loading!

is_loading: anInteger
	"Set the receiver's 'is_loading' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_loading put: anInteger!

is_popup
	"Answer the <Integer> value of the receiver's 'is_popup' field."

	^bytes dwordAtOffset: _OffsetOf_is_popup!

is_popup: anInteger
	"Set the receiver's 'is_popup' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_popup put: anInteger!

is_same
	"Answer the <Integer> value of the receiver's 'is_same' field."

	^bytes dwordAtOffset: _OffsetOf_is_same!

is_same: anInteger
	"Set the receiver's 'is_same' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_same put: anInteger!

is_valid
	"Answer the <Integer> value of the receiver's 'is_valid' field."

	^bytes dwordAtOffset: _OffsetOf_is_valid!

is_valid: anInteger
	"Set the receiver's 'is_valid' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_valid put: anInteger!

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

reload: anInteger
	"Set the receiver's 'reload' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_reload put: anInteger!

reload_ignore_cache
	"Answer the <Integer> value of the receiver's 'reload_ignore_cache' field."

	^bytes dwordAtOffset: _OffsetOf_reload_ignore_cache!

reload_ignore_cache: anInteger
	"Set the receiver's 'reload_ignore_cache' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_reload_ignore_cache put: anInteger!

stop_load
	"Answer the <Integer> value of the receiver's 'stop_load' field."

	^bytes dwordAtOffset: _OffsetOf_stop_load!

stop_load: anInteger
	"Set the receiver's 'stop_load' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_stop_load put: anInteger!

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
_getFrame_cefBrowser:name:!**compiled accessors**!private! !
_getFrameByident_cefBrowser:identifier:!**compiled accessors**!private! !
_getFrameCount_cefBrowser:!**compiled accessors**!private! !
_getFrameIdentifiers_cefBrowser:identifiersCount:identifiers:!**compiled accessors**!private! !
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
can_go_back!public! !
can_go_back:!public! !
can_go_forward!public! !
can_go_forward:!public! !
canGoBack!**compiled accessors**!public! !
canGoForward!**compiled accessors**!public! !
get_focused_frame!public! !
get_focused_frame:!public! !
get_frame!public! !
get_frame:!public! !
get_frame_byident!public! !
get_frame_byident:!public! !
get_frame_count!public! !
get_frame_count:!public! !
get_frame_identifiers!public! !
get_frame_identifiers:!public! !
get_frame_names!public! !
get_frame_names:!public! !
get_host!public! !
get_host:!public! !
get_identifier!public! !
get_identifier:!public! !
get_main_frame!public! !
get_main_frame:!public! !
getFocusedFrame!**compiled accessors**!public! !
getFrame_name:!**compiled accessors**!public! !
getFrameByident_identifier:!**compiled accessors**!public! !
getFrameCount!**compiled accessors**!public! !
getFrameIdentifiers_identifiersCount:identifiers:!**compiled accessors**!public! !
getFrameNames_names:!**compiled accessors**!public! !
getHost!**compiled accessors**!public! !
getIdentifier!**compiled accessors**!public! !
getMainFrame!**compiled accessors**!public! !
go_back!public! !
go_back:!public! !
go_forward!public! !
go_forward:!public! !
goBack!**compiled accessors**!public! !
goForward!**compiled accessors**!public! !
has_document!public! !
has_document:!public! !
hasDocument!**compiled accessors**!public! !
is_loading!public! !
is_loading:!public! !
is_popup!public! !
is_popup:!public! !
is_same!public! !
is_same:!public! !
is_valid!public! !
is_valid:!public! !
isLoading!**compiled accessors**!public! !
isPopup!**compiled accessors**!public! !
isSame_that:!**compiled accessors**!public! !
isValid!**compiled accessors**!public! !
reload!**compiled accessors**!public! !
reload:!public! !
reload_ignore_cache!public! !
reload_ignore_cache:!public! !
stop_load!public! !
stop_load:!public! !
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
		defineField: #get_frame_byident
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefFrame* CefBrowser* sqword')
					smalltalkName: #getFrameByident_identifier:);
		defineField: #get_frame
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefFrame* CefBrowser* CefString*')
					smalltalkName: #getFrame_name:);
		defineField: #get_frame_count
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: dword CefBrowser*'));
		defineField: #get_frame_identifiers
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser* dword* sqword*')
					smalltalkName: #getFrameIdentifiers_identifiersCount:identifiers:);
		defineField: #get_frame_names
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefBrowser* CefStringList*')
					smalltalkName: #getFrameNames_names:)!

getFieldNames
	^#(#base #is_valid #get_host #can_go_back #go_back #can_go_forward #go_forward #is_loading #reload #reload_ignore_cache #stop_load #get_identifier #is_same #is_popup #has_document #get_main_frame #get_focused_frame #get_frame_byident #get_frame #get_frame_count #get_frame_identifiers #get_frame_names)! !
!CefBrowser class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

