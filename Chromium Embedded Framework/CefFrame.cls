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

_getSource_cefFrame: cefFrame visitor: visitor
	<stdcall: void get_source CefFrame* CefStringVisitor*>
	^self invalidCall: _failureCode!

_loadUrl_cefFrame: cefFrame url: url
	<stdcall: void load_url CefFrame* CefString*>
	^self invalidCall: _failureCode!

copy
	"Answer the <Integer> value of the receiver's 'copy' field."

	^bytes dwordAtOffset: _OffsetOf_copy!

copy: anInteger
	"Set the receiver's 'copy' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_copy put: anInteger!

create_urlrequest
	"Answer the <Integer> value of the receiver's 'create_urlrequest' field."

	^bytes dwordAtOffset: _OffsetOf_create_urlrequest!

create_urlrequest: anInteger
	"Set the receiver's 'create_urlrequest' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_create_urlrequest put: anInteger!

cut
	"Answer the <Integer> value of the receiver's 'cut' field."

	^bytes dwordAtOffset: _OffsetOf_cut!

cut: anInteger
	"Set the receiver's 'cut' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_cut put: anInteger!

del
	"Answer the <Integer> value of the receiver's 'del' field."

	^bytes dwordAtOffset: _OffsetOf_del!

del: anInteger
	"Set the receiver's 'del' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_del put: anInteger!

execute_java_script
	"Answer the <Integer> value of the receiver's 'execute_java_script' field."

	^bytes dwordAtOffset: _OffsetOf_execute_java_script!

execute_java_script: anInteger
	"Set the receiver's 'execute_java_script' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_execute_java_script put: anInteger!

get_browser
	"Answer the <Integer> value of the receiver's 'get_browser' field."

	^bytes dwordAtOffset: _OffsetOf_get_browser!

get_browser: anInteger
	"Set the receiver's 'get_browser' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_browser put: anInteger!

get_identifier
	"Answer the <Integer> value of the receiver's 'get_identifier' field."

	^bytes dwordAtOffset: _OffsetOf_get_identifier!

get_identifier: anInteger
	"Set the receiver's 'get_identifier' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_identifier put: anInteger!

get_name
	"Answer the <Integer> value of the receiver's 'get_name' field."

	^bytes dwordAtOffset: _OffsetOf_get_name!

get_name: anInteger
	"Set the receiver's 'get_name' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_name put: anInteger!

get_parent
	"Answer the <Integer> value of the receiver's 'get_parent' field."

	^bytes dwordAtOffset: _OffsetOf_get_parent!

get_parent: anInteger
	"Set the receiver's 'get_parent' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_parent put: anInteger!

get_source
	"Answer the <ExternalAddress> value of the receiver's 'get_source' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_source) asExternalAddress!

get_source: anExternalAddress
	"Set the receiver's 'get_source' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_source put: anExternalAddress!

get_text
	"Answer the <Integer> value of the receiver's 'get_text' field."

	^bytes dwordAtOffset: _OffsetOf_get_text!

get_text: anInteger
	"Set the receiver's 'get_text' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_text put: anInteger!

get_url
	"Answer the <Integer> value of the receiver's 'get_url' field."

	^bytes dwordAtOffset: _OffsetOf_get_url!

get_url: anInteger
	"Set the receiver's 'get_url' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_url put: anInteger!

get_v8context
	"Answer the <Integer> value of the receiver's 'get_v8context' field."

	^bytes dwordAtOffset: _OffsetOf_get_v8context!

get_v8context: anInteger
	"Set the receiver's 'get_v8context' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_v8context put: anInteger!

getSource_visitor: visitor
	| method arguments |
	method := self class externalMethodAt: #_getSource_cefFrame:visitor: ifAbsentBindTo: self get_source.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: visitor.
	^method value: self withArguments: arguments!

is_focused
	"Answer the <Integer> value of the receiver's 'is_focused' field."

	^bytes dwordAtOffset: _OffsetOf_is_focused!

is_focused: anInteger
	"Set the receiver's 'is_focused' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_focused put: anInteger!

is_main
	"Answer the <Integer> value of the receiver's 'is_main' field."

	^bytes dwordAtOffset: _OffsetOf_is_main!

is_main: anInteger
	"Set the receiver's 'is_main' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_main put: anInteger!

is_valid
	"Answer the <Integer> value of the receiver's 'is_valid' field."

	^bytes dwordAtOffset: _OffsetOf_is_valid!

