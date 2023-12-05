"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefDomDocument
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_base_url _OffsetOf_get_body _OffsetOf_get_complete_url _OffsetOf_get_document _OffsetOf_get_element_by_id _OffsetOf_get_focused_node _OffsetOf_get_head _OffsetOf_get_selection_as_markup _OffsetOf_get_selection_as_text _OffsetOf_get_selection_end_offset _OffsetOf_get_selection_start_offset _OffsetOf_get_title _OffsetOf_get_type _OffsetOf_has_selection'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefDomDocument guid: (GUID fromString: '{72532713-09ce-42f5-a457-9ddd8175b624}')!
CefDomDocument addClassConstant: '_OffsetOf_get_base_url' value: 16r44!
CefDomDocument addClassConstant: '_OffsetOf_get_body' value: 16r1C!
CefDomDocument addClassConstant: '_OffsetOf_get_complete_url' value: 16r48!
CefDomDocument addClassConstant: '_OffsetOf_get_document' value: 16r18!
CefDomDocument addClassConstant: '_OffsetOf_get_element_by_id' value: 16r28!
CefDomDocument addClassConstant: '_OffsetOf_get_focused_node' value: 16r2C!
CefDomDocument addClassConstant: '_OffsetOf_get_head' value: 16r20!
CefDomDocument addClassConstant: '_OffsetOf_get_selection_as_markup' value: 16r3C!
CefDomDocument addClassConstant: '_OffsetOf_get_selection_as_text' value: 16r40!
CefDomDocument addClassConstant: '_OffsetOf_get_selection_end_offset' value: 16r38!
CefDomDocument addClassConstant: '_OffsetOf_get_selection_start_offset' value: 16r34!
CefDomDocument addClassConstant: '_OffsetOf_get_title' value: 16r24!
CefDomDocument addClassConstant: '_OffsetOf_get_type' value: 16r14!
CefDomDocument addClassConstant: '_OffsetOf_has_selection' value: 16r30!
CefDomDocument comment: ''!
!CefDomDocument categoriesForClass!External-Data-Structured! !
!CefDomDocument methodsFor!

_hasSelection_cefDomDocument: cefDomDocument
	<stdcall: bool has_selection CefDomDocument*>
	^self invalidCall: _failureCode!

get_base_url
	"Answer the <Integer> value of the receiver's 'get_base_url' field."

	^bytes dwordAtOffset: _OffsetOf_get_base_url!

get_base_url: anInteger
	"Set the receiver's 'get_base_url' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_base_url put: anInteger!

get_body
	"Answer the <Integer> value of the receiver's 'get_body' field."

	^bytes dwordAtOffset: _OffsetOf_get_body!

get_body: anInteger
	"Set the receiver's 'get_body' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_body put: anInteger!

get_complete_url
	"Answer the <Integer> value of the receiver's 'get_complete_url' field."

	^bytes dwordAtOffset: _OffsetOf_get_complete_url!

get_complete_url: anInteger
	"Set the receiver's 'get_complete_url' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_complete_url put: anInteger!

get_document
	"Answer the <Integer> value of the receiver's 'get_document' field."

	^bytes dwordAtOffset: _OffsetOf_get_document!

get_document: anInteger
	"Set the receiver's 'get_document' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_document put: anInteger!

get_element_by_id
	"Answer the <Integer> value of the receiver's 'get_element_by_id' field."

	^bytes dwordAtOffset: _OffsetOf_get_element_by_id!

get_element_by_id: anInteger
	"Set the receiver's 'get_element_by_id' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_element_by_id put: anInteger!

get_focused_node
	"Answer the <Integer> value of the receiver's 'get_focused_node' field."

	^bytes dwordAtOffset: _OffsetOf_get_focused_node!

get_focused_node: anInteger
	"Set the receiver's 'get_focused_node' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_focused_node put: anInteger!

get_head
	"Answer the <Integer> value of the receiver's 'get_head' field."

	^bytes dwordAtOffset: _OffsetOf_get_head!

get_head: anInteger
	"Set the receiver's 'get_head' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_head put: anInteger!

get_selection_as_markup
	"Answer the <Integer> value of the receiver's 'get_selection_as_markup' field."

	^bytes dwordAtOffset: _OffsetOf_get_selection_as_markup!

get_selection_as_markup: anInteger
	"Set the receiver's 'get_selection_as_markup' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_selection_as_markup put: anInteger!

get_selection_as_text
	"Answer the <Integer> value of the receiver's 'get_selection_as_text' field."

	^bytes dwordAtOffset: _OffsetOf_get_selection_as_text!

