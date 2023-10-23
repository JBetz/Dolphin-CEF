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

_getHost_cefBrowser: cefBrowser
	<stdcall: CefBrowserHost* get_host CefBrowser*>
	^self invalidCall: _failureCode!

_getMainFrame_cefBrowser: cefBrowser
	<stdcall: CefFrame* get_main_frame CefBrowser*>
	^self invalidCall: _failureCode!

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

getHost
	| method |
	method := self class externalMethodAt: #_getHost_cefBrowser: ifAbsentBindTo: self get_host.
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

has_document
	"Answer the <Integer> value of the receiver's 'has_document' field."

	^bytes dwordAtOffset: _OffsetOf_has_document!

has_document: anInteger
	"Set the receiver's 'has_document' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_has_document put: anInteger!

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

reload
	"Answer the <Integer> value of the receiver's 'reload' field."

	^bytes dwordAtOffset: _OffsetOf_reload!

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

	bytes dwordAtOffset: _OffsetOf_stop_load put: anInteger! !
!CefBrowser categoriesForMethods!
_getHost_cefBrowser:!**compiled accessors**!private! !
_getMainFrame_cefBrowser:!**compiled accessors**!private! !
can_go_back!public! !
can_go_back:!public! !
can_go_forward!public! !
can_go_forward:!public! !
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
getHost!**compiled accessors**!public! !
getMainFrame!**compiled accessors**!public! !
go_back!public! !
go_back:!public! !
go_forward!public! !
go_forward:!public! !
has_document!public! !
has_document:!public! !
is_loading!public! !
is_loading:!public! !
is_popup!public! !
is_popup:!public! !
is_same!public! !
is_same:!public! !
is_valid!public! !
is_valid:!public! !
reload!public! !
reload:!public! !
reload_ignore_cache!public! !
reload_ignore_cache:!public! !
stop_load!public! !
stop_load:!public! !
!

!CefBrowser class methodsFor!

defineFields
	"CefBrowser  compileDefinition"

	super defineFields.
	self
		defineField: #is_valid type: DWORDField new;
		defineField: #get_host
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefBrowserHost* CefBrowser*'));
		defineField: #can_go_back type: DWORDField new;
		defineField: #go_back type: DWORDField new;
		defineField: #can_go_forward type: DWORDField new;
		defineField: #go_forward type: DWORDField new;
		defineField: #is_loading type: DWORDField new;
		defineField: #reload type: DWORDField new;
		defineField: #reload_ignore_cache type: DWORDField new;
		defineField: #stop_load type: DWORDField new;
		defineField: #get_identifier type: DWORDField new;
		defineField: #is_same type: DWORDField new;
		defineField: #is_popup type: DWORDField new;
		defineField: #has_document type: DWORDField new;
		defineField: #get_main_frame
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: CefFrame* CefBrowser*'));
		defineField: #get_focused_frame type: DWORDField new;
		defineField: #get_frame_byident type: DWORDField new;
		defineField: #get_frame type: DWORDField new;
		defineField: #get_frame_count type: DWORDField new;
		defineField: #get_frame_identifiers type: DWORDField new;
		defineField: #get_frame_names type: DWORDField new!

getFieldNames
	^#(#base #is_valid #get_host #can_go_back #go_back #can_go_forward #go_forward #is_loading #reload #reload_ignore_cache #stop_load #get_identifier #is_same #is_popup #has_document #get_main_frame #get_focused_frame #get_frame_byident #get_frame #get_frame_count #get_frame_identifiers #get_frame_names)! !
!CefBrowser class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