is_valid: anInteger
	"Set the receiver's 'is_valid' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_is_valid put: anInteger!

load_request
	"Answer the <Integer> value of the receiver's 'load_request' field."

	^bytes dwordAtOffset: _OffsetOf_load_request!

load_request: anInteger
	"Set the receiver's 'load_request' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_load_request put: anInteger!

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
	"Answer the <Integer> value of the receiver's 'paste' field."

	^bytes dwordAtOffset: _OffsetOf_paste!

paste: anInteger
	"Set the receiver's 'paste' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_paste put: anInteger!

redo
	"Answer the <Integer> value of the receiver's 'redo' field."

	^bytes dwordAtOffset: _OffsetOf_redo!

redo: anInteger
	"Set the receiver's 'redo' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_redo put: anInteger!

select_all
	"Answer the <Integer> value of the receiver's 'select_all' field."

	^bytes dwordAtOffset: _OffsetOf_select_all!

select_all: anInteger
	"Set the receiver's 'select_all' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_select_all put: anInteger!

send_process_message
	"Answer the <Integer> value of the receiver's 'send_process_message' field."

	^bytes dwordAtOffset: _OffsetOf_send_process_message!

send_process_message: anInteger
	"Set the receiver's 'send_process_message' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_send_process_message put: anInteger!

undo
	"Answer the <Integer> value of the receiver's 'undo' field."

	^bytes dwordAtOffset: _OffsetOf_undo!

undo: anInteger
	"Set the receiver's 'undo' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_undo put: anInteger!

view_source
	"Answer the <Integer> value of the receiver's 'view_source' field."

	^bytes dwordAtOffset: _OffsetOf_view_source!

view_source: anInteger
	"Set the receiver's 'view_source' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_view_source put: anInteger!

visit_dom
	"Answer the <Integer> value of the receiver's 'visit_dom' field."

	^bytes dwordAtOffset: _OffsetOf_visit_dom!

visit_dom: anInteger
	"Set the receiver's 'visit_dom' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_visit_dom put: anInteger! !
!CefFrame categoriesForMethods!
_getSource_cefFrame:visitor:!**compiled accessors**!private! !
_loadUrl_cefFrame:url:!**compiled accessors**!private! !
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
getSource_visitor:!**compiled accessors**!public! !
is_focused!**compiled accessors**!public! !
is_focused:!**compiled accessors**!public! !
is_main!**compiled accessors**!public! !
is_main:!**compiled accessors**!public! !
is_valid!**compiled accessors**!public! !
is_valid:!**compiled accessors**!public! !
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
send_process_message!**compiled accessors**!public! !
send_process_message:!**compiled accessors**!public! !
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
		defineField: #is_valid type: DWORDField new;
		defineField: #undo type: DWORDField new;
		defineField: #redo type: DWORDField new;
		defineField: #cut type: DWORDField new;
		defineField: #copy type: DWORDField new;
		defineField: #paste type: DWORDField new;
		defineField: #del type: DWORDField new;
		defineField: #select_all type: DWORDField new;
		defineField: #view_source type: DWORDField new;
		defineField: #get_source
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame* CefStringVisitor*')
					smalltalkName: #getSource_visitor:);
		defineField: #get_text type: DWORDField new;
		defineField: #load_request type: DWORDField new;
		defineField: #load_url
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: void CefFrame* CefString*')
					smalltalkName: #loadUrl_url:);
		defineField: #execute_java_script type: DWORDField new;
		defineField: #is_main type: DWORDField new;
		defineField: #is_focused type: DWORDField new;
		defineField: #get_name type: DWORDField new;
		defineField: #get_identifier type: DWORDField new;
		defineField: #get_parent type: DWORDField new;
		defineField: #get_url type: DWORDField new;
		defineField: #get_browser type: DWORDField new;
		defineField: #get_v8context type: DWORDField new;
		defineField: #visit_dom type: DWORDField new;
		defineField: #create_urlrequest type: DWORDField new;
		defineField: #send_process_message type: DWORDField new!

getFieldNames
	^#(#base #is_valid #undo #redo #cut #copy #paste #del #select_all #view_source #get_source #get_text #load_request #load_url #execute_java_script #is_main #is_focused #get_name #get_identifier #get_parent #get_url #get_browser #get_v8context #visit_dom #create_urlrequest #send_process_message)! !
!CefFrame class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

