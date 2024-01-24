"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefFrame
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_copy _OffsetOf_create_urlrequest _OffsetOf_cut _OffsetOf_del _OffsetOf_execute_java_script _OffsetOf_get_browser _OffsetOf_get_identifier _OffsetOf_get_name _OffsetOf_get_parent _OffsetOf_get_source _OffsetOf_get_text _OffsetOf_get_url _OffsetOf_get_v8context _OffsetOf_is_focused _OffsetOf_is_main _OffsetOf_is_valid _OffsetOf_load_request _OffsetOf_load_url _OffsetOf_paste _OffsetOf_redo _OffsetOf_select_all _OffsetOf_send_process_message _OffsetOf_undo _OffsetOf_view_source _OffsetOf_visit_dom'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefFrame guid: (GUID fromString: '{7b6301e0-a539-4aa5-a87a-7fe57cce10b5}')!
CefFrame addClassConstant: '_OffsetOf_copy' value: 16r24!
CefFrame addClassConstant: '_OffsetOf_create_urlrequest' value: 16r70!
CefFrame addClassConstant: '_OffsetOf_cut' value: 16r20!
CefFrame addClassConstant: '_OffsetOf_del' value: 16r2C!
CefFrame addClassConstant: '_OffsetOf_execute_java_script' value: 16r48!
CefFrame addClassConstant: '_OffsetOf_get_browser' value: 16r64!
CefFrame addClassConstant: '_OffsetOf_get_identifier' value: 16r58!
CefFrame addClassConstant: '_OffsetOf_get_name' value: 16r54!
CefFrame addClassConstant: '_OffsetOf_get_parent' value: 16r5C!
CefFrame addClassConstant: '_OffsetOf_get_source' value: 16r38!
CefFrame addClassConstant: '_OffsetOf_get_text' value: 16r3C!
CefFrame addClassConstant: '_OffsetOf_get_url' value: 16r60!
CefFrame addClassConstant: '_OffsetOf_get_v8context' value: 16r68!
CefFrame addClassConstant: '_OffsetOf_is_focused' value: 16r50!
CefFrame addClassConstant: '_OffsetOf_is_main' value: 16r4C!
CefFrame addClassConstant: '_OffsetOf_is_valid' value: 16r14!
CefFrame addClassConstant: '_OffsetOf_load_request' value: 16r40!
CefFrame addClassConstant: '_OffsetOf_load_url' value: 16r44!
CefFrame addClassConstant: '_OffsetOf_paste' value: 16r28!
CefFrame addClassConstant: '_OffsetOf_redo' value: 16r1C!
CefFrame addClassConstant: '_OffsetOf_select_all' value: 16r30!
CefFrame addClassConstant: '_OffsetOf_send_process_message' value: 16r74!
CefFrame addClassConstant: '_OffsetOf_undo' value: 16r18!
CefFrame addClassConstant: '_OffsetOf_view_source' value: 16r34!
CefFrame addClassConstant: '_OffsetOf_visit_dom' value: 16r6C!
CefFrame comment: ''!
!CefFrame categoriesForClass!External-Data-Structured! !
!CefFrame methodsFor!

_callCopy_cefFrame: cefFrame
	<stdcall: void copy CefFrame*>
	^self invalidCall: _failureCode!

_callCut_cefFrame: cefFrame
	<stdcall: void cut CefFrame*>
	^self invalidCall: _failureCode!

_callDel_cefFrame: cefFrame
	<stdcall: void del CefFrame*>
	^self invalidCall: _failureCode!

_callPaste_cefFrame: cefFrame
	<stdcall: void paste CefFrame*>
	^self invalidCall: _failureCode!

_callRedo_cefFrame: cefFrame
	<stdcall: void redo CefFrame*>
	^self invalidCall: _failureCode!

_callUndo_cefFrame: cefFrame
	<stdcall: void undo CefFrame*>
	^self invalidCall: _failureCode!

_executeJavaScript_cefFrame: cefFrame code: code scriptUrl: scriptUrl startLine: startLine
	<stdcall: void execute_java_script CefFrame* CefString* CefString* sdword>
	^self invalidCall: _failureCode!

_getIdentifier_cefFrame: cefFrame
	<stdcall: sdword get_identifier CefFrame*>
	^self invalidCall: _failureCode!

_getName_cefFrame: cefFrame
	<stdcall: CefStringUserfree* get_name CefFrame*>
	^self invalidCall: _failureCode!

