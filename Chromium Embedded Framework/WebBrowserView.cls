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

back
	chromiumBrowser back!

cursor: aSymbol!

forward
	chromiumBrowser forward!

loadUrl: aString
	chromiumBrowser loadUrl: aString!

onAddressChange: aCefUrlParts
	!

onAudioStream!

onAudioStreamPacket: aFLOATArray
	Error notYetImplemented!

onAudioStreamStarted: channels sampleRate: sampleRate
	Error notYetImplemented!

onAudioStreamStopped
	Error notYetImplemented!

onBeforeBrowse: aCefRequest isRedirect: aBoolean !

onTitleChange: aString
	!

onViewClosed
	chromiumBrowser onViewClosed!

onViewCreated
	| rectangle windowHandle |
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
back!public! !
cursor:!public! !
forward!public! !
loadUrl:!public! !
onAddressChange:!public! !
onAudioStream!public! !
onAudioStreamPacket:!public! !
onAudioStreamStarted:sampleRate:!public! !
onAudioStreamStopped!public! !
onBeforeBrowse:isRedirect:!public! !
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
	^view
		parentView: shell;
		arrangement: 1;
		create;
		show;
		loadUrl: 'https://github.com/dolphinsmalltalk/Dolphin';
		yourself! !

!WebBrowserView class categoriesForMethods!
example!public! !
!

