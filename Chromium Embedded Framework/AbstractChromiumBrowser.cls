"Filed out from Dolphin Smalltalk"!

Object subclass: #AbstractChromiumBrowser
	instanceVariableNames: 'host cefClient cefBrowser rectangle contentProviders shouldClose readyToClose'
	classVariableNames: ''
	poolDictionaries: 'CefConstants'
	classInstanceVariableNames: ''!
AbstractChromiumBrowser guid: (GUID fromString: '{dd65169f-edf7-4936-b937-280354337246}')!
AbstractChromiumBrowser comment: ''!
!AbstractChromiumBrowser categoriesForClass!Kernel-Objects! !
!AbstractChromiumBrowser methodsFor!

closeBrowser
	cefBrowser getHost closeBrowser_forceClose: 0!

createBrowser: aUrl rectangle: aRectangle window: aHandle
	self subclassResponsibility!

defocus
	cefBrowser ifNil: [^self].
	cefBrowser getHost setFocus_focus: 0!

doClose: lifeSpanHandler browser: browser
	shouldClose := true.
	[host pushCloseEvent] postToInputQueue.
	^0!

focus
	cefBrowser ifNil: [^self].
	cefBrowser getHost setFocus_focus: 1!

forceCloseBrowser
	cefBrowser getHost closeBrowser_forceClose: 1!

getResourceRequestHandler: requestHandler browser: browser frame: frame request: request isNavigation: isNavigation isDownload: isDownload requestInitiator: requestInitiator disableDefaultHandling: disableDefaultHandling
	| url contentProvider |
	url := request getUrl.
	contentProvider := contentProviders at: url str ifAbsent: [nil].
	url free.
	^contentProvider
		ifNil: [nil]
		ifNotNil: 
			[contentProvider
				getResourceRequestHandler: requestHandler
				browser: browser
				frame: frame
				request: request
				isNavigation: isNavigation
				isDownload: isDownload
				requestInitiator: requestInitiator
				disableDefaultHandling: disableDefaultHandling]!

getSource: aMonadicValuable
	| mainFrame cefSourceStringVisitor |
	mainFrame := cefBrowser getMainFrame.
	cefSourceStringVisitor := CefStringVisitor new.
	cefSourceStringVisitor visitCallback: [:aCefStringVisitor :aCefString | aMonadicValuable value: aCefString str].
	mainFrame getSource_visitor: cefSourceStringVisitor!

host: anObject 
	host := anObject!

initialize
	super initialize.
	contentProviders := Dictionary new.
	rectangle := Rectangle new.
	shouldClose := false.
	readyToClose := false!

library
	^CefLibrary default!

loadHtml: aString forUrl: aUrl
	self
		provideHtml: aString forUrl: aUrl;
		loadUrl: aUrl!

loadUrl: aString
	cefBrowser
		ifNotNil: 
			[| mainFrame |
			mainFrame := cefBrowser getMainFrame.
			mainFrame loadUrl_url: aString asCefString]!

onAddressChange: displayHandler browser: browser frame: frame url: url
	host onAddressChange: url.
	^0!

onAfterCreated: aCefLifeSpanHandler browser: aCefBrowser
	cefBrowser := aCefBrowser.
	^0!

onBeforeClose: lifeSpanHandler browser: browser
	readyToClose := true.
	^0!

onBeforePopup: lifeSpanHandler browser: browser frame: frame targetUrl: targetUrl targetFrameName: targetFrameName targetDisposition: targetDisposition userGesture: userGesture popupFeatures: popupFeatures windowInfo: windowInfo client: client settings: browserSettings extraInfo: extraInfo noJavascriptAccess: noJavascriptAccess
	Transcript display: ('popup url: <1d>' expandMacrosWith: targetUrl str); cr.
	^1!

onFrameAttached: frameHandler browser: browser frame: frame reattached: reattched
	^0!

onFrameCreated: frameHandler browser: browser frame: frame
	^0!

onFrameDetached: frameHandler browser: browser frame: frame
	^0!

onMainFrameChanged: frameHandler browser: browser oldFrame: oldFrame newFrame: newFrame
	host hasFocus ifTrue: [browser getHost setFocus_focus: 1].
	^0!

onResize: aRectangle
	rectangle := aRectangle.
	cefBrowser getHost wasResized!

onTextSelectionChanged: renderHandler browser: browser selectedText: selectedText selectedRange: selectedRange
	^0!

onViewClosed
	| delay delayCount |
	delay := Delay forMilliseconds: 500.
	delayCount := 0.
	[readyToClose or: [delayCount > 10]] whileFalse: 
			[delay wait.
			delayCount := delayCount + 1].
	readyToClose
		ifFalse: 
			[self forceCloseBrowser.
			delay wait].
	cefBrowser base releaseReference: cefBrowser.
	cefBrowser := nil!

provideHtml: aString forUrl: aUrl
	| contentProvider |
	contentProvider := CefContentProvider new.
	contentProvider
		url: aUrl;
		html: aString;
		webView: self.
	contentProviders at: aUrl put: contentProvider!

removeContentProvider: aContentProvider
	contentProviders removeKey: aContentProvider url!

shouldViewClose
	shouldClose ifFalse: [self closeBrowser].
	^shouldClose!

startDragging: aCefRenderHandler browser: aCefBrowser dragData: aCefDragData allowedOps: anInteger x: anInteger2 y: anInteger3 
	^0! !
!AbstractChromiumBrowser categoriesForMethods!
closeBrowser!public! !
createBrowser:rectangle:window:!public! !
defocus!public! !
doClose:browser:!cef event handler!life span handler!private! !
focus!public! !
forceCloseBrowser!public! !
getResourceRequestHandler:browser:frame:request:isNavigation:isDownload:requestInitiator:disableDefaultHandling:!cef event handler!private!request handler! !
getSource:!public! !
host:!public! !
initialize!public! !
library!public! !
loadHtml:forUrl:!public! !
loadUrl:!public! !
onAddressChange:browser:frame:url:!cef event handler!private! !
onAfterCreated:browser:!cef event handler!life span handler!private! !
onBeforeClose:browser:!cef event handler!life span handler!private! !
onBeforePopup:browser:frame:targetUrl:targetFrameName:targetDisposition:userGesture:popupFeatures:windowInfo:client:settings:extraInfo:noJavascriptAccess:!cef event handler!life span handler!private! !
onFrameAttached:browser:frame:reattached:!cef event handler!frame handler!private! !
onFrameCreated:browser:frame:!cef event handler!frame handler!private! !
onFrameDetached:browser:frame:!cef event handler!frame handler!private! !
onMainFrameChanged:browser:oldFrame:newFrame:!cef event handler!frame handler!private! !
onResize:!public! !
onTextSelectionChanged:browser:selectedText:selectedRange:!cef event handler!private! !
onViewClosed!public! !
provideHtml:forUrl:!public! !
removeContentProvider:!public! !
shouldViewClose!public! !
startDragging:browser:dragData:allowedOps:x:y:!cef event handler!private! !
!

!AbstractChromiumBrowser class methodsFor!

new
	^super new initialize! !
!AbstractChromiumBrowser class categoriesForMethods!
new!public! !
!

