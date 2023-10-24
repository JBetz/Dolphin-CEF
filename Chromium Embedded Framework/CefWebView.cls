"Filed out from Dolphin Smalltalk"!

ContainerView subclass: #CefWebView
	instanceVariableNames: 'windowInfo browserSettings client url cefHandle cefBrowser childBrowserView parentBrowserView cefview'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefWebView guid: (GUID fromString: '{8dd4867b-32a5-40c8-86f3-8e9e7be0b4ea}')!
CefWebView comment: ''!
!CefWebView categoriesForClass!MVP-Resources-Misc! !
!CefWebView methodsFor!

caption: aString 
	UserLibrary default setWindowText: cefHandle asParameter lpString: aString!

cefBrowser
	^cefBrowser!

cefWindowExStyle
	^0!

cefWindowStyle
	^##(WS_CHILD | WS_CLIPCHILDREN | WS_CLIPSIBLINGS | WS_TABSTOP | WS_VISIBLE)!

client
	^client 
		ifNil: 
			[client := CefClient new.
			client]!

closeCefWindow
	UserLibrary default 
		sendMessage: cefHandle asParameter
		msg: WM_CLOSE
		wParam: 0
		lParam: 0.
	self releaseCefView!

closeChildBrowser: browser
	| childView |
	childView := childBrowserView detect: [:each | each cefBrowser identifier == browser identifier]
				ifNone: [nil].
	childView ifNil: [^nil].
	childBrowserView remove: childView.
	childView releaseCefView!

closeChildren
	| c |
	c := childBrowserView.
	childBrowserView := OrderedCollection new.
	c do: [:each | each closeCefWindow]!

defaultLayoutManager
	"Private - Answer a default LayoutManager to use."

	^ProportionalLayout new !

defaultUrl
	^'http://www.google.com'!

doClose: this cefBrowser: browser
	^0!

ensureCefInit
	CefProcessRunner new.
	client := nil!

initialize
	super initialize.
	childBrowserView := OrderedCollection new!

isManaged
	^true!

onAddressChange: handler browser: browser frame: frame url: url!

onAfterCreated: aCEF3LifeSpanHandler browser: aCEF3Browser
	Transcript display: #onAfterCreated; cr.
	cefBrowser := aCEF3Browser!

onBeforeClose: this browser: browser
	cefHandle isNull
		ifFalse: 
			[browser identifier == cefBrowser identifier
				ifTrue: 
					[self closeChildren.
					self releaseCefView]
				ifFalse: [self closeChildBrowser: browser]]!

onDestroyed
	self releaseCefView.
	super onDestroyed!

onViewCreated
	| resultCode |
	self ensureCefInit.
	windowInfo := CefWindowInfo new
				window_name: 'CEF browser' asCefString;
				style: self cefWindowStyle;
				ex_style: self cefWindowExStyle;
				parent_window: self handle value;
				bounds: self clientRectangle asCefRect.
	browserSettings := CefBrowserSettings new.
	browserSettings
		local_storage: true;
		databases: true;
		javascript_close_windows: true;
		javascript_access_clipboard: true;
		javascript_dom_paste: true.
	resultCode := CefLibrary default
				browserHostCreateBrowser_windowInfo: windowInfo
				client: self client
				url: self url asCefString
				settings: browserSettings
				extraInfo: nil
				requestContext: nil.
	Transcript
		display: 'cef_browser_host_create_browser: ' , resultCode displayString;
		cr!

releaseCefView
	cefview isNil 
		ifFalse: 
			[cefview destroyed.
			cefview := nil]!

releaseClient
	self releaseCefLifeSpanHandler.
	client := nil!

setCefPosition
	| hdwp rect aFlag answer |
	rect := self clientRectangle.
	hdwp := UserLibrary default beginDeferWindowPos: 1.
	aFlag := flags := ##(SWP_NOZORDER | SWP_NOACTIVATE).
	hdwp := UserLibrary default 
				deferWindowPos: hdwp
				hwnd: cefHandle
				hwndInsertAfter: 0
				x: rect left
				y: rect top
				cx: rect width
				cy: rect height
				uFlags: aFlag.
	answer := UserLibrary default endDeferWindowPos: hdwp!

setUrl: aString
	url := aString.
	cefBrowser ifNil: [^nil].
	cefBrowser getMainFrame loadUrl_url: aString asCefString!

url
	^url ifNil: [url := self defaultUrl]!

url: aCEFString 
	url := aCEFString! !
!CefWebView categoriesForMethods!
caption:!public! !
cefBrowser!public! !
cefWindowExStyle!public! !
cefWindowStyle!public! !
client!accessing!public! !
closeCefWindow!public! !
closeChildBrowser:!public! !
closeChildren!public! !
defaultLayoutManager!public! !
defaultUrl!public! !
doClose:cefBrowser:!public! !
ensureCefInit!public! !
initialize!public! !
isManaged!public! !
onAddressChange:browser:frame:url:!public! !
onAfterCreated:browser:!public! !
onBeforeClose:browser:!public! !
onDestroyed!public! !
onViewCreated!public! !
releaseCefView!public! !
releaseClient!public! !
setCefPosition!public! !
setUrl:!public! !
url!public! !
url:!public! !
!

!CefWebView class methodsFor!

example
	" CefWebView example"

	| processRunner shell view |
	CefBrowserProcessRunner onShutdown.
	processRunner := CefBrowserProcessRunner new.
	processRunner ensureRunning.
	shell := ShellView new.
	shell
		layoutManager: ProportionalLayout new;
		create;
		extent: 800 @ 600.
	view := CefWebView new.
	view
		parentView: shell;
		arrangement: 1;
		create;
		show.
	shell show.
	view setUrl: 'http://www.google.com'! !
!CefWebView class categoriesForMethods!
example!public! !
!

