﻿"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefSettings
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_accept_language_list _OffsetOf_background_color _OffsetOf_browser_subprocess_path _OffsetOf_cache_path _OffsetOf_cefSize _OffsetOf_chrome_app_icon_id _OffsetOf_chrome_policy_id _OffsetOf_command_line_args_disabled _OffsetOf_cookieable_scheme_list _OffsetOf_cookieable_schemes_exclude_defaults _OffsetOf_external_message_pump _OffsetOf_framework_dir_path _OffsetOf_javascript_flags _OffsetOf_locale _OffsetOf_locales_dir_path _OffsetOf_log_file _OffsetOf_log_items _OffsetOf_log_severity _OffsetOf_main_bundle_path _OffsetOf_multi_threaded_message_loop _OffsetOf_no_sandbox _OffsetOf_persist_session_cookies _OffsetOf_remote_debugging_port _OffsetOf_resources_dir_path _OffsetOf_root_cache_path _OffsetOf_uncaught_exception_stack_size _OffsetOf_user_agent _OffsetOf_user_agent_product _OffsetOf_windowless_rendering_enabled'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefSettings guid: (GUID fromString: '{321503ef-cca4-4525-bfb6-ff089d57929c}')!

CefSettings addClassConstant: '_OffsetOf_accept_language_list' value: 16rC0!
CefSettings addClassConstant: '_OffsetOf_background_color' value: 16rBC!
CefSettings addClassConstant: '_OffsetOf_browser_subprocess_path' value: 16r8!
CefSettings addClassConstant: '_OffsetOf_cache_path' value: 16r3C!
CefSettings addClassConstant: '_OffsetOf_cefSize' value: 16r0!
CefSettings addClassConstant: '_OffsetOf_chrome_app_icon_id' value: 16rE8!
CefSettings addClassConstant: '_OffsetOf_chrome_policy_id' value: 16rDC!
CefSettings addClassConstant: '_OffsetOf_command_line_args_disabled' value: 16r38!
CefSettings addClassConstant: '_OffsetOf_cookieable_scheme_list' value: 16rCC!
CefSettings addClassConstant: '_OffsetOf_cookieable_schemes_exclude_defaults' value: 16rD8!
CefSettings addClassConstant: '_OffsetOf_external_message_pump' value: 16r30!
CefSettings addClassConstant: '_OffsetOf_framework_dir_path' value: 16r14!
CefSettings addClassConstant: '_OffsetOf_javascript_flags' value: 16r90!
CefSettings addClassConstant: '_OffsetOf_locale' value: 16r70!
CefSettings addClassConstant: '_OffsetOf_locales_dir_path' value: 16rA8!
CefSettings addClassConstant: '_OffsetOf_log_file' value: 16r7C!
CefSettings addClassConstant: '_OffsetOf_log_items' value: 16r8C!
CefSettings addClassConstant: '_OffsetOf_log_severity' value: 16r88!
CefSettings addClassConstant: '_OffsetOf_main_bundle_path' value: 16r20!
CefSettings addClassConstant: '_OffsetOf_multi_threaded_message_loop' value: 16r2C!
CefSettings addClassConstant: '_OffsetOf_no_sandbox' value: 16r4!
CefSettings addClassConstant: '_OffsetOf_persist_session_cookies' value: 16r54!
CefSettings addClassConstant: '_OffsetOf_remote_debugging_port' value: 16rB4!
CefSettings addClassConstant: '_OffsetOf_resources_dir_path' value: 16r9C!
CefSettings addClassConstant: '_OffsetOf_root_cache_path' value: 16r48!
CefSettings addClassConstant: '_OffsetOf_uncaught_exception_stack_size' value: 16rB8!
CefSettings addClassConstant: '_OffsetOf_user_agent' value: 16r58!
CefSettings addClassConstant: '_OffsetOf_user_agent_product' value: 16r64!
CefSettings addClassConstant: '_OffsetOf_windowless_rendering_enabled' value: 16r34!