_getSource_cefFrame: cefFrame visitor: visitor
	<stdcall: void get_source CefFrame* CefStringVisitor*>
	^self invalidCall: _failureCode!

_getUrl_cefFrame: cefFrame
	<stdcall: CefStringUserfree* get_url CefFrame*>
	^self invalidCall: _failureCode!

_isFocused_cefFrame: cefFrame
	<stdcall: bool is_focused CefFrame*>
	^self invalidCall: _failureCode!

_isMain_cefFrame: cefFrame
	<stdcall: bool is_main CefFrame*>
	^self invalidCall: _failureCode!

_isValid_cefFrame: cefFrame
	<stdcall: bool is_valid CefFrame*>
	^self invalidCall: _failureCode!

_loadUrl_cefFrame: cefFrame url: url
	<stdcall: void load_url CefFrame* CefString*>
	^self invalidCall: _failureCode!

_selectAll_cefFrame: cefFrame
	<stdcall: void select_all CefFrame*>
	^self invalidCall: _failureCode!

_sendProcessMessage_cefFrame: cefFrame targetProcess: targetProcess message: message
	<stdcall: void send_process_message CefFrame* dword CefProcessMessage*>
	^self invalidCall: _failureCode!

callCopy
	| method |
	method := self class externalMethodAt: #_callCopy_cefFrame: ifAbsentBindTo: self copy.
	^method value: self withArguments: (Array with: self)!

callCut
	| method |
	method := self class externalMethodAt: #_callCut_cefFrame: ifAbsentBindTo: self cut.
	^method value: self withArguments: (Array with: self)!

callDel
	| method |
	method := self class externalMethodAt: #_callDel_cefFrame: ifAbsentBindTo: self del.
	^method value: self withArguments: (Array with: self)!

callPaste
	| method |
	method := self class externalMethodAt: #_callPaste_cefFrame: ifAbsentBindTo: self paste.
	^method value: self withArguments: (Array with: self)!

callRedo
	| method |
	method := self class externalMethodAt: #_callRedo_cefFrame: ifAbsentBindTo: self redo.
	^method value: self withArguments: (Array with: self)!

callUndo
	| method |
	method := self class externalMethodAt: #_callUndo_cefFrame: ifAbsentBindTo: self undo.
	^method value: self withArguments: (Array with: self)!

copy
	"Answer the <ExternalAddress> value of the receiver's 'copy' field."

	^(bytes uintPtrAtOffset: _OffsetOf_copy) asExternalAddress!

copy: anExternalAddress
	"Set the receiver's 'copy' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_copy put: anExternalAddress!

create_urlrequest
	"Answer the <ExternalAddress> value of the receiver's 'create_urlrequest' field."

	^(bytes uintPtrAtOffset: _OffsetOf_create_urlrequest) asExternalAddress!

create_urlrequest: anExternalAddress
	"Set the receiver's 'create_urlrequest' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_create_urlrequest put: anExternalAddress!

cut
	"Answer the <ExternalAddress> value of the receiver's 'cut' field."

	^(bytes uintPtrAtOffset: _OffsetOf_cut) asExternalAddress!

cut: anExternalAddress
	"Set the receiver's 'cut' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_cut put: anExternalAddress!

del
	"Answer the <ExternalAddress> value of the receiver's 'del' field."

	^(bytes uintPtrAtOffset: _OffsetOf_del) asExternalAddress!

del: anExternalAddress
	"Set the receiver's 'del' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_del put: anExternalAddress!

execute_java_script
	"Answer the <ExternalAddress> value of the receiver's 'execute_java_script' field."

	^(bytes uintPtrAtOffset: _OffsetOf_execute_java_script) asExternalAddress!

execute_java_script: anExternalAddress
	"Set the receiver's 'execute_java_script' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_execute_java_script put: anExternalAddress!

executeJavaScript_code: code scriptUrl: scriptUrl startLine: startLine
	| method arguments |
	method := self class externalMethodAt: #_executeJavaScript_cefFrame:code:scriptUrl:startLine:
				ifAbsentBindTo: self execute_java_script.
	arguments := Array new: 4.
	arguments
		at: 1 put: self;
		at: 2 put: code;
		at: 3 put: scriptUrl;
		at: 4 put: startLine.
	^method value: self withArguments: arguments!

get_browser
	"Answer the <ExternalAddress> value of the receiver's 'get_browser' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_browser) asExternalAddress!

get_browser: anExternalAddress
	"Set the receiver's 'get_browser' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_browser put: anExternalAddress!

