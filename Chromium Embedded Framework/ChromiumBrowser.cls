"Filed out from Dolphin Smalltalk"!

Object subclass: #ChromiumBrowser
	instanceVariableNames: 'host cefClient cefBrowser rectangle contentProviders readyToClose queuedUrl selectedText texture selectedRange focusedElement hoveredElement popupTexture searches search visitors audioStream'
	classVariableNames: 'CursorMap'
	poolDictionaries: 'CefConstants Win32Constants'
	classInstanceVariableNames: ''!

ChromiumBrowser guid: (GUID fromString: '{dd65169f-edf7-4936-b937-280354337246}')!

ChromiumBrowser comment: ''!

!ChromiumBrowser categoriesForClass!Kernel-Objects! !

!ChromiumBrowser methodsFor!

back
	cefBrowser goBack!

back: anInteger
	self go: anInteger negated!

canGoBack
	^cefBrowser ifNotNil: [cefBrowser canGoBack] ifNil: [false]!

canGoForward
	^cefBrowser ifNotNil: [cefBrowser canGoForward] ifNil: [false]!

cefWindowExStyle
	^0!

cefWindowStyle
	^##(WS_CHILD | WS_CLIPCHILDREN | WS_CLIPSIBLINGS | WS_TABSTOP | WS_VISIBLE)!

closeBrowser
	cefBrowser ifNil: [^self].
	cefBrowser getHost closeBrowser_forceClose: 0!

copy
	cefBrowser getFocusedFrame callCopy!

createOffscreenBrowser: aUrl rectangle: aRectangle window: aHandle
	| windowInfo browserSettings resultCode |
	CefBrowserProcessRunner ensureRunning.
	(aRectangle width <= 0 or: [aRectangle height <= 0])
		ifTrue: [Error signal: ('Invalid rectangle extent: <1d>' expandMacrosWith: aRectangle extent)].
	rectangle := aRectangle.
	self initializeOffscreenClient.
	windowInfo := CefWindowInfo new
				bounds: rectangle asCefRect;
				parent_window: aHandle;
				windowless_rendering_enabled: true.
	browserSettings := CefBrowserSettings new
				windowless_frame_rate: 60;
				background_color: Color white argbCode.
	resultCode := self library
				browserHostCreateBrowser_windowInfo: windowInfo
				client: cefClient
				url: aUrl spec asCefString
				settings: browserSettings
				extraInfo: nil
				requestContext: nil.
	resultCode = 0 ifTrue: [Error signal: 'Error creating CEF browser']!

createWindowedBrowser: aUrl rectangle: aRectangle window: aHandle
	| windowInfo browserSettings resultCode |
	CefBrowserProcessRunner ensureRunning.
	windowInfo := CefWindowInfo new
				style: self cefWindowStyle;
				ex_style: self cefWindowExStyle;
				parent_window: aHandle;
				bounds: aRectangle asCefRect.
	browserSettings := CefBrowserSettings new.
	self initializeWindowedClient.
	resultCode := self library
				browserHostCreateBrowser_windowInfo: windowInfo
				client: cefClient
				url: aUrl spec asCefString
				settings: browserSettings
				extraInfo: nil
				requestContext: nil.
	resultCode = 0 ifTrue: [Error signal: 'Error creating CEF browser']!

cut
	cefBrowser getFocusedFrame callCut!

defocus
	cefBrowser ifNil: [^self].
	cefBrowser getHost setFocus_focus: 0!

delete
	cefBrowser getFocusedFrame callDel!

doClose: lifeSpanHandler browser: browser
	^0!

executeJavaScript: aString
	| mainFrame |
	cefBrowser ifNil: [^self].
	mainFrame := cefBrowser getMainFrame.
	mainFrame
		executeJavaScript_code: aString asCefString
		scriptUrl: nil
		startLine: nil!

