﻿"Filed out from Dolphin Smalltalk"!

AbstractCefWebView subclass: #WindowedCefWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Win32Constants'
	classInstanceVariableNames: ''!
WindowedCefWebView guid: (GUID fromString: '{54e0e09a-6e67-45c0-8796-5cb3a00ddeb4}')!
WindowedCefWebView comment: ''!
!WindowedCefWebView categoriesForClass!Kernel-Objects! !
!WindowedCefWebView methodsFor!

cefWindowExStyle
	^0!

cefWindowStyle
	^##(WS_CHILD | WS_CLIPCHILDREN | WS_CLIPSIBLINGS | WS_TABSTOP | WS_VISIBLE)!

createBrowser: aRectangle inWindow: aHandle
	| windowInfo browserSettings |
	windowInfo := CefWindowInfo new
				style: self cefWindowStyle;
				ex_style: self cefWindowExStyle;
				parent_window: aHandle;
				bounds: aRectangle asCefRect.
	browserSettings := CefBrowserSettings new.
	cefClient := CefClient new.
	cefClient
		enableLifeSpanHandlerAndDelegateTo: self;
		enableRequestHandlerAndDelegateTo: self.
	CefLibrary default
		browserHostCreateBrowser_windowInfo: windowInfo
		client: cefClient
		url: self defaultUrl asCefString
		settings: browserSettings
		extraInfo: nil
		requestContext: nil!

defaultUrl
	^'https://github.com/dolphinsmalltalk/Dolphin'! !
!WindowedCefWebView categoriesForMethods!
cefWindowExStyle!private! !
cefWindowStyle!private! !
createBrowser:inWindow:!public! !
defaultUrl!public! !
!