get_identifier
	"Answer the <ExternalAddress> value of the receiver's 'get_identifier' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_identifier) asExternalAddress!

get_identifier: anExternalAddress
	"Set the receiver's 'get_identifier' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_identifier put: anExternalAddress!

get_name
	"Answer the <ExternalAddress> value of the receiver's 'get_name' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_name) asExternalAddress!

get_name: anExternalAddress
	"Set the receiver's 'get_name' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_name put: anExternalAddress!

get_parent
	"Answer the <ExternalAddress> value of the receiver's 'get_parent' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_parent) asExternalAddress!

get_parent: anExternalAddress
	"Set the receiver's 'get_parent' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_parent put: anExternalAddress!

get_source
	"Answer the <ExternalAddress> value of the receiver's 'get_source' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_source) asExternalAddress!

get_source: anExternalAddress
	"Set the receiver's 'get_source' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_source put: anExternalAddress!

get_text
	"Answer the <ExternalAddress> value of the receiver's 'get_text' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_text) asExternalAddress!

get_text: anExternalAddress
	"Set the receiver's 'get_text' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_text put: anExternalAddress!

get_url
	"Answer the <ExternalAddress> value of the receiver's 'get_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_url) asExternalAddress!

get_url: anExternalAddress
	"Set the receiver's 'get_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_url put: anExternalAddress!

get_v8context
	"Answer the <ExternalAddress> value of the receiver's 'get_v8context' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_v8context) asExternalAddress!

get_v8context: anExternalAddress
	"Set the receiver's 'get_v8context' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_v8context put: anExternalAddress!

getIdentifier
	| method |
	method := self class externalMethodAt: #_getIdentifier_cefFrame: ifAbsentBindTo: self get_identifier.
	^method value: self withArguments: (Array with: self)!

getName
	| method |
	method := self class externalMethodAt: #_getName_cefFrame: ifAbsentBindTo: self get_name.
	^method value: self withArguments: (Array with: self)!

getSource_visitor: visitor
	| method arguments |
	method := self class externalMethodAt: #_getSource_cefFrame:visitor: ifAbsentBindTo: self get_source.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: visitor.
	^method value: self withArguments: arguments!

getUrl
	| method |
	method := self class externalMethodAt: #_getUrl_cefFrame: ifAbsentBindTo: self get_url.
	^method value: self withArguments: (Array with: self)!

is_focused
	"Answer the <ExternalAddress> value of the receiver's 'is_focused' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_focused) asExternalAddress!

is_focused: anExternalAddress
	"Set the receiver's 'is_focused' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_focused put: anExternalAddress!

is_main
	"Answer the <ExternalAddress> value of the receiver's 'is_main' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_main) asExternalAddress!

is_main: anExternalAddress
	"Set the receiver's 'is_main' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_main put: anExternalAddress!

is_valid
	"Answer the <ExternalAddress> value of the receiver's 'is_valid' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_valid) asExternalAddress!

is_valid: anExternalAddress
	"Set the receiver's 'is_valid' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_valid put: anExternalAddress!

isFocused
	| method |
	method := self class externalMethodAt: #_isFocused_cefFrame: ifAbsentBindTo: self is_focused.
	^method value: self withArguments: (Array with: self)!

isMain
	| method |
	method := self class externalMethodAt: #_isMain_cefFrame: ifAbsentBindTo: self is_main.
	^method value: self withArguments: (Array with: self)!

isValid
	| method |
	method := self class externalMethodAt: #_isValid_cefFrame: ifAbsentBindTo: self is_valid.
	^method value: self withArguments: (Array with: self)!

load_request
	"Answer the <ExternalAddress> value of the receiver's 'load_request' field."

	^(bytes uintPtrAtOffset: _OffsetOf_load_request) asExternalAddress!

load_request: anExternalAddress
	"Set the receiver's 'load_request' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_load_request put: anExternalAddress!

load_url
	"Answer the <ExternalAddress> value of the receiver's 'load_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_load_url) asExternalAddress!

load_url: anExternalAddress
	"Set the receiver's 'load_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_load_url put: anExternalAddress!

loadUrl_url: url
	| method arguments |
	method := self class externalMethodAt: #_loadUrl_cefFrame:url: ifAbsentBindTo: self load_url.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: url.
	^method value: self withArguments: arguments!

paste
	"Answer the <ExternalAddress> value of the receiver's 'paste' field."

	^(bytes uintPtrAtOffset: _OffsetOf_paste) asExternalAddress!

