"Filed out from Dolphin Smalltalk"!

Object subclass: #ChromiumBrowser
	instanceVariableNames: 'host cefClient cefBrowser rectangle contentProviders shouldClose readyToClose queuedUrl selectedText isFocusedNodeEditable scrollOffset texture selectedRange'
	classVariableNames: 'CursorMap'
	poolDictionaries: 'CefConstants Win32Constants'
	classInstanceVariableNames: ''!
ChromiumBrowser guid: (GUID fromString: '{dd65169f-edf7-4936-b937-280354337246}')!
ChromiumBrowser comment: ''!
!ChromiumBrowser categoriesForClass!Kernel-Objects! !
!ChromiumBrowser methodsFor!

back
	cefBrowser goBack!

canGoBack
	^cefBrowser ifNotNil: [cefBrowser canGoBack] ifNil: [false]!

canGoForward
	^cefBrowser ifNotNil: [cefBrowser canGoForward] ifNil: [false]!

cefWindowExStyle
	^0!

cefWindowStyle
	^##(WS_CHILD | WS_CLIPCHILDREN | WS_CLIPSIBLINGS | WS_TABSTOP | WS_VISIBLE)!

closeBrowser
	cefBrowser ifNotNil: [cefBrowser getHost closeBrowser_forceClose: 0]!

copy
	cefBrowser getFocusedFrame callCopy!

createOffscreenBrowser: aUrl rectangle: aRectangle window: aHandle
	| processRunner windowInfo browserSettings resultCode |
	rectangle := aRectangle.
	processRunner := CefBrowserProcessRunner new.
	processRunner ensureRunning.
	self initializeOffscreenClient.
	windowInfo := CefWindowInfo new.
	windowInfo
		bounds: rectangle asCefRect;
		windowless_rendering_enabled: true;
		parent_window: aHandle.
	browserSettings := CefBrowserSettings new.
	browserSettings
		windowless_frame_rate: 60;
		background_color: Color white argbCode.
	resultCode := self library
				browserHostCreateBrowser_windowInfo: windowInfo
				client: cefClient
				url: aUrl string asCefString
				settings: browserSettings
				extraInfo: nil
				requestContext: nil.
	resultCode = 0 ifTrue: [Error signal: 'Error creating CEF browser']!

createWindowedBrowser: aUrl rectangle: aRectangle window: aHandle
	| windowInfo browserSettings |
	windowInfo := CefWindowInfo new
				style: self cefWindowStyle;
				ex_style: self cefWindowExStyle;
				parent_window: aHandle;
				bounds: aRectangle asCefRect.
	browserSettings := CefBrowserSettings new.
	self initializeWindowedClient.
	CefLibrary default
		browserHostCreateBrowser_windowInfo: windowInfo
		client: cefClient
		url: aUrl asCefString
		settings: browserSettings
		extraInfo: nil
		requestContext: nil!

cut
	cefBrowser getFocusedFrame callCut!

defocus
	cefBrowser ifNil: [^self].
	cefBrowser getHost setFocus_focus: 0!

delete
	cefBrowser getFocusedFrame callDel!

doClose: lifeSpanHandler browser: browser
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

getRootScreenRect: aCefRenderHandler browser: aCefBrowser rect: aCefRect
	host
		ifNotNil: 
			[| rootRectangle |
			rootRectangle := host rootRectangle.
			aCefRect
				x: rootRectangle left;
				y: rootRectangle top;
				width: rootRectangle width;
				height: rootRectangle height]!

getScreenInfo: aCefRenderHandler browser: aCefBrowser screenInfo: aCefScreenInfo 
	^0!

getScreenPoint: renderHandle browser: browser viewX: viewX viewY: viewY screenX: screenX screenY: screenY
	^host
		ifNil: [0]
		ifNotNil: 
			[| windowOrigin browserOrigin |
			windowOrigin := host windowPosition.
			windowOrigin ifNil: [^0].
			browserOrigin := windowOrigin + rectangle origin.
			screenX value: viewX + browserOrigin x.
			screenY value: viewY + browserOrigin y.
			1]!

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

