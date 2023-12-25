"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefContextMenuParams
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_dictionary_suggestions _OffsetOf_get_edit_state_flags _OffsetOf_get_frame_charset _OffsetOf_get_frame_url _OffsetOf_get_link_url _OffsetOf_get_media_state_flags _OffsetOf_get_media_type _OffsetOf_get_misspelled_word _OffsetOf_get_page_url _OffsetOf_get_selection_text _OffsetOf_get_source_url _OffsetOf_get_title_text _OffsetOf_get_type_flags _OffsetOf_get_unfiltered_link_url _OffsetOf_get_xcoord _OffsetOf_get_ycoord _OffsetOf_has_image_contents _OffsetOf_is_custom_menu _OffsetOf_is_editable _OffsetOf_is_spell_check_enabled'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefContextMenuParams guid: (GUID fromString: '{f02a1c25-bcde-4aba-a936-035480364d6e}')!
CefContextMenuParams addClassConstant: '_OffsetOf_get_dictionary_suggestions' value: 16r50!
CefContextMenuParams addClassConstant: '_OffsetOf_get_edit_state_flags' value: 16r5C!
CefContextMenuParams addClassConstant: '_OffsetOf_get_frame_charset' value: 16r3C!
CefContextMenuParams addClassConstant: '_OffsetOf_get_frame_url' value: 16r38!
CefContextMenuParams addClassConstant: '_OffsetOf_get_link_url' value: 16r20!
CefContextMenuParams addClassConstant: '_OffsetOf_get_media_state_flags' value: 16r44!
CefContextMenuParams addClassConstant: '_OffsetOf_get_media_type' value: 16r40!
CefContextMenuParams addClassConstant: '_OffsetOf_get_misspelled_word' value: 16r4C!
CefContextMenuParams addClassConstant: '_OffsetOf_get_page_url' value: 16r34!
CefContextMenuParams addClassConstant: '_OffsetOf_get_selection_text' value: 16r48!
CefContextMenuParams addClassConstant: '_OffsetOf_get_source_url' value: 16r28!
CefContextMenuParams addClassConstant: '_OffsetOf_get_title_text' value: 16r30!
CefContextMenuParams addClassConstant: '_OffsetOf_get_type_flags' value: 16r1C!
CefContextMenuParams addClassConstant: '_OffsetOf_get_unfiltered_link_url' value: 16r24!
CefContextMenuParams addClassConstant: '_OffsetOf_get_xcoord' value: 16r14!
CefContextMenuParams addClassConstant: '_OffsetOf_get_ycoord' value: 16r18!
CefContextMenuParams addClassConstant: '_OffsetOf_has_image_contents' value: 16r2C!
CefContextMenuParams addClassConstant: '_OffsetOf_is_custom_menu' value: 16r60!
CefContextMenuParams addClassConstant: '_OffsetOf_is_editable' value: 16r54!
CefContextMenuParams addClassConstant: '_OffsetOf_is_spell_check_enabled' value: 16r58!
CefContextMenuParams comment: ''!
!CefContextMenuParams categoriesForClass!External-Data-Structured! !
!CefContextMenuParams methodsFor!

_getDictionarySuggestions_cefContextMenuParams: cefContextMenuParams suggestions: suggestions
	<stdcall: sdword get_dictionary_suggestions CefContextMenuParams* CefStringList*>
	^self invalidCall: _failureCode!

_getEditStateFlags_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword get_edit_state_flags CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getFrameCharset_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_frame_charset CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getFrameUrl_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_frame_url CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getLinkUrl_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_link_url CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getMediaStateFlags_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword get_media_state_flags CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getMediaType_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword get_media_type CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getMisspelledWord_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_misspelled_word CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getPageUrl_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_page_url CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getSelectionText_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_selection_text CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getSourceUrl_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_source_url CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getTitleText_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_title_text CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getTypeFlags_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword get_type_flags CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getUnfilteredLinkUrl_cefContextMenuParams: cefContextMenuParams
	<stdcall: CefStringUserfree* get_unfiltered_link_url CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getXcoord_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword get_xcoord CefContextMenuParams*>
	^self invalidCall: _failureCode!