paste: anExternalAddress
	"Set the receiver's 'paste' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_paste put: anExternalAddress!

redo
	"Answer the <ExternalAddress> value of the receiver's 'redo' field."

	^(bytes uintPtrAtOffset: _OffsetOf_redo) asExternalAddress!

redo: anExternalAddress
	"Set the receiver's 'redo' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_redo put: anExternalAddress!

select_all
	"Answer the <ExternalAddress> value of the receiver's 'select_all' field."

	^(bytes uintPtrAtOffset: _OffsetOf_select_all) asExternalAddress!

select_all: anExternalAddress
	"Set the receiver's 'select_all' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_select_all put: anExternalAddress!

selectAll
	| method |
	method := self class externalMethodAt: #_selectAll_cefFrame: ifAbsentBindTo: self select_all.
	^method value: self withArguments: (Array with: self)!

send_process_message
	"Answer the <ExternalAddress> value of the receiver's 'send_process_message' field."

	^(bytes uintPtrAtOffset: _OffsetOf_send_process_message) asExternalAddress!

send_process_message: anExternalAddress
	"Set the receiver's 'send_process_message' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_send_process_message put: anExternalAddress!

sendProcessMessage_targetProcess: targetProcess message: message
	| method arguments |
	method := self class externalMethodAt: #_sendProcessMessage_cefFrame:targetProcess:message:
				ifAbsentBindTo: self send_process_message.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: targetProcess;
		at: 3 put: message.
	^method value: self withArguments: arguments!

undo
	"Answer the <ExternalAddress> value of the receiver's 'undo' field."

	^(bytes uintPtrAtOffset: _OffsetOf_undo) asExternalAddress!

undo: anExternalAddress
	"Set the receiver's 'undo' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_undo put: anExternalAddress!

view_source
	"Answer the <ExternalAddress> value of the receiver's 'view_source' field."

	^(bytes uintPtrAtOffset: _OffsetOf_view_source) asExternalAddress!

view_source: anExternalAddress
	"Set the receiver's 'view_source' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_view_source put: anExternalAddress!

visit_dom
	"Answer the <ExternalAddress> value of the receiver's 'visit_dom' field."

	^(bytes uintPtrAtOffset: _OffsetOf_visit_dom) asExternalAddress!

visit_dom: anExternalAddress
	"Set the receiver's 'visit_dom' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_visit_dom put: anExternalAddress! !
