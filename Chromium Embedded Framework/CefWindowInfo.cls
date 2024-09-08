"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefWindowInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_bounds _OffsetOf_ex_style _OffsetOf_external_begin_frame_enabled _OffsetOf_menu _OffsetOf_parent_window _OffsetOf_runtime_style _OffsetOf_shared_texture_enabled _OffsetOf_style _OffsetOf_window _OffsetOf_window_name _OffsetOf_windowless_rendering_enabled'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefWindowInfo guid: (GUID fromString: '{a23737b3-e519-4626-b17a-1af220364c5b}')!

CefWindowInfo addClassConstant: '_OffsetOf_bounds' value: 16r14!
CefWindowInfo addClassConstant: '_OffsetOf_ex_style' value: 16r0!
CefWindowInfo addClassConstant: '_OffsetOf_external_begin_frame_enabled' value: 16r34!
CefWindowInfo addClassConstant: '_OffsetOf_menu' value: 16r28!
CefWindowInfo addClassConstant: '_OffsetOf_parent_window' value: 16r24!
CefWindowInfo addClassConstant: '_OffsetOf_runtime_style' value: 16r3C!
CefWindowInfo addClassConstant: '_OffsetOf_shared_texture_enabled' value: 16r30!
CefWindowInfo addClassConstant: '_OffsetOf_style' value: 16r10!
CefWindowInfo addClassConstant: '_OffsetOf_window' value: 16r38!
CefWindowInfo addClassConstant: '_OffsetOf_window_name' value: 16r4!
CefWindowInfo addClassConstant: '_OffsetOf_windowless_rendering_enabled' value: 16r2C!

CefWindowInfo comment: ''!

!CefWindowInfo categoriesForClass!External-Data-Structured! !

!CefWindowInfo methodsFor!

bounds
	"Answer the <CefRect> value of the receiver's 'bounds' field."

	^CefRect fromAddress: bytes yourAddress + _OffsetOf_bounds!

bounds: aCefRect
	"Set the receiver's 'bounds' field to the value of the argument, aCefRect"

	aCefRect
		replaceBytesOf: bytes
		from: ##(_OffsetOf_bounds + 1)
		to: ##(_OffsetOf_bounds + CefRect basicByteSize)
		startingAt: 1!

ex_style
	"Answer the <Integer> value of the receiver's 'ex_style' field."

	^bytes dwordAtOffset: _OffsetOf_ex_style!

ex_style: anInteger
	"Set the receiver's 'ex_style' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_ex_style put: anInteger!

external_begin_frame_enabled
	"Answer the <Integer> value of the receiver's 'external_begin_frame_enabled' field."

	^bytes sdwordAtOffset: _OffsetOf_external_begin_frame_enabled!

external_begin_frame_enabled: anInteger
	"Set the receiver's 'external_begin_frame_enabled' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_external_begin_frame_enabled put: anInteger!

menu
	"Answer the <ExternalHandle> value of the receiver's 'menu' field."

	^(bytes uintPtrAtOffset: _OffsetOf_menu) asExternalHandle!

menu: anExternalHandle
	"Set the receiver's 'menu' field to the value of the argument, anExternalHandle"

	bytes uintPtrAtOffset: _OffsetOf_menu put: anExternalHandle!

parent_window
	"Answer the <ExternalHandle> value of the receiver's 'parent_window' field."

	^(bytes uintPtrAtOffset: _OffsetOf_parent_window) asExternalHandle!

parent_window: anExternalHandle
	"Set the receiver's 'parent_window' field to the value of the argument, anExternalHandle"

	bytes uintPtrAtOffset: _OffsetOf_parent_window put: anExternalHandle!

runtime_style
	"Answer the <Integer> value of the receiver's 'runtime_style' field."

	^bytes dwordAtOffset: _OffsetOf_runtime_style!

runtime_style: anInteger
	"Set the receiver's 'runtime_style' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_runtime_style put: anInteger!

shared_texture_enabled
	"Answer the <Integer> value of the receiver's 'shared_texture_enabled' field."

	^bytes sdwordAtOffset: _OffsetOf_shared_texture_enabled!

shared_texture_enabled: anInteger
	"Set the receiver's 'shared_texture_enabled' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_shared_texture_enabled put: anInteger!

style
	"Answer the <Integer> value of the receiver's 'style' field."

	^bytes dwordAtOffset: _OffsetOf_style!

style: anInteger
	"Set the receiver's 'style' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_style put: anInteger!

window
	"Answer the <ExternalHandle> value of the receiver's 'window' field."

	^(bytes uintPtrAtOffset: _OffsetOf_window) asExternalHandle!

window: anExternalHandle
	"Set the receiver's 'window' field to the value of the argument, anExternalHandle"

	bytes uintPtrAtOffset: _OffsetOf_window put: anExternalHandle!

