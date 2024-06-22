"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefBrowserSettings
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_background_color _OffsetOf_cefSize _OffsetOf_chrome_status_bubble _OffsetOf_chrome_zoom_bubble _OffsetOf_cursive_font_family _OffsetOf_databases _OffsetOf_default_encoding _OffsetOf_default_fixed_font_size _OffsetOf_default_font_size _OffsetOf_fantasy_font_family _OffsetOf_fixed_font_family _OffsetOf_image_loading _OffsetOf_image_shrink_standalone_to_fit _OffsetOf_javascript _OffsetOf_javascript_access_clipboard _OffsetOf_javascript_close_windows _OffsetOf_javascript_dom_paste _OffsetOf_local_storage _OffsetOf_minimum_font_size _OffsetOf_minimum_logical_font_size _OffsetOf_remote_fonts _OffsetOf_sans_serif_font_family _OffsetOf_serif_font_family _OffsetOf_standard_font_family _OffsetOf_tab_to_links _OffsetOf_text_area_resize _OffsetOf_webgl _OffsetOf_windowless_frame_rate'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefBrowserSettings guid: (GUID fromString: '{3f490dc9-740b-4b95-b9e7-b4d5eae00e91}')!

CefBrowserSettings addClassConstant: '_OffsetOf_background_color' value: 16r9C!
CefBrowserSettings addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefBrowserSettings addClassConstant: '_OffsetOf_chrome_status_bubble' value: 16rA0!
CefBrowserSettings addClassConstant: '_OffsetOf_chrome_zoom_bubble' value: 16rA4!
CefBrowserSettings addClassConstant: '_OffsetOf_cursive_font_family' value: 16r38!
CefBrowserSettings addClassConstant: '_OffsetOf_databases' value: 16r94!
CefBrowserSettings addClassConstant: '_OffsetOf_default_encoding' value: 16r60!
CefBrowserSettings addClassConstant: '_OffsetOf_default_fixed_font_size' value: 16r54!
CefBrowserSettings addClassConstant: '_OffsetOf_default_font_size' value: 16r50!
CefBrowserSettings addClassConstant: '_OffsetOf_fantasy_font_family' value: 16r44!
CefBrowserSettings addClassConstant: '_OffsetOf_fixed_font_family' value: 16r14!
CefBrowserSettings addClassConstant: '_OffsetOf_image_loading' value: 16r80!
CefBrowserSettings addClassConstant: '_OffsetOf_image_shrink_standalone_to_fit' value: 16r84!
CefBrowserSettings addClassConstant: '_OffsetOf_javascript' value: 16r70!
CefBrowserSettings addClassConstant: '_OffsetOf_javascript_access_clipboard' value: 16r78!
CefBrowserSettings addClassConstant: '_OffsetOf_javascript_close_windows' value: 16r74!
CefBrowserSettings addClassConstant: '_OffsetOf_javascript_dom_paste' value: 16r7C!
CefBrowserSettings addClassConstant: '_OffsetOf_local_storage' value: 16r90!
CefBrowserSettings addClassConstant: '_OffsetOf_minimum_font_size' value: 16r58!
CefBrowserSettings addClassConstant: '_OffsetOf_minimum_logical_font_size' value: 16r5C!
CefBrowserSettings addClassConstant: '_OffsetOf_remote_fonts' value: 16r6C!
CefBrowserSettings addClassConstant: '_OffsetOf_sans_serif_font_family' value: 16r2C!
CefBrowserSettings addClassConstant: '_OffsetOf_serif_font_family' value: 16r20!
CefBrowserSettings addClassConstant: '_OffsetOf_standard_font_family' value: 16r8!
CefBrowserSettings addClassConstant: '_OffsetOf_tab_to_links' value: 16r8C!
CefBrowserSettings addClassConstant: '_OffsetOf_text_area_resize' value: 16r88!
CefBrowserSettings addClassConstant: '_OffsetOf_webgl' value: 16r98!
CefBrowserSettings addClassConstant: '_OffsetOf_windowless_frame_rate' value: 16r4!

CefBrowserSettings comment: ''!

!CefBrowserSettings categoriesForClass!External-Libraries! !

!CefBrowserSettings methodsFor!

background_color
	"Answer the <Integer> value of the receiver's 'background_color' field."

	^bytes dwordAtOffset: _OffsetOf_background_color!

background_color: anInteger
	"Set the receiver's 'background_color' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_background_color put: anInteger!

cefSize
	"Answer the <Integer> value of the receiver's 'cefSize' field."

	^bytes dwordAtOffset: _OffsetOf_cefSize!