find: aString
	cefBrowser ifNil: [^self].
	cefBrowser getHost
		find_searchText: aString asCefString
		forward: true asInteger
		matchCase: false asInteger
		findNext: (search currentPosition isNil not) asInteger!

focus
	cefBrowser ifNil: [^self].
	cefBrowser getHost setFocus_focus: 1!

focusedElement
	^focusedElement!

forceCloseBrowser
	cefBrowser ifNil: [^self].
	cefBrowser getHost closeBrowser_forceClose: 1!

forward
	cefBrowser goForward!

forward: anInteger
	self go: anInteger!

getAudioParameters: audioHandler browser: browser params: params
	^1!

getAuthCredentials: requestHandler browser: browser originUrl: originUrl isProxy: isProxy host: host port: port realm: realm scheme: scheme callback: callback 
	^0!

getResourceRequestHandler: requestHandler browser: browser frame: frame request: request isNavigation: isNavigation isDownload: isDownload requestInitiator: requestInitiator disableDefaultHandling: disableDefaultHandling
	| url contentProvider |
	url := request getUrl.
	contentProvider := contentProviders at: url str ifAbsent: [nil].
	url free.
	contentProvider ifNil: [^0].
	^contentProvider
		getResourceRequestHandler: requestHandler
		browser: browser
		frame: frame
		request: request
		isNavigation: isNavigation
		isDownload: isDownload
		requestInitiator: requestInitiator
		disableDefaultHandling: disableDefaultHandling!

getRootScreenRect: renderHandler browser: browser rect: rect
	| rootRectangle |
	host ifNil: [^0].
	rootRectangle := host rootRectangle.
	rect
		x: rootRectangle left;
		y: rootRectangle top;
		width: rootRectangle width;
		height: rootRectangle height.
	^0!

getScreenInfo: renderHandler browser: browser screenInfo: screenInfo
	^0!

getScreenPoint: renderHandle browser: browser viewX: viewX viewY: viewY screenX: screenX screenY: screenY
	| windowOrigin browserOrigin |
	host ifNil: [^0].
	windowOrigin := host windowPosition.
	windowOrigin ifNil: [^0].
	browserOrigin := windowOrigin + host rendered rectangle origin.
	screenX value: browserOrigin x + viewX.
	screenY value: browserOrigin y + viewY.
	^1!

getSource: aBlock
	| mainFrame cefSourceStringVisitor |
	mainFrame := cefBrowser getMainFrame.
	cefSourceStringVisitor := CefStringVisitor new.
	visitors add: cefSourceStringVisitor.
	cefSourceStringVisitor visitCallback: 
			[:aCefStringVisitor :aCefString |
			| string |
			string := aCefString isNull ifTrue: [nil] ifFalse: [aCefString str].
			aBlock value: string.
			visitors remove: cefSourceStringVisitor].
	mainFrame getSource_visitor: cefSourceStringVisitor!

getUrl
	| mainFrame cefUrl url |
	cefBrowser ifNil: [^nil].
	mainFrame := cefBrowser getMainFrame.
	mainFrame ifNil: [^nil].
	cefUrl := mainFrame getUrl.
	url := cefUrl str.
	cefUrl free.
	^url!

getViewRect: renderHandler browser: browser rect: rect
	rect
		x: rectangle left;
		y: rectangle top;
		width: rectangle width;
		height: rectangle height.
	^1!

go: anInteger
	self executeJavaScript: ('window.history.go(<1D>)' expandMacrosWith: anInteger)!

hasTextSelected
	^selectedText notNil and: [selectedText notEmpty]!

hide
	self wasHidden: true!

host: anObject 
	host := anObject!

hoveredElement
	^hoveredElement!

initialize
	super initialize.
	contentProviders := Dictionary new.
	rectangle := Rectangle new.
	readyToClose := false.
	searches := LookupTable new.
	visitors := OrderedCollection new!