CefSettings comment: ''!

!CefSettings categoriesForClass!External-Data-Structured! !

!CefSettings methodsFor!

accept_language_list
	"Answer the <CefString> value of the receiver's 'accept_language_list' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_accept_language_list!

accept_language_list: aCefString
	"Set the receiver's 'accept_language_list' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_accept_language_list + 1)
		to: ##(_OffsetOf_accept_language_list + CefString basicByteSize)
		startingAt: 1!

background_color
	"Answer the <Integer> value of the receiver's 'background_color' field."

	^bytes dwordAtOffset: _OffsetOf_background_color!

background_color: anInteger
	"Set the receiver's 'background_color' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_background_color put: anInteger!

browser_subprocess_path
	"Answer the <CefString> value of the receiver's 'browser_subprocess_path' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_browser_subprocess_path!

browser_subprocess_path: aCefString
	"Set the receiver's 'browser_subprocess_path' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_browser_subprocess_path + 1)
		to: ##(_OffsetOf_browser_subprocess_path + CefString basicByteSize)
		startingAt: 1!

cache_path
	"Answer the <CefString> value of the receiver's 'cache_path' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_cache_path!

cache_path: aCefString
	"Set the receiver's 'cache_path' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_cache_path + 1)
		to: ##(_OffsetOf_cache_path + CefString basicByteSize)
		startingAt: 1!

cefSize
	"Answer the <Integer> value of the receiver's 'cefSize' field."

	^bytes dwordAtOffset: _OffsetOf_cefSize!

cefSize: anInteger
	"Set the receiver's 'cefSize' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_cefSize put: anInteger!

chrome_app_icon_id
	"Answer the <Integer> value of the receiver's 'chrome_app_icon_id' field."

	^bytes sdwordAtOffset: _OffsetOf_chrome_app_icon_id!

chrome_app_icon_id: anInteger
	"Set the receiver's 'chrome_app_icon_id' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_chrome_app_icon_id put: anInteger!

chrome_policy_id
	"Answer the <CefString> value of the receiver's 'chrome_policy_id' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_chrome_policy_id!

chrome_policy_id: aCefString
	"Set the receiver's 'chrome_policy_id' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_chrome_policy_id + 1)
		to: ##(_OffsetOf_chrome_policy_id + CefString basicByteSize)
		startingAt: 1!

command_line_args_disabled
	"Answer the <Integer> value of the receiver's 'command_line_args_disabled' field."

	^bytes sdwordAtOffset: _OffsetOf_command_line_args_disabled!

command_line_args_disabled: anInteger
	"Set the receiver's 'command_line_args_disabled' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_command_line_args_disabled put: anInteger!

cookieable_scheme_list
	"Answer the <CefString> value of the receiver's 'cookieable_scheme_list' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_cookieable_scheme_list!

cookieable_scheme_list: aCefString
	"Set the receiver's 'cookieable_scheme_list' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_cookieable_scheme_list + 1)
		to: ##(_OffsetOf_cookieable_scheme_list + CefString basicByteSize)
		startingAt: 1!

cookieable_schemes_exclude_defaults
	"Answer the <Integer> value of the receiver's 'cookieable_schemes_exclude_defaults' field."

	^bytes sdwordAtOffset: _OffsetOf_cookieable_schemes_exclude_defaults!

cookieable_schemes_exclude_defaults: anInteger
	"Set the receiver's 'cookieable_schemes_exclude_defaults' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_cookieable_schemes_exclude_defaults put: anInteger!

external_message_pump
	"Answer the <Integer> value of the receiver's 'external_message_pump' field."

	^bytes sdwordAtOffset: _OffsetOf_external_message_pump!

external_message_pump: anInteger
	"Set the receiver's 'external_message_pump' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_external_message_pump put: anInteger!

