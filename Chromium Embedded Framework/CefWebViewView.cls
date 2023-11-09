"Filed out from Dolphin Smalltalk"!

ContainerView subclass: #CefWebViewView
	instanceVariableNames: 'webView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefWebViewView guid: (GUID fromString: '{8dd4867b-32a5-40c8-86f3-8e9e7be0b4ea}')!
CefWebViewView comment: ''!
!CefWebViewView categoriesForClass!MVP-Resources-Misc! !
!CefWebViewView methodsFor!

onViewClosed
	webView onViewClosed!

onViewCreated
	webView := WindowedCefWebView new.
	webView host: self.
	webView createBrowser: self parentView clientRectangle inWindow: self handle value!

pushCloseEvent
	self close! !
!CefWebViewView categoriesForMethods!
onViewClosed!public! !
onViewCreated!public! !
pushCloseEvent!public! !
!

!CefWebViewView class methodsFor!

example
	" CefWebViewView example"

	| processRunner shell view |
	processRunner := CefBrowserProcessRunner new.
	processRunner ensureRunning.
	shell := ShellView new.
	shell
		layoutManager: ProportionalLayout new;
		create;
		extent: 1200 @ 1000.
	view := CefWebViewView new.
	view
		parentView: shell;
		arrangement: 1;
		create;
		show.
	shell show! !
!CefWebViewView class categoriesForMethods!
example!public! !
!