cefSize: anInteger
	"Set the receiver's 'cefSize' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_cefSize put: anInteger!

chrome_status_bubble
	"Answer the <Integer> value of the receiver's 'chrome_status_bubble' field."

	^bytes sdwordAtOffset: _OffsetOf_chrome_status_bubble!

chrome_status_bubble: anInteger
	"Set the receiver's 'chrome_status_bubble' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_chrome_status_bubble put: anInteger!

chrome_zoom_bubble
	"Answer the <Integer> value of the receiver's 'chrome_zoom_bubble' field."

	^bytes sdwordAtOffset: _OffsetOf_chrome_zoom_bubble!

chrome_zoom_bubble: anInteger
	"Set the receiver's 'chrome_zoom_bubble' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_chrome_zoom_bubble put: anInteger!

cursive_font_family
	"Answer the <CefString> value of the receiver's 'cursive_font_family' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_cursive_font_family!

cursive_font_family: aCefString
	"Set the receiver's 'cursive_font_family' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_cursive_font_family + 1)
		to: ##(_OffsetOf_cursive_font_family + CefString basicByteSize)
		startingAt: 1!

databases
	"Answer the <Integer> value of the receiver's 'databases' field."

	^bytes sdwordAtOffset: _OffsetOf_databases!

databases: anInteger
	"Set the receiver's 'databases' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_databases put: anInteger!

default_encoding
	"Answer the <CefString> value of the receiver's 'default_encoding' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_default_encoding!

default_encoding: aCefString
	"Set the receiver's 'default_encoding' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_default_encoding + 1)
		to: ##(_OffsetOf_default_encoding + CefString basicByteSize)
		startingAt: 1!

default_fixed_font_size
	"Answer the <Integer> value of the receiver's 'default_fixed_font_size' field."

	^bytes sdwordAtOffset: _OffsetOf_default_fixed_font_size!

default_fixed_font_size: anInteger
	"Set the receiver's 'default_fixed_font_size' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_default_fixed_font_size put: anInteger!

default_font_size
	"Answer the <Integer> value of the receiver's 'default_font_size' field."

	^bytes sdwordAtOffset: _OffsetOf_default_font_size!

default_font_size: anInteger
	"Set the receiver's 'default_font_size' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_default_font_size put: anInteger!

fantasy_font_family
	"Answer the <CefString> value of the receiver's 'fantasy_font_family' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_fantasy_font_family!

fantasy_font_family: aCefString
	"Set the receiver's 'fantasy_font_family' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_fantasy_font_family + 1)
		to: ##(_OffsetOf_fantasy_font_family + CefString basicByteSize)
		startingAt: 1!

fixed_font_family
	"Answer the <CefString> value of the receiver's 'fixed_font_family' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_fixed_font_family!

fixed_font_family: aCefString
	"Set the receiver's 'fixed_font_family' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_fixed_font_family + 1)
		to: ##(_OffsetOf_fixed_font_family + CefString basicByteSize)
		startingAt: 1!

image_loading
	"Answer the <Integer> value of the receiver's 'image_loading' field."

	^bytes sdwordAtOffset: _OffsetOf_image_loading!

image_loading: anInteger
	"Set the receiver's 'image_loading' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_image_loading put: anInteger!

image_shrink_standalone_to_fit
	"Answer the <Integer> value of the receiver's 'image_shrink_standalone_to_fit' field."

	^bytes sdwordAtOffset: _OffsetOf_image_shrink_standalone_to_fit!

image_shrink_standalone_to_fit: anInteger
	"Set the receiver's 'image_shrink_standalone_to_fit' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_image_shrink_standalone_to_fit put: anInteger!

initialize
	super initialize.
	self cefSize: self class byteSize!

javascript
	"Answer the <Integer> value of the receiver's 'javascript' field."

	^bytes sdwordAtOffset: _OffsetOf_javascript!

javascript: anInteger
	"Set the receiver's 'javascript' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_javascript put: anInteger!

javascript_access_clipboard
	"Answer the <Integer> value of the receiver's 'javascript_access_clipboard' field."

	^bytes sdwordAtOffset: _OffsetOf_javascript_access_clipboard!

javascript_access_clipboard: anInteger
	"Set the receiver's 'javascript_access_clipboard' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_javascript_access_clipboard put: anInteger!

javascript_close_windows
	"Answer the <Integer> value of the receiver's 'javascript_close_windows' field."

	^bytes sdwordAtOffset: _OffsetOf_javascript_close_windows!

javascript_close_windows: anInteger
	"Set the receiver's 'javascript_close_windows' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_javascript_close_windows put: anInteger!