initializeOffscreenClient
	cefClient := CefClient new.
	cefClient
		enableAudioHandlerAndDelegateTo: self;
		enableContextMenuHandlerAndDelegateTo: self;
		enableDisplayHandlerAndDelegateTo: self;
		enableFindHandlerAndDelegateTo: self;
		enableFrameHandlerAndDelegateTo: self;
		enableLifeSpanHandlerAndDelegateTo: self;
		enableLoadHandlerAndDelegateTo: self;
		enableRenderHandlerAndDelegateTo: self;
		enableRequestHandlerAndDelegateTo: self;
		processMessageDelegate: self!

initializeWindowedClient
	cefClient := CefClient new.
	cefClient
		enableContextMenuHandlerAndDelegateTo: self;
		enableDisplayHandlerAndDelegateTo: self;
		enableLifeSpanHandlerAndDelegateTo: self;
		enableRequestHandlerAndDelegateTo: self;
		processMessageDelegate: self!

isFocusedElementEditable
	focusedElement ifNil: [^false].
	^focusedElement isEditable!

isReadyToClose
	^readyToClose!

library
	^CefLibrary default!

loadHtml: aString forUrl: aUrl
	self
		provideHtml: aString forUrl: aUrl;
		loadUrl: aUrl!

loadUrl: aUrl
	cefBrowser
		ifNil: [queuedUrl := aUrl]
		ifNotNil: 
			[| mainFrame |
			mainFrame := cefBrowser getMainFrame.
			mainFrame loadUrl_url: aUrl spec asCefString]!

onAcceleratedPaint: aCefRenderHandler browser: aCefBrowser type: anInteger dirtyRectsCount: anInteger2 dirtyRects: aCefRect info: aCefAcceleratedPaintInfo
	^0!

onAddressChange: displayHandler browser: browser frame: frame url: url
	| urlParts |
	urlParts := CefUrlParts new.
	CefLibrary default parseUrl_url: url parts: urlParts.
	host ifNotNil: [frame isMain ifTrue: [host onAddressChange: urlParts]].
	^0!

onAfterCreated: lifeSpanHandler browser: browser
	cefBrowser := browser.
	queuedUrl
		ifNotNil: 
			[:aUrl |
			self loadUrl: aUrl.
			queuedUrl := nil].
	^0!

onAudioStreamError: aCefAudioHandler browser: aCefBrowser message: aCefString 
	^0!

onAudioStreamPacket: audioHandler browser: browser data: data frames: frames pts: pts
	| channelCount leftChannelAddress rightChannelAddress leftChannelData rightChannelData interlacedData |
	channelCount := 2.
	leftChannelAddress := data value uintPtrAtOffset: 0.
	rightChannelAddress := data value uintPtrAtOffset: 4.
	leftChannelData := FLOATArray fromAddress: leftChannelAddress length: frames.
	rightChannelData := FLOATArray fromAddress: rightChannelAddress length: frames.
	interlacedData := FLOATArray new: frames * channelCount.
	1 to: frames
		do: 
			[:frame |
			| index |
			index := frame * channelCount - 1.
			interlacedData
				at: index put: (leftChannelData at: frame);
				at: index + 1 put: (rightChannelData at: frame)].
	audioStream putData: interlacedData.
	^0!

onAudioStreamStarted: audioHandler browser: browser params: params channels: channels
	| sdl sourceSpec |
	sdl := SDL3Library default.
	sourceSpec := SDL_AudioSpec new
				format: 16r8120;
				channels: channels;
				freq: params sample_rate.
	audioStream := sdl
				openAudioDeviceStream_devid: 16rFFFFFFFF
				spec: sourceSpec
				callback: nil
				userdata: nil.
	sdl resumeAudioDevice_devid: audioStream getAudioDevice.
	^0!

onAudioStreamStopped: audioHandler browser: browser
	audioStream := nil.
	^0!

onAutoResize: displayHandler browser: browser newSize: newSize 
	^0!

onBeforeBrowse: requestHandler browser: browser frame: frame request: request userGesture: userGesture isRedirect: isRedirect
	^0!

