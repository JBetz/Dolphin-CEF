"Filed out from Dolphin Smalltalk"!

ContainerView subclass: #WebBrowserView
	instanceVariableNames: 'chromiumBrowser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebBrowserView guid: (GUID fromString: '{8dd4867b-32a5-40c8-86f3-8e9e7be0b4ea}')!
WebBrowserView comment: ''!
!WebBrowserView categoriesForClass!MVP-Resources-Misc! !
!WebBrowserView methodsFor!

onAddressChange: aUrl
	!

onTitleChange: aString
	!

onViewClosed
	chromiumBrowser onViewClosed!

onViewCreated
	| rectangle windowHandle |
	rectangle := self parentView clientRectangle.
	windowHandle := self handle value.
	chromiumBrowser := WindowedChromiumBrowser new.
	chromiumBrowser host: self.
	chromiumBrowser
		createBrowser: 'https://github.com/dolphinsmalltalk/Dolphin'
		rectangle: rectangle
		window: windowHandle!

pushCloseEvent
	self close! !
!WebBrowserView categoriesForMethods!
onAddressChange:!public! !
onTitleChange:!public! !
onViewClosed!public! !
onViewCreated!public! !
pushCloseEvent!public! !
!

!WebBrowserView class methodsFor!

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
	view := WebBrowserView new.
	view
		parentView: shell;
		arrangement: 1;
		create;
		show.
	shell show! !
!WebBrowserView class categoriesForMethods!
example!public! !
!