_getYcoord_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword get_ycoord CefContextMenuParams*>
	^self invalidCall: _failureCode!

_hasImageContents_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword has_image_contents CefContextMenuParams*>
	^self invalidCall: _failureCode!

_isCustomMenu_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword is_custom_menu CefContextMenuParams*>
	^self invalidCall: _failureCode!

_isEditable_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword is_editable CefContextMenuParams*>
	^self invalidCall: _failureCode!

_isSpellCheckEnabled_cefContextMenuParams: cefContextMenuParams
	<stdcall: sdword is_spell_check_enabled CefContextMenuParams*>
	^self invalidCall: _failureCode!

get_dictionary_suggestions
	"Answer the <ExternalAddress> value of the receiver's 'get_dictionary_suggestions' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_dictionary_suggestions) asExternalAddress!

get_dictionary_suggestions: anExternalAddress
	"Set the receiver's 'get_dictionary_suggestions' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_dictionary_suggestions put: anExternalAddress!

get_edit_state_flags
	"Answer the <ExternalAddress> value of the receiver's 'get_edit_state_flags' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_edit_state_flags) asExternalAddress!

get_edit_state_flags: anExternalAddress
	"Set the receiver's 'get_edit_state_flags' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_edit_state_flags put: anExternalAddress!

get_frame_charset
	"Answer the <ExternalAddress> value of the receiver's 'get_frame_charset' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_frame_charset) asExternalAddress!

get_frame_charset: anExternalAddress
	"Set the receiver's 'get_frame_charset' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_frame_charset put: anExternalAddress!

get_frame_url
	"Answer the <ExternalAddress> value of the receiver's 'get_frame_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_frame_url) asExternalAddress!

get_frame_url: anExternalAddress
	"Set the receiver's 'get_frame_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_frame_url put: anExternalAddress!

get_link_url
	"Answer the <ExternalAddress> value of the receiver's 'get_link_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_link_url) asExternalAddress!

get_link_url: anExternalAddress
	"Set the receiver's 'get_link_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_link_url put: anExternalAddress!

get_media_state_flags
	"Answer the <ExternalAddress> value of the receiver's 'get_media_state_flags' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_media_state_flags) asExternalAddress!

get_media_state_flags: anExternalAddress
	"Set the receiver's 'get_media_state_flags' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_media_state_flags put: anExternalAddress!

get_media_type
	"Answer the <ExternalAddress> value of the receiver's 'get_media_type' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_media_type) asExternalAddress!

get_media_type: anExternalAddress
	"Set the receiver's 'get_media_type' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_media_type put: anExternalAddress!

get_misspelled_word
	"Answer the <ExternalAddress> value of the receiver's 'get_misspelled_word' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_misspelled_word) asExternalAddress!

get_misspelled_word: anExternalAddress
	"Set the receiver's 'get_misspelled_word' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_misspelled_word put: anExternalAddress!

get_page_url
	"Answer the <ExternalAddress> value of the receiver's 'get_page_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_page_url) asExternalAddress!

get_page_url: anExternalAddress
	"Set the receiver's 'get_page_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_page_url put: anExternalAddress!

get_selection_text
	"Answer the <ExternalAddress> value of the receiver's 'get_selection_text' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_selection_text) asExternalAddress!

get_selection_text: anExternalAddress
	"Set the receiver's 'get_selection_text' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_selection_text put: anExternalAddress!

get_source_url
	"Answer the <ExternalAddress> value of the receiver's 'get_source_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_source_url) asExternalAddress!

get_source_url: anExternalAddress
	"Set the receiver's 'get_source_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_source_url put: anExternalAddress!

get_title_text
	"Answer the <ExternalAddress> value of the receiver's 'get_title_text' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_title_text) asExternalAddress!

get_title_text: anExternalAddress
	"Set the receiver's 'get_title_text' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_title_text put: anExternalAddress!

get_type_flags
	"Answer the <ExternalAddress> value of the receiver's 'get_type_flags' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_type_flags) asExternalAddress!