onBeforeClose: lifeSpanHandler browser: browser
	cefBrowser := nil.
	readyToClose := true.
	^0!

onBeforeContextMenu: contextMenuHandler browser: browser frame: frame params: params model: model
	params callRelease.
	model callRelease.
	^0!

onBeforePopup: lifeSpanHandler browser: browser frame: frame targetUrl: targetUrl targetFrameName: targetFrameName targetDisposition: targetDisposition userGesture: userGesture popupFeatures: popupFeatures windowInfo: windowInfo client: client settings: browserSettings extraInfo: extraInfo noJavascriptAccess: noJavascriptAccess
	^1!

onConsoleMessage: displayHandler browser: browser level: level message: message source: source line: line
	^0
!

onContextMenuCommand: contextMenuHandler browser: browser frame: frame params: params commandId: commandId eventFlags: eventFlags
	params callRelease.
	commandId = MENU_ID_BACK
		ifTrue: 
			[host back.
			^1].
	commandId = MENU_ID_FORWARD
		ifTrue: 
			[host forward.
			^1].
	^0!

onContextMenuDismissed: contextMenuHandler browser: browser frame: frame 
	^0!

onCursorChange: displayHandler browser: browser cursor: cursor type: type customCursorInfo: customCursorInfo
	| cursorSelector |
	host ifNil: [^0].
	cursorSelector := CursorMap at: type ifAbsent: [^0].
	host cursor: cursorSelector.
	^1!

onFaviconUrlChange: displayHandler browser: browser iconUrls: iconUrls
	^0!

onFindResult: aCefFindHandler browser: browser identifier: identifier count: count selectionRect: selectionRect activeMatchOrdinal: activeMatchOrdinal finalUpdate: finalUpdate
	"Called to report find results returned by cef_browser_host_t::find(). |identifer| is a unique incremental identifier for the currently active
	  search, |count| is the number of matches currently identified, |selectionRect| is the location of where the match was found (in window
	  coordinates), |activeMatchOrdinal| is the current position in the search results, and |finalUpdate| is true (1) if this is the last find notification."

	search ifNil: [^0].
	search
		resultCount: count;
		currentPosition: activeMatchOrdinal;
		selectionRectangle: selectionRect asRectangle.
	^0!

onFrameAttached: frameHandler browser: browser frame: frame reattached: reattched
	^0!

onFrameCreated: frameHandler browser: browser frame: frame
	^0!

onFrameDetached: frameHandler browser: browser frame: frame
	browser callRelease.
	^0!

onFullscreenModeChange: displayHandler browser: browser fullscreen: fullscreen
	^0!

onLoadEnd: loadHandler browser: browser frame: frame httpStatusCode: httpStatusCode
	host onLoadEnd: httpStatusCode.
	^0!

onLoadError: loadHandler browser: browser frame: frame errorCode: errorCode errorText: errorText failedUrl: failedUrl
	^0!

onLoadingProgressChange: displayHandler browser: browser progress: progress
	^0!

onLoadingStateChange: loadHandler browser: browser isLoading: isLoading canGoBack: canGoBack canGoForward: canGoForward
	^0!

onLoadStart: loadHandler browser: browser frame: frame transitionType: transitionType
	^0!

onMainFrameChanged: frameHandler browser: browser oldFrame: oldFrame newFrame: newFrame
	browser callRelease.
	host ifNotNil: [host hasFocus ifTrue: [browser getHost setFocus_focus: 1]].
	^0!

onMediaAccessChange: displayHandler browser: browser hasVideoAccess: hasVideoAccess hasAudioAccess: hasAudioAccess
	^0!

onOpenUrlFromTab: requestHandler browser: browser frame: frame targetUrl: targetUrl targetDisposition: targetDisposition userGesture: userGesture
	targetDisposition = CEF_WOD_NEW_BACKGROUND_TAB
		ifTrue: 
			[| url |
			url := Url fromString: targetUrl str.
			host openUrlOnNewPage: url.
			^1].
	^0!