javascript_dom_paste
	"Answer the <Integer> value of the receiver's 'javascript_dom_paste' field."

	^bytes sdwordAtOffset: _OffsetOf_javascript_dom_paste!

javascript_dom_paste: anInteger
	"Set the receiver's 'javascript_dom_paste' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_javascript_dom_paste put: anInteger!

local_storage
	"Answer the <Integer> value of the receiver's 'local_storage' field."

	^bytes sdwordAtOffset: _OffsetOf_local_storage!

local_storage: anInteger
	"Set the receiver's 'local_storage' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_local_storage put: anInteger!

minimum_font_size
	"Answer the <Integer> value of the receiver's 'minimum_font_size' field."

	^bytes sdwordAtOffset: _OffsetOf_minimum_font_size!

minimum_font_size: anInteger
	"Set the receiver's 'minimum_font_size' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_minimum_font_size put: anInteger!

minimum_logical_font_size
	"Answer the <Integer> value of the receiver's 'minimum_logical_font_size' field."

	^bytes sdwordAtOffset: _OffsetOf_minimum_logical_font_size!

minimum_logical_font_size: anInteger
	"Set the receiver's 'minimum_logical_font_size' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_minimum_logical_font_size put: anInteger!

remote_fonts
	"Answer the <Integer> value of the receiver's 'remote_fonts' field."

	^bytes sdwordAtOffset: _OffsetOf_remote_fonts!

remote_fonts: anInteger
	"Set the receiver's 'remote_fonts' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_remote_fonts put: anInteger!

sans_serif_font_family
	"Answer the <CefString> value of the receiver's 'sans_serif_font_family' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_sans_serif_font_family!

sans_serif_font_family: aCefString
	"Set the receiver's 'sans_serif_font_family' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_sans_serif_font_family + 1)
		to: ##(_OffsetOf_sans_serif_font_family + CefString basicByteSize)
		startingAt: 1!

serif_font_family
	"Answer the <CefString> value of the receiver's 'serif_font_family' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_serif_font_family!

serif_font_family: aCefString
	"Set the receiver's 'serif_font_family' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_serif_font_family + 1)
		to: ##(_OffsetOf_serif_font_family + CefString basicByteSize)
		startingAt: 1!

standard_font_family
	"Answer the <CefString> value of the receiver's 'standard_font_family' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_standard_font_family!

standard_font_family: aCefString
	"Set the receiver's 'standard_font_family' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_standard_font_family + 1)
		to: ##(_OffsetOf_standard_font_family + CefString basicByteSize)
		startingAt: 1!

tab_to_links
	"Answer the <Integer> value of the receiver's 'tab_to_links' field."

	^bytes sdwordAtOffset: _OffsetOf_tab_to_links!

tab_to_links: anInteger
	"Set the receiver's 'tab_to_links' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_tab_to_links put: anInteger!

text_area_resize
	"Answer the <Integer> value of the receiver's 'text_area_resize' field."

	^bytes sdwordAtOffset: _OffsetOf_text_area_resize!

text_area_resize: anInteger
	"Set the receiver's 'text_area_resize' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_text_area_resize put: anInteger!

webgl
	"Answer the <Integer> value of the receiver's 'webgl' field."

	^bytes sdwordAtOffset: _OffsetOf_webgl!

webgl: anInteger
	"Set the receiver's 'webgl' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_webgl put: anInteger!

windowless_frame_rate
	"Answer the <Integer> value of the receiver's 'windowless_frame_rate' field."

	^bytes sdwordAtOffset: _OffsetOf_windowless_frame_rate!

windowless_frame_rate: anInteger
	"Set the receiver's 'windowless_frame_rate' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_windowless_frame_rate put: anInteger! !

