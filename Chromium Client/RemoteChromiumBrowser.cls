"Filed out from Dolphin Smalltalk"!

RemoteChromiumObject subclass: #RemoteChromiumBrowser
	instanceVariableNames: 'id client host canGoBack canGoForward focusedElement hoveredElement queuedUrl selectedText selectedRange actionQueue'
	classVariableNames: 'ContextMenuCommandMap CursorMap'
	poolDictionaries: 'CefConstants Win32Constants'
	classInstanceVariableNames: ''!

RemoteChromiumBrowser guid: (GUID fromString: '{e8fbf47d-19b1-4854-a0ce-7594dd43cfde}')!

RemoteChromiumBrowser comment: ''!

!RemoteChromiumBrowser categoriesForClass!Kernel-Objects! !

!RemoteChromiumBrowser methodsFor!

acknowledge: acknowledge
	id ifNil: [^self].
	client send: (Dictionary new
				at: 'class' put: 'Browser';
				at: 'method' put: 'Acknowledge';
				at: 'id' put: GUID newUnique idlString;
				at: 'instanceId' put: id;
				at: 'acknowledge' put: acknowledge idlString;
				yourself)!

back
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Back;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

canGoBack
	^canGoBack ifNil: [false]!

canGoBack: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #CanGoBack;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)
		onSuccess: callback!

canGoForward
	^canGoForward ifNil: [false]!

canGoForward: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #CanGoForward;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)
		onSuccess: callback!

client
	^client!

client: anObject
	client := anObject!

copy
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Copy;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

cut
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Cut;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

defocus
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Defocus;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

delete
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Delete;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

evalJavaScript: aString callback: aBlock
	self
		evalJavaScript: aString
		scriptUrl: 'Dolphin'
		startLine: 1
		callback: aBlock!

evalJavaScript: code scriptUrl: scriptUrl startLine: startLine callback: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #EvalJavaScript;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				at: #code put: code;
				at: #scriptUrl put: scriptUrl;
				at: #startLine put: startLine;
				yourself)
		onSuccess: callback!

focus
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Focus;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

focusedElement
	^focusedElement!

focusedElement: aHtmlElement
	focusedElement := aHtmlElement!

forward
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Forward;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

hasTextSelected
	^selectedText notNil and: [selectedText notEmpty]!

host
	^host!

host: aRenderedWebpage 
	host := aRenderedWebpage!

hoveredElement
	^hoveredElement!

id
	^id!

id: anInteger
	id := anInteger!

isFocusedElementEditable
	focusedElement ifNil: [^false].
	^focusedElement isEditable!

loadUrl
	id ifNil: [^self].
	client send: (Dictionary new
				at: 'type' put: 'Browser_RemoteChromiumBrowser';
				at: 'id' put: GUID newUnique idlString;
				at: 'browserId' put: id;
				yourself)!

loadUrl: url
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #LoadUrl;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				at: #url put: url;
				yourself)!

notifyResize
	id ifNil: [^self].
	client send: (Dictionary new
				at: 'type' put: 'Browser_RemoteChromiumBrowser';
				at: 'id' put: GUID newUnique idlString;
				at: 'browserId' put: id;
				yourself)!

notifyResize: rectangle
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #NotifyResize;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				at: #rectangle put: rectangle;
				yourself)!

onAcceleratedPaint: aDictionary
	| elementType sharedTextureHandle format |
	elementType := aDictionary at: #elementType.
	sharedTextureHandle := aDictionary at: #sharedTextureHandle.
	format := aDictionary at: #format.
	host
		onAcceleratedPaint: elementType
		sharedTextureHandle: sharedTextureHandle
		format: format.
	self acknowledge: (GUID fromIdlString: (aDictionary at: 'id'))!

onAddressChange: aDictionary
	| url |
	url := aDictionary at: #url.
	host onAddressChange: url!

onBeforeContextMenu: aBeforeContextMenuEvent
	Transcript
		display: aBeforeContextMenuEvent textSelection;
		cr.
	self acknowledge: aBeforeContextMenuEvent id!

onConsoleMessage: aDictionary
	| level message source line |
	level := aDictionary at: #level.
	message := aDictionary at: #message.
	source := aDictionary at: #source.
	line := aDictionary at: #line.
	host
		onConsoleMessage: level
		message: message
		source: source
		line: line!

onCursorChange: aDictionary
	| cursorSelector |
	cursorSelector := CursorMap at: (aDictionary at: 'cursorType') ifAbsent: [^self].
	self host cursor: cursorSelector!