onPaint: renderHandler browser: browser type: type dirtyRectsCount: dirtyRectsCount dirtyRects: dirtyRects buffer: buffer width: width height: height
	| targetTexture pitch |
	type = PET_VIEW ifTrue: [targetTexture := texture].
	type = PET_POPUP ifTrue: [targetTexture := popupTexture].
	(host isNil or: [targetTexture isNil or: [targetTexture getExtent ~= (width @ height)]])
		ifTrue: [^0].
	pitch := width * 4.
	targetTexture updatePixels: buffer pitch: pitch.
	targetTexture isPainted: true.
	host pushRenderEvent.
	^0!

onPopupShow: aCefRenderHandler browser: aCefBrowser show: anInteger
	anInteger asBoolean ifTrue: [host onShowPopup] ifFalse: [host onHidePopup].
	^0!

onPopupSize: renderHandler browser: browser rect: rect
	host onPopupSize: rect asRectangle.
	^0!

onProcessMessageReceived: aCefClient browser: aCefBrowser frame: aCefFrame sourceProcess: anInteger message: aCefProcessMessage
	| messageName arguments |
	messageName := aCefProcessMessage getName str.
	arguments := aCefProcessMessage getArgumentList.
	messageName = 'ClientRenderer.OnFocus' ifTrue: [self onFocus: arguments].
	messageName = 'ClientRenderer.OnFocusOut' ifTrue: [self onFocusOut: arguments].
	messageName = 'ClientRenderer.OnMouseOver' ifTrue: [self onMouseOver: arguments].
	messageName = 'ClientRenderer.OnNavigate' ifTrue: [self onNavigate: arguments]!

onResize: aRectangle
	rectangle := aRectangle.
	cefBrowser ifNil: [^self].
	cefBrowser getHost wasResized!

onScrollOffsetChanged: renderHandler browser: browser x: x y: y
	self scrollOffset
		x: x;
		y: y.
	^0!

onStatusMessage: displayHandler browser: browser value: value
	^0!

onTextSelectionChanged: renderHandler browser: browser selectedText: aCefString selectedRange: aCefRange
	selectedRange := Interval from: aCefRange from to: aCefRange to.
	selectedText := aCefString isNull ifTrue: [nil] ifFalse: [aCefString str].
	^0!

onTitleChange: displayHandler browser: browser title: title
	host ifNotNil: [title isNull ifFalse: [host onTitleChange: title str]].
	^0!

onTooltip: displayHandler browser: browser text: text
	^0!

onViewClosed
	self closeBrowser
	!

onViewDestroyed
	
	[| delay delayCount |
	delay := Delay forMilliseconds: 1000.
	delayCount := 0.
	[readyToClose or: [delayCount > 10]] whileFalse: 
			[delay wait.
			delayCount := delayCount + 1].
	readyToClose ifFalse: [self forceCloseBrowser]]
			forkAt: Processor userBackgroundPriority!

onVirtualKeyboardRequested: renderHandler browser: browser inputMode: inputMode
	^0!

paste
	cefBrowser getFocusedFrame callPaste!

popupTexture: aTexture
	popupTexture := aTexture!

provideHtml: aString forUrl: aUrl
	| contentProvider |
	contentProvider := CefContentProvider new.
	contentProvider
		url: aUrl spec;
		html: aString;
		chromiumBrowser: self.
	contentProviders at: aUrl put: contentProvider!

redo
	cefBrowser getFocusedFrame callRedo!

reload
	cefBrowser callReload!

removeContentProvider: aContentProvider
	contentProviders removeKey: aContentProvider url!

runContextMenu: contextMenuHandler browser: browser frame: frame params: params model: model callback: callback 
	params callRelease.
	model callRelease.
	^0!

scrollOffset
	^host ifNotNil: [host scrollOffset] ifNil: [0 @ 0]!