!CefBrowserSettings categoriesForMethods!
background_color!**compiled accessors**!public! !
background_color:!**compiled accessors**!public! !
cefSize!**compiled accessors**!public! !
cefSize:!**compiled accessors**!public! !
chrome_status_bubble!**compiled accessors**!public! !
chrome_status_bubble:!**compiled accessors**!public! !
chrome_zoom_bubble!**compiled accessors**!public! !
chrome_zoom_bubble:!**compiled accessors**!public! !
cursive_font_family!**compiled accessors**!public! !
cursive_font_family:!**compiled accessors**!public! !
databases!**compiled accessors**!public! !
databases:!**compiled accessors**!public! !
default_encoding!**compiled accessors**!public! !
default_encoding:!**compiled accessors**!public! !
default_fixed_font_size!**compiled accessors**!public! !
default_fixed_font_size:!**compiled accessors**!public! !
default_font_size!**compiled accessors**!public! !
default_font_size:!**compiled accessors**!public! !
fantasy_font_family!**compiled accessors**!public! !
fantasy_font_family:!**compiled accessors**!public! !
fixed_font_family!**compiled accessors**!public! !
fixed_font_family:!**compiled accessors**!public! !
image_loading!**compiled accessors**!public! !
image_loading:!**compiled accessors**!public! !
image_shrink_standalone_to_fit!**compiled accessors**!public! !
image_shrink_standalone_to_fit:!**compiled accessors**!public! !
initialize!public! !
javascript!**compiled accessors**!public! !
javascript:!**compiled accessors**!public! !
javascript_access_clipboard!**compiled accessors**!public! !
javascript_access_clipboard:!**compiled accessors**!public! !
javascript_close_windows!**compiled accessors**!public! !
javascript_close_windows:!**compiled accessors**!public! !
javascript_dom_paste!**compiled accessors**!public! !
javascript_dom_paste:!**compiled accessors**!public! !
local_storage!**compiled accessors**!public! !
local_storage:!**compiled accessors**!public! !
minimum_font_size!**compiled accessors**!public! !
minimum_font_size:!**compiled accessors**!public! !
minimum_logical_font_size!**compiled accessors**!public! !
minimum_logical_font_size:!**compiled accessors**!public! !
remote_fonts!**compiled accessors**!public! !
remote_fonts:!**compiled accessors**!public! !
sans_serif_font_family!**compiled accessors**!public! !
sans_serif_font_family:!**compiled accessors**!public! !
serif_font_family!**compiled accessors**!public! !
serif_font_family:!**compiled accessors**!public! !
standard_font_family!**compiled accessors**!public! !
standard_font_family:!**compiled accessors**!public! !
tab_to_links!**compiled accessors**!public! !
tab_to_links:!**compiled accessors**!public! !
text_area_resize!**compiled accessors**!public! !
text_area_resize:!**compiled accessors**!public! !
webgl!**compiled accessors**!public! !
webgl:!**compiled accessors**!public! !
windowless_frame_rate!**compiled accessors**!public! !
windowless_frame_rate:!**compiled accessors**!public! !
!

!CefBrowserSettings class methodsFor!

defineFields
	"CefBrowserSettings  compileDefinition"

	self
		defineField: #cefSize type: DWORDField new;
		defineField: #windowless_frame_rate type: SDWORDField new;
		defineField: #standard_font_family type: (StructureField type: CefString);
		defineField: #fixed_font_family type: (StructureField type: CefString);
		defineField: #serif_font_family type: (StructureField type: CefString);
		defineField: #sans_serif_font_family type: (StructureField type: CefString);
		defineField: #cursive_font_family type: (StructureField type: CefString);
		defineField: #fantasy_font_family type: (StructureField type: CefString);
		defineField: #default_font_size type: SDWORDField new;
		defineField: #default_fixed_font_size type: SDWORDField new;
		defineField: #minimum_font_size type: SDWORDField new;
		defineField: #minimum_logical_font_size type: SDWORDField new;
		defineField: #default_encoding type: (StructureField type: CefString);
		defineField: #remote_fonts type: SDWORDField new;
		defineField: #javascript type: SDWORDField new;
		defineField: #javascript_close_windows type: SDWORDField new;
		defineField: #javascript_access_clipboard type: SDWORDField new;
		defineField: #javascript_dom_paste type: SDWORDField new;
		defineField: #image_loading type: SDWORDField new;
		defineField: #image_shrink_standalone_to_fit type: SDWORDField new;
		defineField: #text_area_resize type: SDWORDField new;
		defineField: #tab_to_links type: SDWORDField new;
		defineField: #local_storage type: SDWORDField new;
		defineField: #databases type: SDWORDField new;
		defineField: #webgl type: SDWORDField new;
		defineField: #background_color type: DWORDField new;
		defineField: #chrome_status_bubble type: SDWORDField new;
		defineField: #chrome_zoom_bubble type: SDWORDField new!

getFieldNames
	^#(#cefSize #windowless_frame_rate #standard_font_family #fixed_font_family #serif_font_family #sans_serif_font_family #cursive_font_family #fantasy_font_family #default_font_size #default_fixed_font_size #minimum_font_size #minimum_logical_font_size #default_encoding #remote_fonts #javascript #javascript_close_windows #javascript_access_clipboard #javascript_dom_paste #image_loading #image_shrink_standalone_to_fit #text_area_resize #tab_to_links #local_storage #databases #webgl #background_color #chrome_status_bubble #chrome_zoom_bubble)! !

!CefBrowserSettings class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

