"Filed out from Dolphin Smalltalk"!

ContainerView subclass: #WebPageView
	instanceVariableNames: 'webView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebPageView guid: (GUID fromString: '{8dd4867b-32a5-40c8-86f3-8e9e7be0b4ea}')!
WebPageView comment: ''!
!WebPageView categoriesForClass!MVP-Resources-Misc! !
!WebPageView methodsFor!

onViewClosed
	webView onViewClosed!

onViewCreated
	webView := WindowedChromiumBrowser new.
	webView host: self.
	webView createBrowser: self parentView clientRectangle inWindow: self handle value!

pushCloseEvent
	self close! !
!WebPageView categoriesForMethods!
onViewClosed!public! !
onViewCreated!public! !
pushCloseEvent!public! !
!

!WebPageView class methodsFor!

example
	" WebPageView example"

	| processRunner shell view |
	processRunner := CefBrowserProcessRunner new.
	processRunner ensureRunning.
	shell := ShellView new.
	shell
		layoutManager: ProportionalLayout new;
		create;
		extent: 1200 @ 1000.
	view := WebPageView new.
	view
		parentView: shell;
		arrangement: 1;
		create;
		show.
	shell show! !
!WebPageView class categoriesForMethods!
example!public! !
!

