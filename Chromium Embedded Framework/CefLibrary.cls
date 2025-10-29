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

apiHash_version: version entry: entry
	<cdecl: char* cef_api_hash sdword sdword>
	^self invalidCall: _failureCode!

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

	<cdecl: sdword cef_browser_host_create_browser CefWindowInfo* CefClient* CefString* CefBrowserSettings* void* void*>
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

	<cdecl: CefBrowser* cef_browser_host_create_browser_sync CefWindowInfo* CefClient* CefString* CefBrowserSettings* void* void*>
	^self invalidCall: _failureCode!

createUrl_parts: parts url: url
	<cdecl: sdword cef_create_url CefUrlParts* CefString*>
	^self invalidCall: _failureCode!

dictionaryValueCreate
	<cdecl: CefDictionaryValue* cef_dictionary_value_create>
	^self invalidCall: _failureCode!

doMessageLoopWork
	"///
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

	<cdecl: void cef_do_message_loop_work>
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

	<cdecl: sdword cef_execute_process CefMainArgs* CefApp* void*>
	^self invalidCall: _failureCode!

formatUrlForSecurityDisplay_originUrl: originUrl
	<cdecl: CefStringUserfree* cef_format_url_for_security_display CefString*>
	^self invalidCall: _failureCode!

getExitCode
	"///
	/// This function can optionally be called on the main application thread after
	/// CefInitialize to retrieve the initialization exit code. When CefInitialize
	/// returns true (1) the exit code will be 0 (CEF_RESULT_CODE_NORMAL_EXIT).
	/// Otherwise, see cef_resultcode_t for possible exit code values including
	/// browser process initialization errors and normal early exit conditions (such
	/// as CEF_RESULT_CODE_NORMAL_EXIT_PROCESS_NOTIFIED for process singleton
	/// relaunch behavior).
	///"

	<cdecl: sdword cef_get_exit_code>
	^self invalidCall: _failureCode!

initialize_args: args settings: settings application: application windowsSandboxInfo: windows_sandbox_info
	"///
	/// This function should be called on the main application thread to initialize
	/// the CEF browser process. The |application| parameter may be NULL. Returns
	/// true (1) if initialization succeeds. Returns false (0) if initialization
	/// fails or if early exit is desired (for example, due to process singleton
	/// relaunch behavior). If this function returns false (0) then the application
	/// should exit immediately without calling any other CEF functions except,
	/// optionally, CefGetErrorCode. The |windows_sandbox_info| parameter is only
	/// used on Windows and may be NULL (see cef_sandbox_win.h for details).
	///
	CEF_EXPORT int cef_initialize(const cef_main_args_t* args,
				      const struct _cef_settings_t* settings,
				      cef_app_t* application,
				      void* windows_sandbox_info);"

	<cdecl: sdword cef_initialize CefMainArgs* CefSettings* CefApp* void*>
	^self invalidCall: _failureCode!

listValueCreate
	<cdecl: CefListValue* cef_list_value_create>
	^self invalidCall: _failureCode!

parseUrl_url: url parts: parts
	<cdecl: sdword cef_parse_url CefString* CefUrlParts*>
	^self invalidCall: _failureCode!

processMessageCreate_name: name
	<cdecl: CefProcessMessage* cef_process_message_create CefString*>
	^self invalidCall: _failureCode!

quitMessageLoop
	"///
	/// Quit the CEF message loop that was started by calling
	/// cef_run_message_loop(). This function should only be called on the main
	/// application thread and only if cef_run_message_loop() was used.
	///
	CEF_EXPORT void cef_quit_message_loop(void);"

	<cdecl: void cef_quit_message_loop>
	^self invalidCall: _failureCode!

resolveUrl_baseUrl: baseUrl relativeUrl: relativeUrl resolvedUrl: resolvedUrl
	<cdecl: sdword cef_resolve_url CefString* CefString* CefString*>
	^self invalidCall: _failureCode!