get_type_flags: anExternalAddress
	"Set the receiver's 'get_type_flags' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_type_flags put: anExternalAddress!

get_unfiltered_link_url
	"Answer the <ExternalAddress> value of the receiver's 'get_unfiltered_link_url' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_unfiltered_link_url) asExternalAddress!

get_unfiltered_link_url: anExternalAddress
	"Set the receiver's 'get_unfiltered_link_url' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_unfiltered_link_url put: anExternalAddress!

get_xcoord
	"Answer the <ExternalAddress> value of the receiver's 'get_xcoord' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_xcoord) asExternalAddress!

get_xcoord: anExternalAddress
	"Set the receiver's 'get_xcoord' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_xcoord put: anExternalAddress!

get_ycoord
	"Answer the <ExternalAddress> value of the receiver's 'get_ycoord' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_ycoord) asExternalAddress!

get_ycoord: anExternalAddress
	"Set the receiver's 'get_ycoord' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_ycoord put: anExternalAddress!

getDictionarySuggestions_suggestions: suggestions
	| method arguments |
	method := self class externalMethodAt: #_getDictionarySuggestions_cefContextMenuParams:suggestions:
				ifAbsentBindTo: self get_dictionary_suggestions.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: suggestions.
	^method value: self withArguments: arguments!

getEditStateFlags
	| method |
	method := self class externalMethodAt: #_getEditStateFlags_cefContextMenuParams:
				ifAbsentBindTo: self get_edit_state_flags.
	^method value: self withArguments: (Array with: self)!

getFrameCharset
	| method |
	method := self class externalMethodAt: #_getFrameCharset_cefContextMenuParams:
				ifAbsentBindTo: self get_frame_charset.
	^method value: self withArguments: (Array with: self)!

getFrameUrl
	| method |
	method := self class externalMethodAt: #_getFrameUrl_cefContextMenuParams:
				ifAbsentBindTo: self get_frame_url.
	^method value: self withArguments: (Array with: self)!

getLinkUrl
	| method |
	method := self class externalMethodAt: #_getLinkUrl_cefContextMenuParams:
				ifAbsentBindTo: self get_link_url.
	^method value: self withArguments: (Array with: self)!

getMediaStateFlags
	| method |
	method := self class externalMethodAt: #_getMediaStateFlags_cefContextMenuParams:
				ifAbsentBindTo: self get_media_state_flags.
	^method value: self withArguments: (Array with: self)!

getMediaType
	| method |
	method := self class externalMethodAt: #_getMediaType_cefContextMenuParams:
				ifAbsentBindTo: self get_media_type.
	^method value: self withArguments: (Array with: self)!

getMisspelledWord
	| method |
	method := self class externalMethodAt: #_getMisspelledWord_cefContextMenuParams:
				ifAbsentBindTo: self get_misspelled_word.
	^method value: self withArguments: (Array with: self)!

getPageUrl
	| method |
	method := self class externalMethodAt: #_getPageUrl_cefContextMenuParams:
				ifAbsentBindTo: self get_page_url.
	^method value: self withArguments: (Array with: self)!

getSelectionText
	| method |
	method := self class externalMethodAt: #_getSelectionText_cefContextMenuParams:
				ifAbsentBindTo: self get_selection_text.
	^method value: self withArguments: (Array with: self)!

getSourceUrl
	| method |
	method := self class externalMethodAt: #_getSourceUrl_cefContextMenuParams:
				ifAbsentBindTo: self get_source_url.
	^method value: self withArguments: (Array with: self)!

getTitleText
	| method |
	method := self class externalMethodAt: #_getTitleText_cefContextMenuParams:
				ifAbsentBindTo: self get_title_text.
	^method value: self withArguments: (Array with: self)!

getTypeFlags
	| method |
	method := self class externalMethodAt: #_getTypeFlags_cefContextMenuParams:
				ifAbsentBindTo: self get_type_flags.
	^method value: self withArguments: (Array with: self)!

