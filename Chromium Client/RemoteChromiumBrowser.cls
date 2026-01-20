"Filed out from Dolphin Smalltalk"!

RemoteChromiumObject subclass: #RemoteChromiumBrowser
	instanceVariableNames: 'id client host canGoBack canGoForward isReadyToClose focusedElement hoveredElement queuedUrl selectedText selectedRange actionQueue'
	classVariableNames: 'ContextMenuCommandMap CursorMap'
	poolDictionaries: 'CefConstants Win32Constants'
	classInstanceVariableNames: ''!

RemoteChromiumBrowser guid: (GUID fromString: '{e8fbf47d-19b1-4854-a0ce-7594dd43cfde}')!

RemoteChromiumBrowser comment: ''!

!RemoteChromiumBrowser categoriesForClass!Kernel-Objects! !

!RemoteChromiumBrowser methodsFor!

back
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Back;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

canGoBack
	^canGoBack ifNil: [false]!

canGoBack: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #CanGoBack;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)
		onSuccess: callback!

canGoForward
	^canGoForward ifNil: [false]!

canGoForward: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #CanGoForward;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)
		onSuccess: callback!

client
	^client!

client: anObject
	client := anObject!

close
	self close: false!

close: forceClose
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Close;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #forceClose put: forceClose;
							yourself);
				yourself)!

copy
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Copy;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

cut
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Cut;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

defocus
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Defocus;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

delete
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Delete;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

evalJavaScript: aString callback: aBlock
	self
		evalJavaScript: aString
		scriptUrl: 'Dolphin'
		startLine: 1
		callback: [:response | aBlock value: (STONJSON fromString: response)]!

evalJavaScript: code scriptUrl: scriptUrl startLine: startLine callback: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #EvalJavaScript;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #code put: code;
							at: #scriptUrl put: scriptUrl;
							at: #startLine put: startLine;
							yourself);
				yourself)
		onSuccess: callback!

focus
	self focus: true!

focus: focus
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Focus;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #focus put: focus;
							yourself);
				yourself)!

focusedElement
	^focusedElement!

focusedElement: aHtmlElement
	focusedElement := aHtmlElement!

forceClose
	self close: true!

forward
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Forward;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

getViewRect: aDictionary
	^host getViewRect!

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
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #LoadUrl;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #url put: url;
							yourself);
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
	^nil!

onAddressChange: aDictionary
	| url |
	url := aDictionary at: #url.
	host onAddressChange: url.
	^nil!

onBeforeClose: aDictionary
	host onBeforeClose.
	^nil!

onBeforeContextMenu: aDictionary
	| origin nodeType nodeMedia nodeMediaStateFlags nodeEditFlags selectionText |
	origin := aDictionary at: #origin.
	nodeType := aDictionary at: #nodeType.
	nodeMedia := aDictionary at: #nodeMedia.
	nodeMediaStateFlags := aDictionary at: #nodeMediaStateFlags.
	nodeEditFlags := aDictionary at: #nodeEditFlags.
	selectionText := aDictionary at: #selectionText.
	^host
		onBeforeContextMenu: origin
		nodeType: nodeType
		nodeMedia: nodeMedia
		nodeMediaStateFlags: nodeMediaStateFlags
		nodeEditFlags: nodeEditFlags
		selectionText: selectionText!

onBeforePopup: aDictionary
	| targetUrl targetFrameName targetDisposition userGesture |
	targetUrl := aDictionary at: #targetUrl.
	targetFrameName := aDictionary at: #targetFrameName.
	targetDisposition := aDictionary at: #targetDisposition.
	userGesture := aDictionary at: #userGesture.
	^host
		onBeforePopup: targetUrl
		targetFrameName: targetFrameName
		targetDisposition: targetDisposition
		userGesture: userGesture!

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
		line: line.
	^nil!

onContextMenuCommand: aDictionary
	| commandId eventFlags |
	commandId := aDictionary at: #commandId.
	eventFlags := aDictionary at: #eventFlags.
	host onContextMenuCommand: commandId eventFlags: eventFlags.
	^nil!

onCursorChange: aDictionary
	| cursorHandle cursorType |
	cursorHandle := aDictionary at: #cursorHandle.
	cursorType := aDictionary at: #cursorType.
	host onCursorChange: cursorHandle cursorType: cursorType.
	^nil!

onFocusedNodeChanged: aDictionary
	| tagName inputType isEditable |
	tagName := aDictionary at: #tagName.
	inputType := aDictionary at: #inputType.
	isEditable := aDictionary at: #isEditable.
	host
		onFocusedNodeChanged: tagName
		inputType: inputType
		isEditable: isEditable.
	^nil!