runMessageLoop
	"///
	/// Run the CEF message loop. Use this function instead of an application-
	/// provided message loop to get the best balance between performance and CPU
	/// usage. This function should only be called on the main application thread
	/// and only if cef_initialize() is called with a
	/// cef_settings_t.multi_threaded_message_loop value of false (0). This function
	/// will block until a quit message is received by the system.
	///
	CEF_EXPORT void cef_run_message_loop(void);"

	<cdecl: void cef_run_message_loop>
	^self invalidCall: _failureCode!

shutdown
	"///
	/// This function should be called on the main application thread to shut down
	/// the CEF browser process before the application exits. Do not call any other
	/// CEF functions after calling this function.
	///"

	<cdecl: void cef_shutdown>
	^self invalidCall: _failureCode!

stringFromAscii_src: src srcLen: src_len output: output 
	<cdecl: sdword cef_string_ascii_to_utf16 char* dword CefString*>
	^self invalidCall: _failureCode!

stringListSize_list: list
	<cdecl: dword cef_string_list_size CefStringList*>
	^self invalidCall: _failureCode!

stringListValue_list: list index: index value: value
	<cdecl: sdword cef_string_list_value CefStringList* dword CefString*>
	^self invalidCall: _failureCode!

stringUtf8ToUtf16_src: src srcLen: src_len output: output 
	<cdecl: sdword cef_string_utf8_to_utf16 char* dword CefString*>
	^self invalidCall: _failureCode!

taskManagerGet
	<cdecl: CefTaskManager* cef_task_manager_get>
	^self invalidCall: _failureCode! !

!CefLibrary categoriesForMethods!
apiHash_version:entry:!public! !
browserHostCreateBrowser_windowInfo:client:url:settings:extraInfo:requestContext:!public! !
browserHostCreateBrowserSync_windowInfo:client:url:settings:extraInfo:requestContext:!public! !
createUrl_parts:url:!parser!public! !
dictionaryValueCreate!public! !
doMessageLoopWork!public! !
executeProcess_args:application:windowsSandboxInfo:!public! !
formatUrlForSecurityDisplay_originUrl:!parser!public! !
getExitCode!public! !
initialize_args:settings:application:windowsSandboxInfo:!public! !
listValueCreate!public! !
parseUrl_url:parts:!parser!public! !
processMessageCreate_name:!public! !
quitMessageLoop!public! !
resolveUrl_baseUrl:relativeUrl:resolvedUrl:!parser!public! !
runMessageLoop!public! !
shutdown!public! !
stringFromAscii_src:srcLen:output:!public! !
stringListSize_list:!parser!public! !
stringListValue_list:index:value:!parser!public! !
stringUtf8ToUtf16_src:srcLen:output:!public! !
taskManagerGet!public! !
!

!CefLibrary class methodsFor!

cleanupResources
	CefReferenceCountedObject
		allSubclassesDo: [:eachClass | eachClass allInstances do: [:eachInstance | eachInstance oneWayBecome: nil]]!

fileName
	^FileLocator imageRelative: 'libcef'!

getTaskList
	| taskManager taskCount taskCountResult taskIds result |
	taskManager := self default taskManagerGet.
	taskCount := taskManager getTasksCount.
	taskCountResult := DWORD fromInteger: taskCount.
	taskIds := QWORDArray new: taskCount.
	result := taskManager getTaskIdsList_taskIdsCount: taskCountResult yourAddress taskIds: taskIds.
	result = 0 ifTrue: [^nil].
	^taskIds collect: 
			[:each |
			| taskInfo |
			taskInfo := CefTaskInfo new.
			taskManager getTaskInfo_taskId: each info: taskInfo.
			taskInfo]!

initialize
	"self initialize"

	SessionManager current
		when: #sessionStarted
		send: #onStartup
		to: self!

onStartup
	self cleanupResources! !

!CefLibrary class categoriesForMethods!
cleanupResources!public! !
fileName!public! !
getTaskList!public! !
initialize!public! !
onStartup!public! !
!