search: aTextSearch
	search := aTextSearch!

selectAll
	cefBrowser getFocusedFrame selectAll!

selectedText
	^selectedText!

sendKeyEvent: aKeyEvent
	cefBrowser ifNil: [^self].
	cefBrowser getHost sendKeyEvent_event: aKeyEvent!

sendMouseClickEvent: aMouseEvent mouseButtonType: anInteger mouseUp: aBoolean clickCount: anotherInteger
	cefBrowser ifNil: [^self].
	cefBrowser getHost
		sendMouseClickEvent_event: aMouseEvent
		mouseButtonType: anInteger
		mouseUp: aBoolean asInteger
		clickCount: anotherInteger!

sendMouseMoveEvent: aMouseEvent mouseLeave: aBoolean
	cefBrowser ifNil: [^self].
	cefBrowser getHost sendMouseMoveEvent_event: aMouseEvent mouseLeave: aBoolean asInteger!

sendMouseWheelEvent: aMouseWheelEvent delta: aPoint
	cefBrowser ifNil: [^self].
	cefBrowser getHost
		sendMouseWheelEvent_event: aMouseWheelEvent
		deltaX: aPoint x asInteger
		deltaY: aPoint y asInteger!

show
	self wasHidden: false!

startDragging: renderHandler browser: browser dragData: dragData allowedOps: allowedOps x: x y: y
	^0!

stopFinding
	cefBrowser ifNil: [^self].
	cefBrowser getHost stopFinding_clearSelection: false asInteger!

texture
	^texture!

texture: aSDLTexture
	texture := aSDLTexture!

traverseTo: aString
	self executeJavaScript: ('navigation.traverseTo(<1S>)' expandMacrosWith: aString)!

undo
	cefBrowser getFocusedFrame callUndo!

wasHidden: aBoolean
	cefBrowser ifNil: [^self].
	cefBrowser getHost wasHidden_hidden: aBoolean asInteger! !