onKeyboardEvent
	id ifNil: [^self].
	client send: (Dictionary new
				at: 'type' put: 'Browser_RemoteChromiumBrowser';
				at: 'id' put: GUID newUnique idlString;
				at: 'browserId' put: id;
				yourself)!

onKeyboardEvent: event
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #OnKeyboardEvent;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				at: #event put: event;
				yourself)!

onLoadingProgressChange: aDictionary
	| progress |
	progress := aDictionary at: #progress.
	host onLoadingProgressChange: progress!

onMouseClick: event button: button mouseUp: mouseUp clickCount: clickCount
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #OnMouseClick;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				at: #event put: event;
				at: #button put: button;
				at: #mouseUp put: mouseUp;
				at: #clickCount put: clickCount;
				yourself)!

onMouseMove: event mouseLeave: mouseLeave
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #OnMouseMove;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				at: #event put: event;
				at: #mouseLeave put: mouseLeave;
				yourself)!

onMouseWheel: event deltaX: deltaX deltaY: deltaY
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #OnMouseWheel;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				at: #event put: event;
				at: #deltaX put: deltaX;
				at: #deltaY put: deltaY;
				yourself)!

onNavigate: aDictionary
	| destination formData hashChange navigationType userInitiated |
	destination := aDictionary at: #destination.
	formData := aDictionary at: #formData.
	hashChange := aDictionary at: #hashChange.
	navigationType := aDictionary at: #navigationType.
	userInitiated := aDictionary at: #userInitiated.
	host
		onNavigate: destination
		formData: formData
		hashChange: hashChange
		navigationType: navigationType
		userInitiated: userInitiated!

onTextSelectionChanged: aDictionary
	selectedText := aDictionary at: 'selectedText'.
	selectedRange := (aDictionary at: 'selectedRangeFrom') to: (aDictionary at: 'selectedRangeTo')!

onTitleChange: aDictionary
	| title |
	title := aDictionary at: #title.
	host onTitleChange: title!

parseUrl: aString callback: aBlock
	self
		evalJavaScript: ('(() => { 
	const url = URL.parse(`<1d>`);
	return {
	    href: url.href,
	    origin: url.origin,
	    protocol: url.protocol,
	    username: url.username,
	    password: url.password,
	    host: url.host,
	    hostname: url.hostname,
	    port: url.port,
	    pathname: url.pathname,
	    search: url.search,
	    searchParams: Object.fromEntries(url.searchParams),
	    hash: url.hash
	};
})()'
				expandMacrosWith: aString)
		callback: [:response | aBlock value: response]!

paste
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Paste;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

redo
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Redo;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

refreshNavigationState
	canGoBack := nil.
	canGoForward := nil.
	self
		canGoBack: [:response | canGoBack := response at: 'canGoBack'];
		canGoForward: [:response | canGoForward := response at: 'canGoForward']!

reload
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Reload;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

selectAll
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #SelectAll;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

selectedText
	^selectedText!

show
	self wasHidden: false!

undo
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #Undo;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				yourself)!

wasHidden
	id ifNil: [^self].
	client send: (Dictionary new
				at: 'type' put: 'Browser_RemoteChromiumBrowser';
				at: 'id' put: GUID newUnique idlString;
				at: 'browserId' put: id;
				yourself)!

wasHidden: hidden
	id ifNil: [^self].
	client send: (Dictionary new
				at: #class put: #Browser;
				at: #method put: #WasHidden;
				at: #id put: GUID newUnique idlString;
				at: #instanceId put: id;
				at: #hidden put: hidden;
				yourself)! !