onFocusOut: aDictionary
	| tagName inputType isEditable |
	tagName := aDictionary at: #tagName.
	inputType := aDictionary at: #inputType.
	isEditable := aDictionary at: #isEditable.
	host
		onFocusOut: tagName
		inputType: inputType
		isEditable: isEditable.
	^nil!

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
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #OnKeyboardEvent;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #event put: event;
							yourself);
				yourself)!

onLoadingProgressChange: aDictionary
	| progress |
	progress := aDictionary at: #progress.
	host onLoadingProgressChange: progress.
	^nil!

onMouseClick: event button: button mouseUp: mouseUp clickCount: clickCount
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #OnMouseClick;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #event put: event;
							at: #button put: button;
							at: #mouseUp put: mouseUp;
							at: #clickCount put: clickCount;
							yourself);
				yourself)!

onMouseMove: event mouseLeave: mouseLeave
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #OnMouseMove;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #event put: event;
							at: #mouseLeave put: mouseLeave;
							yourself);
				yourself)!

onMouseWheel: event deltaX: deltaX deltaY: deltaY
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #OnMouseWheel;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #event put: event;
							at: #deltaX put: deltaX;
							at: #deltaY put: deltaY;
							yourself);
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
		userInitiated: userInitiated.
	^nil!

onOpenUrlFromTab: aDictionary
	| targetUrl targetDisposition userGesture |
	targetUrl := aDictionary at: #targetUrl.
	targetDisposition := aDictionary at: #targetDisposition.
	userGesture := aDictionary at: #userGesture.
	^host
		onOpenUrlFromTab: targetUrl
		targetDisposition: targetDisposition
		userGesture: userGesture!

onPopupShow: aDictionary
	| show |
	show := aDictionary at: #show.
	host onPopupShow: show.
	^nil!

onPopupSize: aDictionary
	| rectangle |
	rectangle := aDictionary at: #rectangle.
	host onPopupSize: rectangle.
	^nil!

onTextSelectionChanged: aDictionary
	| selectedText selectedRangeFrom selectedRangeTo |
	selectedText := aDictionary at: #selectedText.
	selectedRangeFrom := aDictionary at: #selectedRangeFrom.
	selectedRangeTo := aDictionary at: #selectedRangeTo.
	host
		onTextSelectionChanged: selectedText
		selectedRangeFrom: selectedRangeFrom
		selectedRangeTo: selectedRangeTo.
	^nil!

onTitleChange: aDictionary
	| title |
	title := aDictionary at: #title.
	host onTitleChange: title.
	^nil!

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
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Paste;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

redo
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Redo;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

refreshNavigationState
	canGoBack := nil.
	canGoForward := nil.
	self
		canGoBack: [:aBoolean | canGoBack := aBoolean];
		canGoForward: [:aBoolean | canGoForward := aBoolean]!

reload
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Reload;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

selectAll
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #SelectAll;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

selectedText
	^selectedText!

show
	self wasHidden: false!

tryClose
	self tryClose: [:aBoolean | isReadyToClose := aBoolean]!

tryClose: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #TryClose;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)
		onSuccess: callback!

undo
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Undo;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

wasHidden: hidden
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #WasHidden;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #hidden put: hidden;
							yourself);
				yourself)!

wasResized
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #WasResized;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)! !

