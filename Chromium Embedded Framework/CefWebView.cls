"Filed out from Dolphin Smalltalk"!

ContainerView subclass: #CefWebView
	instanceVariableNames: 'windowInfo browserSettings client url cefHandle cefBrowser childBrowserView parentBrowserView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefWebView guid: (GUID fromString: '{8dd4867b-32a5-40c8-86f3-8e9e7be0b4ea}')!
CefWebView comment: ''!
!CefWebView categoriesForClass!MVP-Resources-Misc! !
!CefWebView methodsFor!

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

defaultUrl
	^'http://www.google.com'!

doClose: this cefBrowser: browser
	^0!

initialize
	super initialize.
	childBrowserView := OrderedCollection new!

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

onViewCreated
	| resultCode |
	windowInfo := CefWindowInfo new
				window_name: 'CEF browser' asCefString;
				style: self cefWindowStyle;
				ex_style: self cefWindowExStyle;
				parent_window: self handle value;
				bounds: self parentView clientRectangle asCefRect.
	browserSettings := CefBrowserSettings new.
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

setUrl: aString
	url := aString.
	cefBrowser ifNil: [^nil].
	cefBrowser getMainFrame loadUrl_url: aString asCefString!

url
	^url ifNil: [url := self defaultUrl]!

url: aCEFString 
	url := aCEFString! !
!CefWebView categoriesForMethods!
cefBrowser!public! !
cefWindowExStyle!public! !
cefWindowStyle!public! !
client!accessing!public! !
defaultUrl!public! !
doClose:cefBrowser:!public! !
initialize!public! !
onAddressChange:browser:frame:url:!public! !
onAfterCreated:browser:!public! !
onBeforeClose:browser:!public! !
onViewCreated!public! !
setUrl:!public! !
url!public! !
url:!public! !
!

!CefWebView class methodsFor!

example
	" CefWebView example"

	| processRunner shell view |
	CefBrowserProcessRunner stop.
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
	shell show! !
!CefWebView class categoriesForMethods!
example!public! !
!