get_selection_as_text: anInteger
	"Set the receiver's 'get_selection_as_text' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_selection_as_text put: anInteger!

get_selection_end_offset
	"Answer the <Integer> value of the receiver's 'get_selection_end_offset' field."

	^bytes dwordAtOffset: _OffsetOf_get_selection_end_offset!

get_selection_end_offset: anInteger
	"Set the receiver's 'get_selection_end_offset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_selection_end_offset put: anInteger!

get_selection_start_offset
	"Answer the <Integer> value of the receiver's 'get_selection_start_offset' field."

	^bytes dwordAtOffset: _OffsetOf_get_selection_start_offset!

get_selection_start_offset: anInteger
	"Set the receiver's 'get_selection_start_offset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_selection_start_offset put: anInteger!

get_title
	"Answer the <Integer> value of the receiver's 'get_title' field."

	^bytes dwordAtOffset: _OffsetOf_get_title!

get_title: anInteger
	"Set the receiver's 'get_title' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_title put: anInteger!

get_type
	"Answer the <Integer> value of the receiver's 'get_type' field."

	^bytes dwordAtOffset: _OffsetOf_get_type!

get_type: anInteger
	"Set the receiver's 'get_type' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_get_type put: anInteger!

has_selection
	"Answer the <ExternalAddress> value of the receiver's 'has_selection' field."

	^(bytes uintPtrAtOffset: _OffsetOf_has_selection) asExternalAddress!

has_selection: anExternalAddress
	"Set the receiver's 'has_selection' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_has_selection put: anExternalAddress!

hasSelection
	| method |
	method := self class externalMethodAt: #_hasSelection_cefDomDocument:
				ifAbsentBindTo: self has_selection.
	^method value: self withArguments: (Array with: self)! !
!CefDomDocument categoriesForMethods!
_hasSelection_cefDomDocument:!**compiled accessors**!private! !
get_base_url!**compiled accessors**!public! !
get_base_url:!**compiled accessors**!public! !
get_body!**compiled accessors**!public! !
get_body:!**compiled accessors**!public! !
get_complete_url!**compiled accessors**!public! !
get_complete_url:!**compiled accessors**!public! !
get_document!**compiled accessors**!public! !
get_document:!**compiled accessors**!public! !
get_element_by_id!**compiled accessors**!public! !
get_element_by_id:!**compiled accessors**!public! !
get_focused_node!**compiled accessors**!public! !
get_focused_node:!**compiled accessors**!public! !
get_head!**compiled accessors**!public! !
get_head:!**compiled accessors**!public! !
get_selection_as_markup!**compiled accessors**!public! !
get_selection_as_markup:!**compiled accessors**!public! !
get_selection_as_text!**compiled accessors**!public! !
get_selection_as_text:!**compiled accessors**!public! !
get_selection_end_offset!**compiled accessors**!public! !
get_selection_end_offset:!**compiled accessors**!public! !
get_selection_start_offset!**compiled accessors**!public! !
get_selection_start_offset:!**compiled accessors**!public! !
get_title!**compiled accessors**!public! !
get_title:!**compiled accessors**!public! !
get_type!**compiled accessors**!public! !
get_type:!**compiled accessors**!public! !
has_selection!**compiled accessors**!public! !
has_selection:!**compiled accessors**!public! !
hasSelection!**compiled accessors**!public! !
!

!CefDomDocument class methodsFor!

defineFields
	"CefDomDocument compileDefinition"

	super defineFields.
	self
		defineField: #get_type type: DWORDField new;
		defineField: #get_document type: DWORDField new;
		defineField: #get_body type: DWORDField new;
		defineField: #get_head type: DWORDField new;
		defineField: #get_title type: DWORDField new;
		defineField: #get_element_by_id type: DWORDField new;
		defineField: #get_focused_node type: DWORDField new;
		defineField: #has_selection
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: bool CefDomDocument*'));
		defineField: #get_selection_start_offset type: DWORDField new;
		defineField: #get_selection_end_offset type: DWORDField new;
		defineField: #get_selection_as_markup type: DWORDField new;
		defineField: #get_selection_as_text type: DWORDField new;
		defineField: #get_base_url type: DWORDField new;
		defineField: #get_complete_url type: DWORDField new!

getFieldNames
	^#(#base #get_type #get_document #get_body #get_head #get_title #get_element_by_id #get_focused_node #has_selection #get_selection_start_offset #get_selection_end_offset #get_selection_as_markup #get_selection_as_text #get_base_url #get_complete_url)! !
!CefDomDocument class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