!RemoteChromiumBrowser categoriesForMethods!
back!**compiled accessors**!public!rpc! !
canGoBack!**compiled accessors**!public! !
canGoBack:!**compiled accessors**!public!rpc! !
canGoForward!**compiled accessors**!public! !
canGoForward:!**compiled accessors**!public!rpc! !
client!public! !
client:!public! !
close!**compiled accessors**!public!rpc! !
close:!**compiled accessors**!public!rpc! !
copy!**compiled accessors**!public!rpc! !
cut!**compiled accessors**!public!rpc! !
defocus!**compiled accessors**!public!rpc! !
delete!**compiled accessors**!public!rpc! !
evalJavaScript:callback:!public! !
evalJavaScript:scriptUrl:startLine:callback:!**compiled accessors**!public!rpc! !
focus!**compiled accessors**!public!rpc! !
focus:!**compiled accessors**!public!rpc! !
focusedElement!public! !
focusedElement:!public! !
forceClose!**compiled accessors**!public!rpc! !
forward!**compiled accessors**!public!rpc! !
getViewRect:!**compiled accessors**!callback!public! !
hasTextSelected!public! !
host!public! !
host:!public! !
hoveredElement!public! !
id!public! !
id:!public! !
isFocusedElementEditable!public! !
loadUrl!**compiled accessors**!public!rpc! !
loadUrl:!**compiled accessors**!public!rpc! !
onAcceleratedPaint:!**compiled accessors**!callback!public! !
onAddressChange:!**compiled accessors**!callback!public! !
onBeforeClose:!**compiled accessors**!callback!public! !
onBeforeContextMenu:!**compiled accessors**!callback!public! !
onBeforePopup:!**compiled accessors**!callback!public! !
onConsoleMessage:!**compiled accessors**!callback!public! !
onContextMenuCommand:!**compiled accessors**!callback!public! !
onCursorChange:!**compiled accessors**!callback!public! !
onFocusedNodeChanged:!**compiled accessors**!callback!public! !
onFocusOut:!**compiled accessors**!callback!public! !
onKeyboardEvent!**compiled accessors**!public!rpc! !
onKeyboardEvent:!**compiled accessors**!public!rpc! !
onLoadingProgressChange:!**compiled accessors**!callback!public! !
onMouseClick:button:mouseUp:clickCount:!**compiled accessors**!public!rpc! !
onMouseMove:mouseLeave:!**compiled accessors**!public!rpc! !
onMouseWheel:deltaX:deltaY:!**compiled accessors**!public!rpc! !
onNavigate:!**compiled accessors**!callback!public! !
onOpenUrlFromTab:!**compiled accessors**!callback!public! !
onPopupShow:!**compiled accessors**!callback!public! !
onPopupSize:!**compiled accessors**!callback!public! !
onTextSelectionChanged:!**compiled accessors**!callback!public! !
onTitleChange:!**compiled accessors**!callback!public! !
parseUrl:callback:!public! !
paste!**compiled accessors**!public!rpc! !
redo!**compiled accessors**!public!rpc! !
refreshNavigationState!public!rpc! !
reload!**compiled accessors**!public!rpc! !
selectAll!**compiled accessors**!public!rpc! !
selectedText!public! !
show!public! !
tryClose!**compiled accessors**!public!rpc! !
tryClose:!**compiled accessors**!public!rpc! !
undo!**compiled accessors**!public!rpc! !
wasHidden:!**compiled accessors**!public!rpc! !
wasResized!**compiled accessors**!public!rpc! !
!

!RemoteChromiumBrowser class methodsFor!

defineRpcCallbacks
	self
		defineRpcCallback: #getViewRect hasReturnValue: true;
		defineRpcCallback: #onAcceleratedPaint arguments: #(#elementType #sharedTextureHandle #format);
		defineRpcCallback: #onBeforePopup
			arguments: #(#targetUrl #targetFrameName #targetDisposition #userGesture)
			hasReturnValue: true;
		defineRpcCallback: #onPopupShow arguments: #(#show);
		defineRpcCallback: #onPopupSize arguments: #(#rectangle);
		defineRpcCallback: #onAddressChange arguments: #(#url);
		defineRpcCallback: #onTitleChange arguments: #(#title);
		defineRpcCallback: #onTextSelectionChanged
			arguments: #(#selectedText #selectedRangeFrom #selectedRangeTo);
		defineRpcCallback: #onConsoleMessage arguments: #(#level #message #source #line);
		defineRpcCallback: #onLoadingProgressChange arguments: #(#progress);
		defineRpcCallback: #onCursorChange arguments: #(#cursorHandle #cursorType);
		defineRpcCallback: #onFocusOut arguments: #(#tagName #inputType #isEditable);
		defineRpcCallback: #onFocusedNodeChanged arguments: #(#tagName #inputType #isEditable);
		defineRpcCallback: #onMouseOver arguments: #(#tagName #inputType #href #rectangle);
		defineRpcCallback: #onNavigate
			arguments: #(#destination #formData #hashChange #navigationType #userInitiated);
		defineRpcCallback: #onOpenUrlFromTab
			arguments: #(#targetUrl #targetDisposition #userGesture)
			hasReturnValue: true;
		defineRpcCallback: #onBeforeClose;
		defineRpcCallback: #onBeforeContextMenu
			arguments: #(#origin #nodeType #nodeMedia #nodeMediaStateFlags #nodeEditFlags #selectionText)
			hasReturnValue: true;
		defineRpcCallback: #onContextMenuCommand arguments: #(#commandId #eventFlags)!

defineRpcMethods
	"Private - self defineRpcMethods"

	self
		defineRpcMethod: #back;
		defineRpcMethod: #forward;
		defineRpcMethod: #reload;
		defineRpcMethod: #focus arguments: #(focus);
		defineRpcMethod: #defocus;
		defineRpcMethod: #canGoBack withCallback: true;
		defineRpcMethod: #canGoForward withCallback: true;
		defineRpcMethod: #wasResized;
		defineRpcMethod: #wasHidden arguments: #(#hidden);
		defineRpcMethod: #loadUrl arguments: #(#url);
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
		defineRpcMethod: #onKeyboardEvent arguments: #(#event);
		defineRpcMethod: #close arguments: #(#forceClose);
		defineRpcMethod: #tryClose withCallback: true!

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