getViewRect: aCefRenderHandler browser: aCefBrowser rect: aCefRect
	aCefRect
		x: rectangle left;
		y: rectangle top;
		width: rectangle width;
		height: rectangle height!

hasTextSelected
	^selectedText notNil!

host: anObject 
	host := anObject!

initialize
	super initialize.
	contentProviders := Dictionary new.
	rectangle := Rectangle new.
	readyToClose := false.
	isFocusedNodeEditable := false!

initializeOffscreenClient
	cefClient := CefClient new.
	cefClient
		enableLifeSpanHandlerAndDelegateTo: self;
		enableRequestHandlerAndDelegateTo: self;
		enableDisplayHandlerAndDelegateTo: self;
		enableRenderHandlerAndDelegateTo: self;
		enableFrameHandlerAndDelegateTo: self;
		enableLoadHandlerAndDelegateTo: self;
		enableKeyboardHandlerAndDelegateTo: self;
		enableContextMenuHandlerAndDelegateTo: self;
		processMessageDelegate: self!

initializeWindowedClient
	cefClient := CefClient new.
	cefClient
		enableLifeSpanHandlerAndDelegateTo: self;
		enableRequestHandlerAndDelegateTo: self;
		enableKeyboardHandlerAndDelegateTo: self;
		enableContextMenuHandlerAndDelegateTo: self;
		processMessageDelegate: self!

isFocusedNodeEditable
	^isFocusedNodeEditable!

isReadyToClose
	^readyToClose!

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

onAcceleratedPaint: renderHandler browser: browser type: type dirtyRectsCount: dirtyRectsCount sharedHandle: sharedHandle
	!

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

onBeforeContextMenu: aCefContextMenuHandler browser: aCefBrowser frame: aCefFrame params: aCefContextMenuParams model: aCefMenuModel
	| params  model |
	params := aCefContextMenuParams.
	model := aCefMenuModel.
	Transcript
		display: #onBeforeContextMenu; cr;
		tab; display: #frame_is_valid -> aCefFrame isValid; cr;
		tab; display: #context_menu_params_get_xcoord -> params getXcoord; cr;
		tab; display: #context_menu_params_get_ycoord -> params getYcoord; cr;
		tab; display: #context_menu_params_is_editable -> params isEditable; cr;
		tab; display: #context_menu_params_get_selection_text -> params getSelectionText; cr;
		tab; display: #context_menu_params_get_misspelled_word -> params getMisspelledWord; cr;
		tab; display: #menu_model_get_count -> model getCount; cr;
		tab; display: #menu_model_get_label_at -> (model getLabelAt_index: 0) ; cr;
		tab; display: #menu_model_clear -> model callClear; cr;
		cr!

onBeforePopup: lifeSpanHandler browser: browser frame: frame targetUrl: targetUrl targetFrameName: targetFrameName targetDisposition: targetDisposition userGesture: userGesture popupFeatures: popupFeatures windowInfo: windowInfo client: client settings: browserSettings extraInfo: extraInfo noJavascriptAccess: noJavascriptAccess
	^1!

onContextMenuCommand: aCefContextMenuHandler browser: aCefBrowser frame: aCefFrame params: aCefContextMenuParams commandId: anInteger eventFlags: anInteger2 
	^0!

onContextMenuDismissed: aCefContextMenuHandler browser: aCefBrowser frame: aCefFrame 
!

onCursorChange: displayHandler browser: browser cursor: cursor type: type customCursorInfo: customCursorInfo
	| cursorSelector |
	host ifNil: [^0].
	cursorSelector := CursorMap at: type ifAbsent: [nil].
	^cursorSelector
		ifNotNil: 
			[host cursor: cursorSelector.
			1]
		ifNil: [0]!

onFrameAttached: frameHandler browser: browser frame: frame reattached: reattched
	^0!

onFrameCreated: frameHandler browser: browser frame: frame
	^0!

onFrameDetached: frameHandler browser: browser frame: frame
	^0!

