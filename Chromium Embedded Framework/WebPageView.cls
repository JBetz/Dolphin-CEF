"Filed out from Dolphin Smalltalk"!

ContainerView subclass: #WebPageView
	instanceVariableNames: 'chromiumBrowser'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebPageView guid: (GUID fromString: '{8dd4867b-32a5-40c8-86f3-8e9e7be0b4ea}')!
WebPageView comment: ''!
!WebPageView categoriesForClass!MVP-Resources-Misc! !
!WebPageView methodsFor!

onAddressChange: aUrl
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
!WebPageView categoriesForMethods!
onAddressChange:!public! !
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

