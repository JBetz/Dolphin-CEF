"Filed out from Dolphin Smalltalk"!

Object subclass: #AbstractChromiumBrowser
	instanceVariableNames: 'host cefClient cefBrowser rectangle contentProviders shouldClose readyToClose queuedUrl'
	classVariableNames: ''
	poolDictionaries: 'CefConstants'
	classInstanceVariableNames: ''!
AbstractChromiumBrowser guid: (GUID fromString: '{dd65169f-edf7-4936-b937-280354337246}')!
AbstractChromiumBrowser comment: ''!
!AbstractChromiumBrowser categoriesForClass!Kernel-Objects! !
!AbstractChromiumBrowser methodsFor!

back
	cefBrowser goBack!

canGoBack
	^cefBrowser ifNotNil: [cefBrowser canGoBack] ifNil: [false]!

canGoForward
	^cefBrowser ifNotNil: [cefBrowser canGoForward] ifNil: [false]!

closeBrowser
	cefBrowser ifNotNil: [cefBrowser getHost closeBrowser_forceClose: 0]!

copy
	cefBrowser getFocusedFrame callCopy!

createBrowser: aUrl rectangle: aRectangle window: aHandle
	self subclassResponsibility!

cut
	cefBrowser getFocusedFrame callCut!

defocus
	cefBrowser ifNil: [^self].
	cefBrowser getHost setFocus_focus: 0!

delete
	cefBrowser getFocusedFrame callDel!

doClose: lifeSpanHandler browser: browser
	shouldClose := true.
	host ifNotNil: [[host pushCloseEvent] postToInputQueue].
	^0!

focus
	cefBrowser ifNil: [^self].
	cefBrowser getHost setFocus_focus: 1!

forceCloseBrowser
	cefBrowser ifNotNil: [cefBrowser getHost closeBrowser_forceClose: 1]!

forward
	cefBrowser goForward!

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

getTitle
	| mainFrame cefUrl url |
	cefBrowser ifNil: [^nil].
	mainFrame := cefBrowser getMainFrame.
	mainFrame ifNil: [^nil].
	cefUrl := mainFrame getUrl.
	url := cefUrl str.
	cefUrl free.
	^url!

getUrl
	| mainFrame cefUrl url |
	cefBrowser ifNil: [^nil].
	mainFrame := cefBrowser getMainFrame.
	mainFrame ifNil: [^nil].
	cefUrl := mainFrame getUrl.
	url := cefUrl str.
	cefUrl free.
	^url!

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
		ifNil: [queuedUrl := aString]
		ifNotNil: 
			[| mainFrame |
			mainFrame := cefBrowser getMainFrame.
			mainFrame loadUrl_url: aString asCefString]!

onAddressChange: displayHandler browser: browser frame: frame url: url
	| urlParts |
	urlParts := CefUrlParts new.
	CefLibrary default parseUrl_url: url parts: urlParts.
	host ifNotNil: [frame isMain ifTrue: [host onAddressChange: urlParts]]!

onAfterCreated: aCefLifeSpanHandler browser: aCefBrowser
	cefBrowser := aCefBrowser.
	queuedUrl
		ifNotNil: 
			[:aString |
			self loadUrl: aString.
			queuedUrl := nil].
	^0!

onBeforeClose: lifeSpanHandler browser: browser
	readyToClose := true.
	^0!

onBeforePopup: lifeSpanHandler browser: browser frame: frame targetUrl: targetUrl targetFrameName: targetFrameName targetDisposition: targetDisposition userGesture: userGesture popupFeatures: popupFeatures windowInfo: windowInfo client: client settings: browserSettings extraInfo: extraInfo noJavascriptAccess: noJavascriptAccess
	^1!

onFrameAttached: frameHandler browser: browser frame: frame reattached: reattched
	^0!

onFrameCreated: frameHandler browser: browser frame: frame
	^0!

onFrameDetached: frameHandler browser: browser frame: frame
	^0!

onLoadEnd: aCefLoadHandler browser: aCefBrowser frame: aCefFrame httpStatusCode: anInteger 
!

onLoadError: aCefLoadHandler browser: aCefBrowser frame: aCefFrame errorCode: anInteger  errorText: aString failedUrl: aUrl
!

onLoadingStateChange: aCefLoadHandler browser: aCefBrowser isLoading: aBoolean canGoBack: aBoolean2 canGoForward: aBoolean3 
	!

