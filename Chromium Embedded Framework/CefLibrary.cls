"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #CefLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefLibrary guid: (GUID fromString: '{d15b2fd7-ea09-431a-afc1-20b8d4b218f5}')!
CefLibrary comment: ''!
!CefLibrary categoriesForClass!External-Libraries! !
!CefLibrary methodsFor!

browserHostCreateBrowser_windowInfo: win_info client: client url: url settings: settings extraInfo: extra_info requestContext: request_context
	"cef_browser_capi.h

	///
	/// Create a new browser using the window parameters specified by |windowInfo|.
	/// All values will be copied internally and the actual window (if any) will be
	/// created on the UI thread. If |request_context| is NULL the global request
	/// context will be used. This function can be called on any browser process
	/// thread and will not block. The optional |extra_info| parameter provides an
	/// opportunity to specify extra information specific to the created browser
	/// that will be passed to cef_render_process_handler_t::on_browser_created() in
	/// the render process.
	///
	CEF_EXPORT int cef_browser_host_create_browser(
	    const cef_window_info_t* windowInfo,
	    struct _cef_client_t* client,
	    const cef_string_t* url,
	    const struct _cef_browser_settings_t* settings,
	    struct _cef_dictionary_value_t* extra_info,
	    struct _cef_request_context_t* request_context);"

	<stdcall: sdword cef_browser_host_create_browser CefWindowInfo* CefClient* CefString* CefBrowserSettings* lpvoid lpvoid>
	^self invalidCall: _failureCode!

browserHostCreateBrowserSync_windowInfo: win_info client: client url: url settings: settings extraInfo: extra_info requestContext: request_context
	"cef_browser_capi.h

	///
	/// Create a new browser using the window parameters specified by |windowInfo|.
	/// If |request_context| is NULL the global request context will be used. This
	/// function can only be called on the browser process UI thread. The optional
	/// |extra_info| parameter provides an opportunity to specify extra information
	/// specific to the created browser that will be passed to
	/// cef_render_process_handler_t::on_browser_created() in the render process.
	///
	CEF_EXPORT cef_browser_t* cef_browser_host_create_browser_sync(
	    const cef_window_info_t* windowInfo,
	    struct _cef_client_t* client,
	    const cef_string_t* url,
	    const struct _cef_browser_settings_t* settings,
	    struct _cef_dictionary_value_t* extra_info,
	    struct _cef_request_context_t* request_context);"

	<stdcall: CefBrowser* cef_browser_host_create_browser_sync CefWindowInfo* CefClient* CefString* CefBrowserSettings* lpvoid lpvoid>
	^self invalidCall: _failureCode!

doMessageLoopWork
	"cef_app_capi.h

	///
	/// Perform a single iteration of CEF message loop processing. This function is
	/// provided for cases where the CEF message loop must be integrated into an
	/// existing application message loop. Use of this function is not recommended
	/// for most users; use either the cef_run_message_loop() function or
	/// cef_settings_t.multi_threaded_message_loop if possible. When using this
	/// function care must be taken to balance performance against excessive CPU
	/// usage. It is recommended to enable the cef_settings_t.external_message_pump
	/// option when using this function so that
	/// cef_browser_process_handler_t::on_schedule_message_pump_work() callbacks can
	/// facilitate the scheduling process. This function should only be called on
	/// the main application thread and only if cef_initialize() is called with a
	/// cef_settings_t.multi_threaded_message_loop value of false (0). This function
	/// will not block.
	///
	CEF_EXPORT void cef_do_message_loop_work(void);"

	<stdcall: void cef_do_message_loop_work>
	^self invalidCall: _failureCode!

executeProcess_args: args application: application windowsSandboxInfo: windows_sandbox_info
	"cef_app_capi.h

	///
	/// This function should be called from the application entry point function to
	/// execute a secondary process. It can be used to run secondary processes from
	/// the browser client executable (default behavior) or from a separate
	/// executable specified by the cef_settings_t.browser_subprocess_path value. If
	/// called for the browser process (identified by no 'type' command-line value)
	/// it will return immediately with a value of -1. If called for a recognized
	/// secondary process it will block until the process should exit and then
	/// return the process exit code. The |application| parameter may be NULL. The
	/// |windows_sandbox_info| parameter is only used on Windows and may be NULL
	/// (see cef_sandbox_win.h for details).
	///
	CEF_EXPORT int cef_execute_process(const cef_main_args_t* args,
					   cef_app_t* application,
					   void* windows_sandbox_info);"

	<stdcall: sdword cef_execute_process CefMainArgs* CefApp* void*>
	^self invalidCall: _failureCode!

initialize_args: args settings: settings application: application windowsSandboxInfo: windows_sandbox_info
	"cef_app_capi.h

	///
	/// This function should be called on the main application thread to initialize
	/// the CEF browser process. The |application| parameter may be NULL. A return
	/// value of true (1) indicates that it succeeded and false (0) indicates that
	/// it failed. The |windows_sandbox_info| parameter is only used on Windows and
	/// may be NULL (see cef_sandbox_win.h for details).
	///

	CEF_EXPORT int cef_initialize(const cef_main_args_t* args,
				      const struct _cef_settings_t* settings,
				      cef_app_t* application,
				      void* windows_sandbox_info);"

	<stdcall: sdword cef_initialize CefMainArgs* CefSettings* CefApp* void*>
	^self invalidCall: _failureCode!

shutdown
	"cef_app_capi.h

	///
	/// This function should be called on the main application thread to shut down
	/// the CEF browser process before the application exits.
	///
	CEF_EXPORT void cef_shutdown(void);"

	<stdcall: void cef_shutdown>
	^self invalidCall: _failureCode!

stringFromAscii_src: src srcLen: src_len output: output 
	<stdcall: sdword cef_string_ascii_to_utf16 char* dword CefString*>
	^self invalidCall: _failureCode! !
!CefLibrary categoriesForMethods!
browserHostCreateBrowser_windowInfo:client:url:settings:extraInfo:requestContext:!public! !
browserHostCreateBrowserSync_windowInfo:client:url:settings:extraInfo:requestContext:!public! !
doMessageLoopWork!public! !
executeProcess_args:application:windowsSandboxInfo:!public! !
initialize_args:settings:application:windowsSandboxInfo:!public! !
shutdown!public! !
stringFromAscii_src:srcLen:output:!public! !
!

!CefLibrary class methodsFor!

fileName
	^'libcef.dll'! !
!CefLibrary class categoriesForMethods!
fileName!public! !
!