!RemoteChromiumBrowser categoriesForMethods!
acknowledge:!public! !
back!**compiled accessors**!public!rpc! !
canGoBack!**compiled accessors**!public! !
canGoBack:!**compiled accessors**!public!rpc! !
canGoForward!**compiled accessors**!public! !
canGoForward:!**compiled accessors**!public!rpc! !
client!public! !
client:!public! !
copy!**compiled accessors**!public!rpc! !
cut!**compiled accessors**!public!rpc! !
defocus!**compiled accessors**!public!rpc! !
delete!**compiled accessors**!public!rpc! !
evalJavaScript:callback:!public! !
evalJavaScript:scriptUrl:startLine:callback:!**compiled accessors**!public!rpc! !
focus!**compiled accessors**!public!rpc! !
focusedElement!public! !
focusedElement:!public! !
forward!**compiled accessors**!public!rpc! !
hasTextSelected!public! !
host!public! !
host:!public! !
hoveredElement!public! !
id!public! !
id:!public! !
isFocusedElementEditable!public! !
loadUrl!**compiled accessors**!public!rpc! !
loadUrl:!**compiled accessors**!public!rpc! !
notifyResize!**compiled accessors**!public!rpc! !
notifyResize:!**compiled accessors**!public!rpc! !
onAcceleratedPaint:!**compiled accessors**!callback!public! !
onAddressChange:!**compiled accessors**!callback!public! !
onBeforeContextMenu:!public! !
onConsoleMessage:!**compiled accessors**!callback!public! !
onCursorChange:!public! !
onKeyboardEvent!**compiled accessors**!public!rpc! !
onKeyboardEvent:!**compiled accessors**!public!rpc! !
onLoadingProgressChange:!**compiled accessors**!callback!public! !
onMouseClick:button:mouseUp:clickCount:!**compiled accessors**!public!rpc! !
onMouseMove:mouseLeave:!**compiled accessors**!public!rpc! !
onMouseWheel:deltaX:deltaY:!**compiled accessors**!public!rpc! !
onNavigate:!**compiled accessors**!callback!public! !
onTextSelectionChanged:!public! !
onTitleChange:!**compiled accessors**!callback!public! !
parseUrl:callback:!public! !
paste!**compiled accessors**!public!rpc! !
redo!**compiled accessors**!public!rpc! !
refreshNavigationState!public!rpc! !
reload!**compiled accessors**!public!rpc! !
selectAll!**compiled accessors**!public!rpc! !
selectedText!public! !
show!public! !
undo!**compiled accessors**!public!rpc! !
wasHidden!**compiled accessors**!public!rpc! !
wasHidden:!**compiled accessors**!public!rpc! !
!

!RemoteChromiumBrowser class methodsFor!

defineRpcCallbacks
	self
		defineRpcCallback: #onAcceleratedPaint
			arguments: #(#elementType #sharedTextureHandle #format)
			withAcknowledgement: true;
		defineRpcCallback: #onAddressChange arguments: #(#url);
		defineRpcCallback: #onTitleChange arguments: #(#title);
		defineRpcCallback: #onConsoleMessage arguments: #(#level #message #source #line);
		defineRpcCallback: #onLoadingProgressChange arguments: #(#progress);
		defineRpcCallback: #onFocusedNodeChanged arguments: #(#tagName #inputType #isEditable);
		defineRpcCallback: #onMouseOver arguments: #(#tagName #inputType #href #rectangle);
		defineRpcCallback: #onNavigate
			arguments: #(#destination #formData #hashChange #navigationType #userInitiated)!

defineRpcMethods
	"Private - self defineRpcMethods"

	self
		defineRpcMethod: #back;
		defineRpcMethod: #forward;
		defineRpcMethod: #reload;
		defineRpcMethod: #focus;
		defineRpcMethod: #defocus;
		defineRpcMethod: #canGoBack withCallback: true;
		defineRpcMethod: #canGoForward withCallback: true;
		defineRpcMethod: #wasHidden arguments: #(#hidden);
		defineRpcMethod: #loadUrl arguments: #(#url);
		defineRpcMethod: #notifyResize arguments: #(#rectangle);
		defineRpcMethod: #evalJavaScript
			arguments: #(#code #scriptUrl #startLine)
			withCallback: true;
		defineRpcMethod: #cut;
		defineRpcMethod: #copy;
		defineRpcMethod: #paste;
		defineRpcMethod: #delete;
		defineRpcMethod: #undo;
		defineRpcMethod: #redo;
		defineRpcMethod: #selectAll;
		defineRpcMethod: #onMouseClick arguments: #(#event #button #mouseUp #clickCount);
		defineRpcMethod: #onMouseMove arguments: #(#event #mouseLeave);
		defineRpcMethod: #onMouseWheel arguments: #(#event #deltaX #deltaY);
		defineRpcMethod: #onKeyboardEvent arguments: #(#event)!

initialize
	"self initialize"

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
		at: CT_DND_LINK put: #hand.
	ContextMenuCommandMap := LookupTable new.
	ContextMenuCommandMap
		at: MENU_ID_BACK put: #back;
		at: MENU_ID_FORWARD put: #forward;
		at: MENU_ID_RELOAD put: #reload;
		at: MENU_ID_COPY put: #copy;
		at: MENU_ID_CUSTOM_FIRST put: #translateSelectedText;
		at: MENU_ID_CUSTOM_FIRST + 1 put: #speakSelectedText!

rpcClassName
	^#Browser! !

!RemoteChromiumBrowser class categoriesForMethods!
defineRpcCallbacks!private! !
defineRpcMethods!private! !
initialize!public! !
rpcClassName!private! !
!