!CefFrame categoriesForMethods!
_callCopy_cefFrame:!**compiled accessors**!private! !
_callCut_cefFrame:!**compiled accessors**!private! !
_callDel_cefFrame:!**compiled accessors**!private! !
_callPaste_cefFrame:!**compiled accessors**!private! !
_callRedo_cefFrame:!**compiled accessors**!private! !
_callUndo_cefFrame:!**compiled accessors**!private! !
_executeJavaScript_cefFrame:code:scriptUrl:startLine:!**compiled accessors**!private! !
_getIdentifier_cefFrame:!**compiled accessors**!private! !
_getName_cefFrame:!**compiled accessors**!private! !
_getSource_cefFrame:visitor:!**compiled accessors**!private! !
_getUrl_cefFrame:!**compiled accessors**!private! !
_isFocused_cefFrame:!**compiled accessors**!private! !
_isMain_cefFrame:!**compiled accessors**!private! !
_isValid_cefFrame:!**compiled accessors**!private! !
_loadUrl_cefFrame:url:!**compiled accessors**!private! !
_selectAll_cefFrame:!**compiled accessors**!private! !
_sendProcessMessage_cefFrame:targetProcess:message:!**compiled accessors**!private! !
callCopy!**compiled accessors**!public! !
callCut!**compiled accessors**!public! !
callDel!**compiled accessors**!public! !
callPaste!**compiled accessors**!public! !
callRedo!**compiled accessors**!public! !
callUndo!**compiled accessors**!public! !
copy!**compiled accessors**!public! !
copy:!**compiled accessors**!public! !
create_urlrequest!**compiled accessors**!public! !
create_urlrequest:!**compiled accessors**!public! !
cut!**compiled accessors**!public! !
cut:!**compiled accessors**!public! !
del!**compiled accessors**!public! !
del:!**compiled accessors**!public! !
execute_java_script!**compiled accessors**!public! !
execute_java_script:!**compiled accessors**!public! !
executeJavaScript_code:scriptUrl:startLine:!**compiled accessors**!public! !
get_browser!**compiled accessors**!public! !
get_browser:!**compiled accessors**!public! !
get_identifier!**compiled accessors**!public! !
get_identifier:!**compiled accessors**!public! !
get_name!**compiled accessors**!public! !
get_name:!**compiled accessors**!public! !
get_parent!**compiled accessors**!public! !
get_parent:!**compiled accessors**!public! !
get_source!**compiled accessors**!public! !
get_source:!**compiled accessors**!public! !
get_text!**compiled accessors**!public! !
get_text:!**compiled accessors**!public! !
get_url!**compiled accessors**!public! !
get_url:!**compiled accessors**!public! !
get_v8context!**compiled accessors**!public! !
get_v8context:!**compiled accessors**!public! !
getIdentifier!**compiled accessors**!public! !
getName!**compiled accessors**!public! !
getSource_visitor:!**compiled accessors**!public! !
getUrl!**compiled accessors**!public! !
is_focused!**compiled accessors**!public! !
is_focused:!**compiled accessors**!public! !
is_main!**compiled accessors**!public! !
is_main:!**compiled accessors**!public! !
is_valid!**compiled accessors**!public! !
is_valid:!**compiled accessors**!public! !
isFocused!**compiled accessors**!public! !
isMain!**compiled accessors**!public! !
isValid!**compiled accessors**!public! !
load_request!**compiled accessors**!public! !
load_request:!**compiled accessors**!public! !
load_url!**compiled accessors**!public! !
load_url:!**compiled accessors**!public! !
loadUrl_url:!**compiled accessors**!public! !
paste!**compiled accessors**!public! !
paste:!**compiled accessors**!public! !
redo!**compiled accessors**!public! !
redo:!**compiled accessors**!public! !
select_all!**compiled accessors**!public! !
select_all:!**compiled accessors**!public! !
selectAll!**compiled accessors**!public! !
send_process_message!**compiled accessors**!public! !
send_process_message:!**compiled accessors**!public! !
sendProcessMessage_targetProcess:message:!**compiled accessors**!public! !
undo!**compiled accessors**!public! !
undo:!**compiled accessors**!public! !
view_source!**compiled accessors**!public! !
view_source:!**compiled accessors**!public! !
visit_dom!**compiled accessors**!public! !
visit_dom:!**compiled accessors**!public! !
!

!CefFrame class methodsFor!

defineFields
	"CefFrame compileDefinition"

	super defineFields.
	self
		defineField: #is_valid
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefFrame*'));
		defineField: #undo
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame*')
					smalltalkName: #callUndo);
		defineField: #redo
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame*')
					smalltalkName: #callRedo);
		defineField: #cut
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame*')
					smalltalkName: #callCut);
		defineField: #copy
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame*')
					smalltalkName: #callCopy);
		defineField: #paste
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame*')
					smalltalkName: #callPaste);
		defineField: #del
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame*')
					smalltalkName: #callDel);
		defineField: #select_all
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame*'));
		defineField: #view_source type: LPVOIDField new;
		defineField: #get_source
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame* CefStringVisitor*')
					smalltalkName: #getSource_visitor:);
		defineField: #get_text type: LPVOIDField new;
		defineField: #load_request type: LPVOIDField new;
		defineField: #load_url
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame* CefString*')
					smalltalkName: #loadUrl_url:);
		defineField: #execute_java_script
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame* CefString* CefString* sdword')
					smalltalkName: #executeJavaScript_code:scriptUrl:startLine:);
		defineField: #is_main
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefFrame*'));
		defineField: #is_focused
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefFrame*'));
		defineField: #get_name
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefFrame*'));
		defineField: #get_identifier
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefFrame*'));
		defineField: #get_parent type: LPVOIDField new;
		defineField: #get_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefFrame*'));
		defineField: #get_browser type: LPVOIDField new;
		defineField: #get_v8context type: LPVOIDField new;
		defineField: #visit_dom type: LPVOIDField new;
		defineField: #create_urlrequest type: LPVOIDField new;
		defineField: #send_process_message
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame* dword CefProcessMessage*')
					smalltalkName: #sendProcessMessage_targetProcess:message:)!

getFieldNames
	^#(#base #is_valid #undo #redo #cut #copy #paste #del #select_all #view_source #get_source #get_text #load_request #load_url #execute_java_script #is_main #is_focused #get_name #get_identifier #get_parent #get_url #get_browser #get_v8context #visit_dom #create_urlrequest #send_process_message)! !
!CefFrame class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