getUnfilteredLinkUrl
	| method |
	method := self class externalMethodAt: #_getUnfilteredLinkUrl_cefContextMenuParams:
				ifAbsentBindTo: self get_unfiltered_link_url.
	^method value: self withArguments: (Array with: self)!

getXcoord
	| method |
	method := self class externalMethodAt: #_getXcoord_cefContextMenuParams:
				ifAbsentBindTo: self get_xcoord.
	^method value: self withArguments: (Array with: self)!

getYcoord
	| method |
	method := self class externalMethodAt: #_getYcoord_cefContextMenuParams:
				ifAbsentBindTo: self get_ycoord.
	^method value: self withArguments: (Array with: self)!

has_image_contents
	"Answer the <ExternalAddress> value of the receiver's 'has_image_contents' field."

	^(bytes uintPtrAtOffset: _OffsetOf_has_image_contents) asExternalAddress!

has_image_contents: anExternalAddress
	"Set the receiver's 'has_image_contents' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_has_image_contents put: anExternalAddress!

hasImageContents
	| method |
	method := self class externalMethodAt: #_hasImageContents_cefContextMenuParams:
				ifAbsentBindTo: self has_image_contents.
	^method value: self withArguments: (Array with: self)!

is_custom_menu
	"Answer the <ExternalAddress> value of the receiver's 'is_custom_menu' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_custom_menu) asExternalAddress!

is_custom_menu: anExternalAddress
	"Set the receiver's 'is_custom_menu' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_custom_menu put: anExternalAddress!

is_editable
	"Answer the <ExternalAddress> value of the receiver's 'is_editable' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_editable) asExternalAddress!

is_editable: anExternalAddress
	"Set the receiver's 'is_editable' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_editable put: anExternalAddress!

is_spell_check_enabled
	"Answer the <ExternalAddress> value of the receiver's 'is_spell_check_enabled' field."

	^(bytes uintPtrAtOffset: _OffsetOf_is_spell_check_enabled) asExternalAddress!

is_spell_check_enabled: anExternalAddress
	"Set the receiver's 'is_spell_check_enabled' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_is_spell_check_enabled put: anExternalAddress!

isCustomMenu
	| method |
	method := self class externalMethodAt: #_isCustomMenu_cefContextMenuParams:
				ifAbsentBindTo: self is_custom_menu.
	^method value: self withArguments: (Array with: self)!

isEditable
	| method |
	method := self class externalMethodAt: #_isEditable_cefContextMenuParams:
				ifAbsentBindTo: self is_editable.
	^method value: self withArguments: (Array with: self)!

isSpellCheckEnabled
	| method |
	method := self class externalMethodAt: #_isSpellCheckEnabled_cefContextMenuParams:
				ifAbsentBindTo: self is_spell_check_enabled.
	^method value: self withArguments: (Array with: self)! !