framework_dir_path
	"Answer the <CefString> value of the receiver's 'framework_dir_path' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_framework_dir_path!

framework_dir_path: aCefString
	"Set the receiver's 'framework_dir_path' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_framework_dir_path + 1)
		to: ##(_OffsetOf_framework_dir_path + CefString basicByteSize)
		startingAt: 1!

initialize
	super initialize.
	self cefSize: self class byteSize!

javascript_flags
	"Answer the <CefString> value of the receiver's 'javascript_flags' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_javascript_flags!

javascript_flags: aCefString
	"Set the receiver's 'javascript_flags' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_javascript_flags + 1)
		to: ##(_OffsetOf_javascript_flags + CefString basicByteSize)
		startingAt: 1!

locale
	"Answer the <CefString> value of the receiver's 'locale' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_locale!

locale: aCefString
	"Set the receiver's 'locale' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_locale + 1)
		to: ##(_OffsetOf_locale + CefString basicByteSize)
		startingAt: 1!

locales_dir_path
	"Answer the <CefString> value of the receiver's 'locales_dir_path' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_locales_dir_path!

locales_dir_path: aCefString
	"Set the receiver's 'locales_dir_path' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_locales_dir_path + 1)
		to: ##(_OffsetOf_locales_dir_path + CefString basicByteSize)
		startingAt: 1!

log_file
	"Answer the <CefString> value of the receiver's 'log_file' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_log_file!

log_file: aCefString
	"Set the receiver's 'log_file' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_log_file + 1)
		to: ##(_OffsetOf_log_file + CefString basicByteSize)
		startingAt: 1!

log_items
	"Answer the <Integer> value of the receiver's 'log_items' field."

	^bytes sdwordAtOffset: _OffsetOf_log_items!

log_items: anInteger
	"Set the receiver's 'log_items' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_log_items put: anInteger!

log_severity
	"Answer the <Integer> value of the receiver's 'log_severity' field."

	^bytes sdwordAtOffset: _OffsetOf_log_severity!

log_severity: anInteger
	"Set the receiver's 'log_severity' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_log_severity put: anInteger!

main_bundle_path
	"Answer the <CefString> value of the receiver's 'main_bundle_path' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_main_bundle_path!

main_bundle_path: aCefString
	"Set the receiver's 'main_bundle_path' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_main_bundle_path + 1)
		to: ##(_OffsetOf_main_bundle_path + CefString basicByteSize)
		startingAt: 1!

multi_threaded_message_loop
	"Answer the <Integer> value of the receiver's 'multi_threaded_message_loop' field."

	^bytes sdwordAtOffset: _OffsetOf_multi_threaded_message_loop!

multi_threaded_message_loop: anInteger
	"Set the receiver's 'multi_threaded_message_loop' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_multi_threaded_message_loop put: anInteger!

no_sandbox
	"Answer the <Integer> value of the receiver's 'no_sandbox' field."

	^bytes sdwordAtOffset: _OffsetOf_no_sandbox!

no_sandbox: anInteger
	"Set the receiver's 'no_sandbox' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_no_sandbox put: anInteger!

persist_session_cookies
	"Answer the <Integer> value of the receiver's 'persist_session_cookies' field."

	^bytes sdwordAtOffset: _OffsetOf_persist_session_cookies!

persist_session_cookies: anInteger
	"Set the receiver's 'persist_session_cookies' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_persist_session_cookies put: anInteger!

remote_debugging_port
	"Answer the <Integer> value of the receiver's 'remote_debugging_port' field."

	^bytes sdwordAtOffset: _OffsetOf_remote_debugging_port!

remote_debugging_port: anInteger
	"Set the receiver's 'remote_debugging_port' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_remote_debugging_port put: anInteger!

resources_dir_path
	"Answer the <CefString> value of the receiver's 'resources_dir_path' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_resources_dir_path!