onKeyEvent: aCefKeyboardHandler browser: aCefBrowser event: aCefKeyEvent osEvent: anExternalAddress 
	^false!

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

onPaint: renderHandler browser: browser type: type dirtyRectsCount: dirtyRectsCount dirtyRects: dirtyRects buffer: buffer width: width height: height
	| pitch |
	(host isNil or: [texture isNil or: [texture getExtent ~= (width @ height)]]) ifTrue: [^0].
	pitch := width * 4.
	texture updatePixels: buffer pitch: pitch.
	host pushRenderEvent!

onPopupShow: aCefRenderHandler browser: aCefBrowser show: anInteger 
	Transcript display: #onPopupShow; cr.
	^0!

onPopupSize: aCefRenderHandler browser: aCefBrowser rect: anInteger 
	Transcript display: #onPopupSize; cr.
	^0!

onPreKeyEvent: aCefKeyboardHandler browser: aCefBrowser event: aCefKeyEvent osEvent: anExternalAddress isKeyboardShortcut: aBoolean
	^false!

onProcessMessageReceived: aCefClient browser: aCefBrowser frame: aCefFrame sourceProcess: anInteger message: aCefProcessMessage
	| messageName |
	messageName := aCefProcessMessage getName str.
	messageName = 'ClientRenderer.FocusedNodeChanged'
		ifTrue: 
			[| arguments |
			arguments := aCefProcessMessage getArgumentList.
			isFocusedNodeEditable := arguments getBool_index: 0.
			isFocusedNodeEditable
				ifFalse: 
					[selectedText := nil.
					selectedRange := nil]]!

onResize: aRectangle
	cefBrowser
		ifNotNil: 
			[rectangle := aRectangle.
			cefBrowser getHost wasResized]!

onScrollOffsetChanged: renderHandler browser: browser x: x y: y
	self scrollOffset
		x: x;
		y: y.
	^0!

onTextSelectionChanged: aCefRenderHandler browser: aCefBrowser selectedText: aCefString selectedRange: aCefRange
	selectedRange := Interval from: aCefRange from to: aCefRange to.
	aCefString isNull ifTrue: [selectedText := nil] ifFalse: [selectedText := aCefString str].
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
			forkAt: Processor userBackgroundPriority!

onVirtualKeyboardRequested: renderHandler browser: browser inputMode: inputMode
	^0!

paste
	cefBrowser getFocusedFrame callPaste!

provideHtml: aString forUrl: aUrl
	| contentProvider |
	contentProvider := CefContentProvider new.
	contentProvider
		url: aUrl string;
		html: aString;
		chromiumBrowser: self.
	contentProviders at: aUrl put: contentProvider!

redo
	cefBrowser getFocusedFrame callRedo!

reload
	cefBrowser callReload!

removeContentProvider: aContentProvider
	contentProviders removeKey: aContentProvider url!

runContextMenu: aCefContextMenuHandler browser: aCefBrowser frame: aCefFrame params: aCefContextMenuParams model: aCefMenuModel callback: aCefRunContextMenuCallback 
	^false!

scrollOffset
	^host ifNotNil: [host scrollOffset] ifNil: [0 @ 0]!

selectAll
	cefBrowser getFocusedFrame selectAll!

sendKeyEvent: aKeyEvent
	cefBrowser ifNotNil: [cefBrowser getHost sendKeyEvent_event: aKeyEvent]!

sendMouseClickEvent: aMouseEvent mouseButtonType: anInteger mouseUp: aBoolean clickCount: anotherInteger
	cefBrowser
		ifNotNil: 
			[cefBrowser getHost
				sendMouseClickEvent_event: aMouseEvent
				mouseButtonType: anInteger
				mouseUp: aBoolean asInteger
				clickCount: anotherInteger]!

sendMouseMoveEvent: aMouseEvent mouseLeave: aBoolean
	cefBrowser
		ifNotNil: [cefBrowser getHost sendMouseMoveEvent_event: aMouseEvent mouseLeave: aBoolean asInteger]!