!CefContextMenuParams categoriesForMethods!
_getDictionarySuggestions_cefContextMenuParams:suggestions:!**compiled accessors**!private! !
_getEditStateFlags_cefContextMenuParams:!**compiled accessors**!private! !
_getFrameCharset_cefContextMenuParams:!**compiled accessors**!private! !
_getFrameUrl_cefContextMenuParams:!**compiled accessors**!private! !
_getLinkUrl_cefContextMenuParams:!**compiled accessors**!private! !
_getMediaStateFlags_cefContextMenuParams:!**compiled accessors**!private! !
_getMediaType_cefContextMenuParams:!**compiled accessors**!private! !
_getMisspelledWord_cefContextMenuParams:!**compiled accessors**!private! !
_getPageUrl_cefContextMenuParams:!**compiled accessors**!private! !
_getSelectionText_cefContextMenuParams:!**compiled accessors**!private! !
_getSourceUrl_cefContextMenuParams:!**compiled accessors**!private! !
_getTitleText_cefContextMenuParams:!**compiled accessors**!private! !
_getTypeFlags_cefContextMenuParams:!**compiled accessors**!private! !
_getUnfilteredLinkUrl_cefContextMenuParams:!**compiled accessors**!private! !
_getXcoord_cefContextMenuParams:!**compiled accessors**!private! !
_getYcoord_cefContextMenuParams:!**compiled accessors**!private! !
_hasImageContents_cefContextMenuParams:!**compiled accessors**!private! !
_isCustomMenu_cefContextMenuParams:!**compiled accessors**!private! !
_isEditable_cefContextMenuParams:!**compiled accessors**!private! !
_isSpellCheckEnabled_cefContextMenuParams:!**compiled accessors**!private! !
get_dictionary_suggestions!public! !
get_dictionary_suggestions:!public! !
get_edit_state_flags!public! !
get_edit_state_flags:!public! !
get_frame_charset!public! !
get_frame_charset:!public! !
get_frame_url!public! !
get_frame_url:!public! !
get_link_url!public! !
get_link_url:!public! !
get_media_state_flags!public! !
get_media_state_flags:!public! !
get_media_type!public! !
get_media_type:!public! !
get_misspelled_word!public! !
get_misspelled_word:!public! !
get_page_url!public! !
get_page_url:!public! !
get_selection_text!public! !
get_selection_text:!public! !
get_source_url!public! !
get_source_url:!public! !
get_title_text!public! !
get_title_text:!public! !
get_type_flags!public! !
get_type_flags:!public! !
get_unfiltered_link_url!public! !
get_unfiltered_link_url:!public! !
get_xcoord!public! !
get_xcoord:!public! !
get_ycoord!public! !
get_ycoord:!public! !
getDictionarySuggestions_suggestions:!**compiled accessors**!public! !
getEditStateFlags!**compiled accessors**!public! !
getFrameCharset!**compiled accessors**!public! !
getFrameUrl!**compiled accessors**!public! !
getLinkUrl!**compiled accessors**!public! !
getMediaStateFlags!**compiled accessors**!public! !
getMediaType!**compiled accessors**!public! !
getMisspelledWord!**compiled accessors**!public! !
getPageUrl!**compiled accessors**!public! !
getSelectionText!**compiled accessors**!public! !
getSourceUrl!**compiled accessors**!public! !
getTitleText!**compiled accessors**!public! !
getTypeFlags!**compiled accessors**!public! !
getUnfilteredLinkUrl!**compiled accessors**!public! !
getXcoord!**compiled accessors**!public! !
getYcoord!**compiled accessors**!public! !
has_image_contents!public! !
has_image_contents:!public! !
hasImageContents!**compiled accessors**!public! !
is_custom_menu!public! !
is_custom_menu:!public! !
is_editable!public! !
is_editable:!public! !
is_spell_check_enabled!public! !
is_spell_check_enabled:!public! !
isCustomMenu!**compiled accessors**!public! !
isEditable!**compiled accessors**!public! !
isSpellCheckEnabled!**compiled accessors**!public! !
!

!CefContextMenuParams class methodsFor!

defineFields
	"CefContextMenuParams compileDefinition"

	super defineFields.
	self
		defineField: #get_xcoord
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #get_ycoord
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #get_type_flags
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #get_link_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #get_unfiltered_link_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #get_source_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #has_image_contents
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #get_title_text
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #get_page_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #get_frame_url
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #get_frame_charset
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #get_media_type
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #get_media_state_flags
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #get_selection_text
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #get_misspelled_word
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: CefStringUserfree* CefContextMenuParams*'));
		defineField: #get_dictionary_suggestions
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams* CefStringList*')
					smalltalkName: #getDictionarySuggestions_suggestions:);
		defineField: #is_editable
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #is_spell_check_enabled
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #get_edit_state_flags
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'));
		defineField: #is_custom_menu
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefContextMenuParams*'))!

getFieldNames
	^#(#base #get_xcoord #get_ycoord #get_type_flags #get_link_url #get_unfiltered_link_url #get_source_url #has_image_contents #get_title_text #get_page_url #get_frame_url #get_frame_charset #get_media_type #get_media_state_flags #get_selection_text #get_misspelled_word #get_dictionary_suggestions #is_editable #is_spell_check_enabled #get_edit_state_flags #is_custom_menu)! !
!CefContextMenuParams class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