resources_dir_path: aCefString
	"Set the receiver's 'resources_dir_path' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_resources_dir_path + 1)
		to: ##(_OffsetOf_resources_dir_path + CefString basicByteSize)
		startingAt: 1!

root_cache_path
	"Answer the <CefString> value of the receiver's 'root_cache_path' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_root_cache_path!

root_cache_path: aCefString
	"Set the receiver's 'root_cache_path' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_root_cache_path + 1)
		to: ##(_OffsetOf_root_cache_path + CefString basicByteSize)
		startingAt: 1!

uncaught_exception_stack_size
	"Answer the <Integer> value of the receiver's 'uncaught_exception_stack_size' field."

	^bytes sdwordAtOffset: _OffsetOf_uncaught_exception_stack_size!

uncaught_exception_stack_size: anInteger
	"Set the receiver's 'uncaught_exception_stack_size' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_uncaught_exception_stack_size put: anInteger!

user_agent
	"Answer the <CefString> value of the receiver's 'user_agent' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_user_agent!

user_agent: aCefString
	"Set the receiver's 'user_agent' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_user_agent + 1)
		to: ##(_OffsetOf_user_agent + CefString basicByteSize)
		startingAt: 1!

user_agent_product
	"Answer the <CefString> value of the receiver's 'user_agent_product' field."

	^CefString fromAddress: bytes yourAddress + _OffsetOf_user_agent_product!

user_agent_product: aCefString
	"Set the receiver's 'user_agent_product' field to the value of the argument, aCefString"

	aCefString
		replaceBytesOf: bytes
		from: ##(_OffsetOf_user_agent_product + 1)
		to: ##(_OffsetOf_user_agent_product + CefString basicByteSize)
		startingAt: 1!

windowless_rendering_enabled
	"Answer the <Integer> value of the receiver's 'windowless_rendering_enabled' field."

	^bytes sdwordAtOffset: _OffsetOf_windowless_rendering_enabled!

windowless_rendering_enabled: anInteger
	"Set the receiver's 'windowless_rendering_enabled' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_windowless_rendering_enabled put: anInteger! !

!CefSettings categoriesForMethods!
accept_language_list!**compiled accessors**!public! !
accept_language_list:!**compiled accessors**!public! !
background_color!**compiled accessors**!public! !
background_color:!**compiled accessors**!public! !
browser_subprocess_path!**compiled accessors**!public! !
browser_subprocess_path:!**compiled accessors**!public! !
cache_path!**compiled accessors**!public! !
cache_path:!**compiled accessors**!public! !
cefSize!**compiled accessors**!public! !
cefSize:!**compiled accessors**!public! !
chrome_app_icon_id!**compiled accessors**!public! !
chrome_app_icon_id:!**compiled accessors**!public! !
chrome_policy_id!**compiled accessors**!public! !
chrome_policy_id:!**compiled accessors**!public! !
command_line_args_disabled!**compiled accessors**!public! !
command_line_args_disabled:!**compiled accessors**!public! !
cookieable_scheme_list!**compiled accessors**!public! !
cookieable_scheme_list:!**compiled accessors**!public! !
cookieable_schemes_exclude_defaults!**compiled accessors**!public! !
cookieable_schemes_exclude_defaults:!**compiled accessors**!public! !
external_message_pump!**compiled accessors**!public! !
external_message_pump:!**compiled accessors**!public! !
framework_dir_path!**compiled accessors**!public! !
framework_dir_path:!**compiled accessors**!public! !
initialize!public! !
javascript_flags!**compiled accessors**!public! !
javascript_flags:!**compiled accessors**!public! !
locale!**compiled accessors**!public! !
locale:!**compiled accessors**!public! !
locales_dir_path!**compiled accessors**!public! !
locales_dir_path:!**compiled accessors**!public! !
log_file!**compiled accessors**!public! !
log_file:!**compiled accessors**!public! !
log_items!**compiled accessors**!public! !
log_items:!**compiled accessors**!public! !
log_severity!**compiled accessors**!public! !
log_severity:!**compiled accessors**!public! !
main_bundle_path!**compiled accessors**!public! !
main_bundle_path:!**compiled accessors**!public! !
multi_threaded_message_loop!**compiled accessors**!public! !
multi_threaded_message_loop:!**compiled accessors**!public! !
no_sandbox!**compiled accessors**!public! !
no_sandbox:!**compiled accessors**!public! !
persist_session_cookies!**compiled accessors**!public! !
persist_session_cookies:!**compiled accessors**!public! !
remote_debugging_port!**compiled accessors**!public! !
remote_debugging_port:!**compiled accessors**!public! !
resources_dir_path!**compiled accessors**!public! !
resources_dir_path:!**compiled accessors**!public! !
root_cache_path!**compiled accessors**!public! !
root_cache_path:!**compiled accessors**!public! !
uncaught_exception_stack_size!**compiled accessors**!public! !
uncaught_exception_stack_size:!**compiled accessors**!public! !
user_agent!**compiled accessors**!public! !
user_agent:!**compiled accessors**!public! !
user_agent_product!**compiled accessors**!public! !
user_agent_product:!**compiled accessors**!public! !
windowless_rendering_enabled!**compiled accessors**!public! !
windowless_rendering_enabled:!**compiled accessors**!public! !
!