window_name
	"Answer the <CefString> value of the receiver's 'window_name' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_window_name!

window_name: aCefString
	"Set the receiver's 'window_name' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_window_name + 1)
		to: ##(_OffsetOf_window_name + CefString basicByteSize)
		startingAt: 1!

windowless_rendering_enabled
	"Answer the <Integer> value of the receiver's 'windowless_rendering_enabled' field."

	^bytes sdwordAtOffset: _OffsetOf_windowless_rendering_enabled!

windowless_rendering_enabled: anInteger
	"Set the receiver's 'windowless_rendering_enabled' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_windowless_rendering_enabled put: anInteger! !

!CefWindowInfo categoriesForMethods!
bounds!**compiled accessors**!public! !
bounds:!**compiled accessors**!public! !
ex_style!**compiled accessors**!public! !
ex_style:!**compiled accessors**!public! !
external_begin_frame_enabled!**compiled accessors**!public! !
external_begin_frame_enabled:!**compiled accessors**!public! !
menu!**compiled accessors**!public! !
menu:!**compiled accessors**!public! !
parent_window!**compiled accessors**!public! !
parent_window:!**compiled accessors**!public! !
runtime_style!**compiled accessors**!public! !
runtime_style:!**compiled accessors**!public! !
shared_texture_enabled!**compiled accessors**!public! !
shared_texture_enabled:!**compiled accessors**!public! !
style!**compiled accessors**!public! !
style:!**compiled accessors**!public! !
window!**compiled accessors**!public! !
window:!**compiled accessors**!public! !
window_name!**compiled accessors**!public! !
window_name:!**compiled accessors**!public! !
windowless_rendering_enabled!**compiled accessors**!public! !
windowless_rendering_enabled:!**compiled accessors**!public! !
!

!CefWindowInfo class methodsFor!

defineFields
	"CEFWindowInfo  compileDefinition

	///
	/// Structure representing window information.
	///
	typedef struct _cef_window_info_t {
	  // Standard parameters required by CreateWindowEx()
	  DWORD ex_style;
	  cef_string_t window_name;
	  DWORD style;
	  cef_rect_t bounds;
	  cef_window_handle_t parent_window;
	  HMENU menu;

	  ///
	  /// Set to true (1) to create the browser using windowless (off-screen)
	  /// rendering. No window will be created for the browser and all rendering
	  /// will occur via the CefRenderHandler interface. The |parent_window| value
	  /// will be used to identify monitor info and to act as the parent window for
	  /// dialogs, context menus, etc. If |parent_window| is not provided then the
	  /// main screen monitor will be used and some functionality that requires a
	  /// parent window may not function correctly. In order to create windowless
	  /// browsers the CefSettings.windowless_rendering_enabled value must be set to
	  /// true. Transparent painting is enabled by default but can be disabled by
	  /// setting CefBrowserSettings.background_color to an opaque value.
	  ///
	  int windowless_rendering_enabled;

	  ///
	  /// Set to true (1) to enable shared textures for windowless rendering. Only
	  /// valid if windowless_rendering_enabled above is also set to true. Currently
	  /// only supported on Windows (D3D11).
	  ///
	  int shared_texture_enabled;

	  ///
	  /// Set to true (1) to enable the ability to issue BeginFrame requests from
	  /// the client application by calling CefBrowserHost::SendExternalBeginFrame.
	  ///
	  int external_begin_frame_enabled;

	  ///
	  /// Handle for the new browser window. Only used with windowed rendering.
	  ///
	  cef_window_handle_t window;

	  ///
	  /// Optionally change the runtime style. Alloy style will always be used if
	  /// |windowless_rendering_enabled| is true. See cef_runtime_style_t
	  /// documentation for details.
	  ///
	  cef_runtime_style_t runtime_style;
	} cef_window_info_t;"

	self
		defineField: #ex_style type: DWORDField new;
		defineField: #window_name type: (StructureField type: CefString);
		defineField: #style type: DWORDField new;
		defineField: #bounds type: (StructureField type: CefRect);
		defineField: #parent_window type: HANDLEField new;
		defineField: #menu type: HANDLEField new;
		defineField: #windowless_rendering_enabled type: SDWORDField new;
		defineField: #shared_texture_enabled type: SDWORDField new;
		defineField: #external_begin_frame_enabled type: SDWORDField new;
		defineField: #window type: HANDLEField new;
		defineField: #runtime_style type: DWORDField new!

getFieldNames
	^#(#ex_style #window_name #style #bounds #parent_window #menu #windowless_rendering_enabled #shared_texture_enabled #external_begin_frame_enabled #window #runtime_style)! !

!CefWindowInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

