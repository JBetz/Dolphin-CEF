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

loadUrl: aString
	chromiumBrowser loadUrl: aString!

onAddressChange: aCefUrlParts
	!

onTitleChange: aString
	!

onViewClosed
	chromiumBrowser onViewClosed!

onViewCreated
	| rectangle windowHandle |
	CefBrowserProcessRunner new ensureRunning.
	rectangle := self parentView clientRectangle.
	windowHandle := self handle value.
	chromiumBrowser := ChromiumBrowser new.
	chromiumBrowser host: self.
	chromiumBrowser
		createWindowedBrowser: 'about:blank'
		rectangle: rectangle
		window: windowHandle!

onViewDestroyed
	chromiumBrowser onViewDestroyed!

pushCloseEvent
! !
!WebBrowserView categoriesForMethods!
loadUrl:!public! !
onAddressChange:!public! !
onTitleChange:!public! !
onViewClosed!public! !
onViewCreated!public! !
onViewDestroyed!public! !
pushCloseEvent!public! !
!

!WebBrowserView class methodsFor!

example
	" WebBrowserView example"

	| shell view |
	shell := ShellView new.
	shell
		layoutManager: ProportionalLayout new;
		create;
		extent: 1200 @ 1000;
		show.
	view := WebBrowserView new.
	view
		parentView: shell;
		arrangement: 1;
		create;
		show.
	view loadUrl: 'https://github.com/dolphinsmalltalk/Dolphin'! !
!WebBrowserView class categoriesForMethods!
example!public! !
!

