"Filed out from Dolphin Smalltalk"!

AbstractChromiumBrowser subclass: #OffScreenChromiumBrowser
	instanceVariableNames: 'texture scrollOffset'
	classVariableNames: 'CursorMap'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OffScreenChromiumBrowser guid: (GUID fromString: '{6a734cbc-37e5-44cb-a4d0-6587cf2e54e5}')!
OffScreenChromiumBrowser comment: ''!
!OffScreenChromiumBrowser categoriesForClass!Kernel-Objects! !
!OffScreenChromiumBrowser methodsFor!

createBrowser: aRectangle inWindow: aHandle
	| processRunner windowInfo browserSettings |
	rectangle := aRectangle.
	processRunner := CefBrowserProcessRunner new.
	processRunner ensureRunning.
	cefClient := CefClient new.
	cefClient
		enableLifeSpanHandlerAndDelegateTo: self;
		enableRequestHandlerAndDelegateTo: self;
		enableDisplayHandlerAndDelegateTo: self;
		enableRenderHandlerAndDelegateTo: self;
		enableFrameHandlerAndDelegateTo: self.
	windowInfo := CefWindowInfo new.
	windowInfo
		bounds: rectangle asCefRect;
		windowless_rendering_enabled: true;
		parent_window: aHandle.
	browserSettings := CefBrowserSettings new.
	browserSettings
		windowless_frame_rate: 60;
		background_color: Color white argbCode.
	self library
		browserHostCreateBrowser_windowInfo: windowInfo
		client: cefClient
		url: self defaultUrl asCefString
		settings: browserSettings
		extraInfo: nil
		requestContext: nil!

getRootScreenRect: aCefRenderHandler browser: aCefBrowser rect: aCefRect
	| rootRectangle |
	rootRectangle := host rootRectangle.
	aCefRect
		x: rootRectangle left;
		y: rootRectangle top;
		width: rootRectangle width;
		height: rootRectangle height!

getScreenInfo: aCefRenderHandler browser: aCefBrowser screenInfo: aCefScreenInfo 
	^0!

getScreenPoint: renderHandle browser: browser viewX: viewX viewY: viewY screenX: screenX screenY: screenY
	| windowOrigin browserOrigin |
	windowOrigin := host windowPosition.
	windowOrigin ifNil: [^0].
	browserOrigin := windowOrigin + rectangle origin.
	screenX value: viewX + browserOrigin x.
	screenY value: viewY + browserOrigin y.
	^1!

getViewRect: aCefRenderHandler browser: aCefBrowser rect: aCefRect
	aCefRect
		x: rectangle left;
		y: rectangle top;
		width: rectangle width;
		height: rectangle height!

onAcceleratedPaint: renderHandler browser: browser type: type dirtyRectsCount: dirtyRectsCount sharedHandle: sharedHandle
	Transcript
		display: #onAcceleratedPaint;
		cr!

onCursorChange: displayHandler browser: browser cursor: cursor type: type customCursorInfo: customCursorInfo
	| cursorSelector |
	cursorSelector := CursorMap at: type ifAbsent: [nil].
	^cursorSelector
		ifNotNil: 
			[host cursor: cursorSelector.
			1]
		ifNil: [0]!

onPaint: renderHandler browser: browser type: type dirtyRectsCount: dirtyRectsCount dirtyRects: dirtyRects buffer: buffer width: width height: height
	| pitch |
	(texture isNil or: [texture getExtent ~= (width @ height)]) ifTrue: [^0].
	pitch := width * 4.
	texture updatePixels: buffer pitch: pitch.
	host pushRenderEvent!

onScrollOffsetChanged: renderHandler browser: browser x: x y: y
	self scrollOffset
		x: x;
		y: y.
	^0!

onVirtualKeyboardRequested: renderHandler browser: browser inputMode: inputMode
	^0!

scrollOffset
	^host scrollOffset!

sendKeyEvent: aKeyEvent
	cefBrowser getHost sendKeyEvent_event: aKeyEvent
	!

sendMouseClickEvent: aMouseEvent mouseButtonType: anInteger mouseUp: aBoolean clickCount: anotherInteger
	cefBrowser getHost
		sendMouseClickEvent_event: aMouseEvent
		mouseButtonType: anInteger
		mouseUp: aBoolean asInteger
		clickCount: anotherInteger!

sendMouseMoveEvent: aMouseEvent mouseLeave: aBoolean
	cefBrowser
		ifNotNil: [cefBrowser getHost sendMouseMoveEvent_event: aMouseEvent mouseLeave: aBoolean asInteger]!

sendMouseWheelEvent: aMouseWheelEvent delta: aPoint
	cefBrowser getHost
		sendMouseWheelEvent_event: aMouseWheelEvent
		deltaX: aPoint x asInteger
		deltaY: aPoint y asInteger!

texture: aSDLTexture
	texture := aSDLTexture! !
!OffScreenChromiumBrowser categoriesForMethods!
createBrowser:inWindow:!public! !
getRootScreenRect:browser:rect:!cef event handler!private!render handler! !
getScreenInfo:browser:screenInfo:!cef event handler!private!render handler! !
getScreenPoint:browser:viewX:viewY:screenX:screenY:!cef event handler!private!render handler! !
getViewRect:browser:rect:!cef event handler!private!render handler! !
onAcceleratedPaint:browser:type:dirtyRectsCount:sharedHandle:!cef event handler!private!render handler! !
onCursorChange:browser:cursor:type:customCursorInfo:!cef event handler!display handler!private! !
onPaint:browser:type:dirtyRectsCount:dirtyRects:buffer:width:height:!cef event handler!private!render handler! !
onScrollOffsetChanged:browser:x:y:!cef event handler!private!render handler! !
onVirtualKeyboardRequested:browser:inputMode:!cef event handler!private!render handler! !
scrollOffset!public! !
sendKeyEvent:!public! !
sendMouseClickEvent:mouseButtonType:mouseUp:clickCount:!public! !
sendMouseMoveEvent:mouseLeave:!public! !
sendMouseWheelEvent:delta:!public! !
texture:!public! !
!

!OffScreenChromiumBrowser class methodsFor!

initialize
	"OffScreenCefWebView initialize"

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
		at: CT_DND_LINK put: #hand! !
!OffScreenChromiumBrowser class categoriesForMethods!
initialize!public! !
!