!CefSettings class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #cefSize type: DWORDField new;
		defineField: #no_sandbox type: SDWORDField new;
		defineField: #browser_subprocess_path type: (StructureField type: CefString);
		defineField: #framework_dir_path type: (StructureField type: CefString);
		defineField: #main_bundle_path type: (StructureField type: CefString);
		defineField: #multi_threaded_message_loop type: SDWORDField new;
		defineField: #external_message_pump type: SDWORDField new;
		defineField: #windowless_rendering_enabled type: SDWORDField new;
		defineField: #command_line_args_disabled type: SDWORDField new;
		defineField: #cache_path type: (StructureField type: CefString);
		defineField: #root_cache_path type: (StructureField type: CefString);
		defineField: #persist_session_cookies type: SDWORDField new;
		defineField: #user_agent type: (StructureField type: CefString);
		defineField: #user_agent_product type: (StructureField type: CefString);
		defineField: #locale type: (StructureField type: CefString);
		defineField: #log_file type: (StructureField type: CefString);
		defineField: #log_severity type: SDWORDField new;
		defineField: #log_items type: SDWORDField new;
		defineField: #javascript_flags type: (StructureField type: CefString);
		defineField: #resources_dir_path type: (StructureField type: CefString);
		defineField: #locales_dir_path type: (StructureField type: CefString);
		defineField: #remote_debugging_port type: SDWORDField new;
		defineField: #uncaught_exception_stack_size type: SDWORDField new;
		defineField: #background_color type: DWORDField new;
		defineField: #accept_language_list type: (StructureField type: CefString);
		defineField: #cookieable_scheme_list type: (StructureField type: CefString);
		defineField: #cookieable_schemes_exclude_defaults type: SDWORDField new;
		defineField: #chrome_policy_id type: (StructureField type: CefString);
		defineField: #chrome_app_icon_id type: SDWORDField new!

getFieldNames
	^#(#cefSize #no_sandbox #browser_subprocess_path #framework_dir_path #main_bundle_path #multi_threaded_message_loop #external_message_pump #windowless_rendering_enabled #command_line_args_disabled #cache_path #root_cache_path #persist_session_cookies #user_agent #user_agent_product #locale #log_file #log_severity #log_items #javascript_flags #resources_dir_path #locales_dir_path #remote_debugging_port #uncaught_exception_stack_size #background_color #accept_language_list #cookieable_scheme_list #cookieable_schemes_exclude_defaults #chrome_policy_id #chrome_app_icon_id)! !

!CefSettings class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