onLoadStart: aCefLoadHandler browser: aCefBrowser frame: aCefFrame transitionType: anInteger!

onMainFrameChanged: frameHandler browser: browser oldFrame: oldFrame newFrame: newFrame
	host ifNotNil: [host hasFocus ifTrue: [browser getHost setFocus_focus: 1]].
	^0!

onPopupShow: aCefRenderHandler browser: aCefBrowser show: anInteger 
	^0!

onPopupSize: aCefRenderHandler browser: aCefBrowser rect: anInteger 
	^0!

onResize: aRectangle
	cefBrowser
		ifNotNil: 
			[rectangle := aRectangle.
			cefBrowser getHost wasResized]!

onTextSelectionChanged: renderHandler browser: browser selectedText: selectedText selectedRange: selectedRange
	^0!

onTitleChange: displayHandler browser: browser title: title
	host ifNotNil: [title isNull ifFalse: [host onTitleChange: title str]].
	^0!

onViewClosed
	self closeBrowser
	!

onViewDestroyed
	
	[| delay delayCount |
	delay := Delay forMilliseconds: 200.
	delayCount := 0.
	[readyToClose or: [delayCount > 10]] whileFalse: 
			[delay wait.
			delayCount := delayCount + 1].
	readyToClose ifFalse: [self forceCloseBrowser].
	cefBrowser
		ifNotNil: 
			[cefBrowser base releaseReference: cefBrowser.
			cefBrowser := nil]]
			fork!

paste
	cefBrowser getFocusedFrame paste!

provideHtml: aString forUrl: aUrl
	| contentProvider |
	contentProvider := CefContentProvider new.
	contentProvider
		url: aUrl;
		html: aString;
		webView: self.
	contentProviders at: aUrl put: contentProvider!

redo
	cefBrowser getFocusedFrame callRedo!

reload
	cefBrowser callReload!

removeContentProvider: aContentProvider
	contentProviders removeKey: aContentProvider url!

selectAll
	cefBrowser getFocusedFrame selectAll!

shouldClose
	shouldClose ifFalse: [self closeBrowser].
	^shouldClose!

startDragging: aCefRenderHandler browser: aCefBrowser dragData: aCefDragData allowedOps: anInteger x: anInteger2 y: anInteger3 
	^0!

undo
	cefBrowser getFocusedFrame callUndo!

wasHidden: aBoolean
	cefBrowser getHost wasHidden_hidden: aBoolean asInteger! !
!AbstractChromiumBrowser categoriesForMethods!
back!public! !
canGoBack!public! !
canGoForward!public! !
closeBrowser!public! !
copy!public! !
createBrowser:rectangle:window:!public! !
cut!public! !
defocus!public! !
delete!public! !
doClose:browser:!cef event handler!life span handler!private! !
focus!public! !
forceCloseBrowser!public! !
forward!public! !
getResourceRequestHandler:browser:frame:request:isNavigation:isDownload:requestInitiator:disableDefaultHandling:!cef event handler!private!request handler! !
getSource:!public! !
getTitle!public! !
getUrl!public! !
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
onLoadEnd:browser:frame:httpStatusCode:!cef event handler!load handler!private! !
onLoadError:browser:frame:errorCode:errorText:failedUrl:!cef event handler!load handler!private! !
onLoadingStateChange:browser:isLoading:canGoBack:canGoForward:!cef event handler!load handler!private! !
onLoadStart:browser:frame:transitionType:!cef event handler!load handler!private! !
onMainFrameChanged:browser:oldFrame:newFrame:!cef event handler!frame handler!private! !
onPopupShow:browser:show:!private! !
onPopupSize:browser:rect:!private! !
onResize:!public! !
onTextSelectionChanged:browser:selectedText:selectedRange:!cef event handler!private! !
onTitleChange:browser:title:!cef event handler!private! !
onViewClosed!public! !
onViewDestroyed!public! !
paste!public! !
provideHtml:forUrl:!public! !
redo!public! !
reload!public! !
removeContentProvider:!public! !
selectAll!public! !
shouldClose!public! !
startDragging:browser:dragData:allowedOps:x:y:!cef event handler!private! !
undo!public! !
wasHidden:!public! !
!

!AbstractChromiumBrowser class methodsFor!

new
	^super new initialize! !
!AbstractChromiumBrowser class categoriesForMethods!
new!public! !
!