!ChromiumBrowser categoriesForMethods!
back!public! !
back:!public! !
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
executeJavaScript:!public! !
find:!public! !
focus!public! !
focusedElement!public! !
forceCloseBrowser!public! !
forward!public! !
forward:!public! !
getAudioParameters:browser:params:!audio handler!cef event handler!private! !
getAuthCredentials:browser:originUrl:isProxy:host:port:realm:scheme:callback:!private! !
getResourceRequestHandler:browser:frame:request:isNavigation:isDownload:requestInitiator:disableDefaultHandling:!cef event handler!private!request handler! !
getRootScreenRect:browser:rect:!cef event handler!private!render handler! !
getScreenInfo:browser:screenInfo:!cef event handler!private!render handler! !
getScreenPoint:browser:viewX:viewY:screenX:screenY:!cef event handler!private!render handler! !
getSource:!public! !
getUrl!public! !
getViewRect:browser:rect:!cef event handler!private!render handler! !
go:!public! !
hasTextSelected!private! !
hide!public! !
host:!public! !
hoveredElement!public! !
initialize!public! !
initializeOffscreenClient!private! !
initializeWindowedClient!private! !
isFocusedElementEditable!public! !
isReadyToClose!public! !
library!public! !
loadHtml:forUrl:!public! !
loadUrl:!public! !
onAcceleratedPaint:browser:type:dirtyRectsCount:dirtyRects:info:!private! !
onAddressChange:browser:frame:url:!cef event handler!display handler!private! !
onAfterCreated:browser:!cef event handler!life span handler!private! !
onAudioStreamError:browser:message:!audio handler!private! !
onAudioStreamPacket:browser:data:frames:pts:!audio handler!cef event handler!private! !
onAudioStreamStarted:browser:params:channels:!audio handler!cef event handler!private! !
onAudioStreamStopped:browser:!audio handler!cef event handler!private! !
onAutoResize:browser:newSize:!cef event handler!display handler!private! !
onBeforeBrowse:browser:frame:request:userGesture:isRedirect:!cef event handler!private!request handler! !
onBeforeClose:browser:!cef event handler!life span handler!private! !
onBeforeContextMenu:browser:frame:params:model:!cef event handler!context menu handler!private! !
onBeforePopup:browser:frame:targetUrl:targetFrameName:targetDisposition:userGesture:popupFeatures:windowInfo:client:settings:extraInfo:noJavascriptAccess:!cef event handler!life span handler!popup!private! !
onConsoleMessage:browser:level:message:source:line:!cef event handler!display handler!private! !
onContextMenuCommand:browser:frame:params:commandId:eventFlags:!cef event handler!context menu handler!private! !
onContextMenuDismissed:browser:frame:!cef event handler!context menu handler!private! !
onCursorChange:browser:cursor:type:customCursorInfo:!cef event handler!display handler!private! !
onFaviconUrlChange:browser:iconUrls:!cef event handler!display handler!private! !
onFindResult:browser:identifier:count:selectionRect:activeMatchOrdinal:finalUpdate:!cef event handler!find handler!private! !
onFrameAttached:browser:frame:reattached:!cef event handler!frame handler!private! !
onFrameCreated:browser:frame:!cef event handler!frame handler!private! !
onFrameDetached:browser:frame:!cef event handler!frame handler!private! !
onFullscreenModeChange:browser:fullscreen:!cef event handler!display handler!private! !
onLoadEnd:browser:frame:httpStatusCode:!cef event handler!load handler!private! !
onLoadError:browser:frame:errorCode:errorText:failedUrl:!cef event handler!load handler!private! !
onLoadingProgressChange:browser:progress:!cef event handler!display handler!private! !
onLoadingStateChange:browser:isLoading:canGoBack:canGoForward:!cef event handler!load handler!private! !
onLoadStart:browser:frame:transitionType:!cef event handler!load handler!private! !
onMainFrameChanged:browser:oldFrame:newFrame:!cef event handler!frame handler!private! !
onMediaAccessChange:browser:hasVideoAccess:hasAudioAccess:!cef event handler!display handler!private! !
onOpenUrlFromTab:browser:frame:targetUrl:targetDisposition:userGesture:!cef event handler!private!request handler! !
onPaint:browser:type:dirtyRectsCount:dirtyRects:buffer:width:height:!cef event handler!private!render handler! !
onPopupShow:browser:show:!popup!private! !
onPopupSize:browser:rect:!popup!private! !
onProcessMessageReceived:browser:frame:sourceProcess:message:!private! !
onResize:!public! !
onScrollOffsetChanged:browser:x:y:!cef event handler!private!render handler! !
onStatusMessage:browser:value:!cef event handler!display handler!private! !
onTextSelectionChanged:browser:selectedText:selectedRange:!cef event handler!private! !
onTitleChange:browser:title:!cef event handler!display handler!private! !
onTooltip:browser:text:!cef event handler!display handler!private! !
onViewClosed!public! !
onViewDestroyed!public! !
onVirtualKeyboardRequested:browser:inputMode:!cef event handler!private!render handler! !
paste!public! !
popupTexture:!public! !
provideHtml:forUrl:!public! !
redo!public! !
reload!public! !
removeContentProvider:!public! !
runContextMenu:browser:frame:params:model:callback:!cef event handler!context menu handler!private! !
scrollOffset!public! !
search:!public! !
selectAll!public! !
selectedText!public! !
sendKeyEvent:!public! !
sendMouseClickEvent:mouseButtonType:mouseUp:clickCount:!public! !
sendMouseMoveEvent:mouseLeave:!public! !
sendMouseWheelEvent:delta:!public! !
show!public! !
startDragging:browser:dragData:allowedOps:x:y:!cef event handler!private! !
stopFinding!public! !
texture!public! !
texture:!public! !
traverseTo:!public! !
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