sendMouseWheelEvent: aMouseWheelEvent delta: aPoint
	cefBrowser
		ifNotNil: 
			[cefBrowser getHost
				sendMouseWheelEvent_event: aMouseWheelEvent
				deltaX: aPoint x asInteger
				deltaY: aPoint y asInteger]!

startDragging: aCefRenderHandler browser: aCefBrowser dragData: aCefDragData allowedOps: anInteger x: anInteger2 y: anInteger3 
	^0!

texture: aSDLTexture
	texture := aSDLTexture!

undo
	cefBrowser getFocusedFrame callUndo!

wasHidden: aBoolean
	cefBrowser getHost wasHidden_hidden: aBoolean asInteger! !
!ChromiumBrowser categoriesForMethods!
back!public! !
canGoBack!public! !
canGoForward!public! !
cefWindowExStyle!private! !
cefWindowStyle!private! !
closeBrowser!public! !
copy!public! !
createOffscreenBrowser:rectangle:window:!public! !
createWindowedBrowser:rectangle:window:!public! !
cut!public! !
defocus!public! !
delete!public! !
doClose:browser:!cef event handler!life span handler!private! !
focus!public! !
forceCloseBrowser!public! !
forward!public! !
getResourceRequestHandler:browser:frame:request:isNavigation:isDownload:requestInitiator:disableDefaultHandling:!cef event handler!private!request handler! !
getRootScreenRect:browser:rect:!cef event handler!private!render handler! !
getScreenInfo:browser:screenInfo:!cef event handler!private!render handler! !
getScreenPoint:browser:viewX:viewY:screenX:screenY:!cef event handler!private!render handler! !
getSource:!public! !
getTitle!public! !
getUrl!public! !
getViewRect:browser:rect:!cef event handler!private!render handler! !
hasTextSelected!cef event handler!private! !
host:!public! !
initialize!public! !
initializeOffscreenClient!private! !
initializeWindowedClient!private! !
isFocusedNodeEditable!public! !
isReadyToClose!cef event handler!life span handler!public! !
library!public! !
loadHtml:forUrl:!public! !
loadUrl:!public! !
onAcceleratedPaint:browser:type:dirtyRectsCount:sharedHandle:!cef event handler!private!render handler! !
onAddressChange:browser:frame:url:!cef event handler!private! !
onAfterCreated:browser:!cef event handler!life span handler!private! !
onBeforeClose:browser:!cef event handler!life span handler!private! !
onBeforeContextMenu:browser:frame:params:model:!cef event handler!context menu handler!private! !
onBeforePopup:browser:frame:targetUrl:targetFrameName:targetDisposition:userGesture:popupFeatures:windowInfo:client:settings:extraInfo:noJavascriptAccess:!cef event handler!life span handler!private! !
onContextMenuCommand:browser:frame:params:commandId:eventFlags:!cef event handler!context menu handler!private! !
onContextMenuDismissed:browser:frame:!cef event handler!context menu handler!private! !
onCursorChange:browser:cursor:type:customCursorInfo:!cef event handler!display handler!private! !
onFrameAttached:browser:frame:reattached:!cef event handler!frame handler!private! !
onFrameCreated:browser:frame:!cef event handler!frame handler!private! !
onFrameDetached:browser:frame:!cef event handler!frame handler!private! !
onKeyEvent:browser:event:osEvent:!cef event handler!keyboard handler!private! !
onLoadEnd:browser:frame:httpStatusCode:!cef event handler!load handler!private! !
onLoadError:browser:frame:errorCode:errorText:failedUrl:!cef event handler!load handler!private! !
onLoadingStateChange:browser:isLoading:canGoBack:canGoForward:!cef event handler!load handler!private! !
onLoadStart:browser:frame:transitionType:!cef event handler!load handler!private! !
onMainFrameChanged:browser:oldFrame:newFrame:!cef event handler!frame handler!private! !
onPaint:browser:type:dirtyRectsCount:dirtyRects:buffer:width:height:!cef event handler!private!render handler! !
onPopupShow:browser:show:!private! !
onPopupSize:browser:rect:!private! !
onPreKeyEvent:browser:event:osEvent:isKeyboardShortcut:!cef event handler!keyboard handler!private! !
onProcessMessageReceived:browser:frame:sourceProcess:message:!private! !
onResize:!public! !
onScrollOffsetChanged:browser:x:y:!cef event handler!private!render handler! !
onTextSelectionChanged:browser:selectedText:selectedRange:!cef event handler!private! !
onTitleChange:browser:title:!cef event handler!private! !
onViewClosed!public! !
onViewDestroyed!public! !
onVirtualKeyboardRequested:browser:inputMode:!cef event handler!private!render handler! !
paste!public! !
provideHtml:forUrl:!public! !
redo!public! !
reload!public! !
removeContentProvider:!public! !
runContextMenu:browser:frame:params:model:callback:!cef event handler!context menu handler!private! !
scrollOffset!public! !
selectAll!public! !
sendKeyEvent:!public! !
sendMouseClickEvent:mouseButtonType:mouseUp:clickCount:!public! !
sendMouseMoveEvent:mouseLeave:!public! !
sendMouseWheelEvent:delta:!public! !
startDragging:browser:dragData:allowedOps:x:y:!cef event handler!private! !
texture:!public! !
undo!public! !
wasHidden:!public! !
!

!ChromiumBrowser class methodsFor!

initialize
	"ChromiumBrowser initialize"

	super initialize.
	CursorMap := LookupTable new.
	CursorMap
		at: CT_POINTER put: #arrow;
		at: CT_CROSS put: #crosshair;
		at: CT_HAND put: #hand;
		at: CT_IBEAM put: #iBeam;
		at: CT_WAIT put: #wait;
		at: CT_HELP put: #wait;
		at: CT_EASTRESIZE put: #sizeWE;
		at: CT_NORTHRESIZE put: #sizeNS;
		at: CT_NORTHEASTRESIZE put: #sizeNESW;
		at: CT_NORTHWESTRESIZE put: #sizeNWSE;
		at: CT_SOUTHRESIZE put: #sizeNS;
		at: CT_SOUTHEASTRESIZE put: #sizeWE;
		at: CT_SOUTHWESTRESIZE put: #sizeWE;
		at: CT_WESTRESIZE put: #sizeWE;
		at: CT_NORTHSOUTHRESIZE put: #sizeNS;
		at: CT_EASTWESTRESIZE put: #sizeWE;
		at: CT_NORTHEASTSOUTHWESTRESIZE put: #sizeWE;
		at: CT_NORTHWESTSOUTHEASTRESIZE put: #sizeWE;
		at: CT_COLUMNRESIZE put: #sizeWE;
		at: CT_ROWRESIZE put: #sizeNS;
		at: CT_MIDDLEPANNING put: #sizeAll;
		at: CT_EASTPANNING put: #sizeWE;
		at: CT_NORTHEASTPANNING put: #sizeNESW;
		at: CT_NORTHWESTPANNING put: #sizeNWSE;
		at: CT_MOVE put: #sizeAll;
		at: CT_VERTICALTEXT put: #arrow;
		at: CT_CELL put: #arrow;
		at: CT_CONTEXTMENU put: #arrow;
		at: CT_ALIAS put: #hand;
		at: CT_PROGRESS put: #wait;
		at: CT_NODROP put: #no;
		at: CT_NONE put: #no;
		at: CT_NOTALLOWED put: #no;
		at: CT_ZOOMIN put: #arrow;
		at: CT_ZOOMOUT put: #arrow;
		at: CT_GRAB put: #hand;
		at: CT_GRABBING put: #hand;
		at: CT_MIDDLE_PANNING_VERTICAL put: #sizeAll;
		at: CT_MIDDLE_PANNING_HORIZONTAL put: #sizeAll;
		at: CT_CUSTOM put: #arrow;
		at: CT_DND_NONE put: #no;
		at: CT_DND_MOVE put: #arrow;
		at: CT_DND_LINK put: #hand!

new
	^super new initialize! !
!ChromiumBrowser class categoriesForMethods!
initialize!public! !
new!public! !
!

