"Filed out from Dolphin Smalltalk"!

ChromiumObject subclass: #WebBrowser
	instanceVariableNames: 'id client view navigator'
	classVariableNames: 'ContextMenuCommandMap CursorMap'
	poolDictionaries: 'CefConstants Win32Constants'
	classInstanceVariableNames: ''!

WebBrowser guid: (GUID fromString: '{e8fbf47d-19b1-4854-a0ce-7594dd43cfde}')!

WebBrowser comment: ''!

!WebBrowser categoriesForClass!Kernel-Objects! !

!WebBrowser methodsFor!

canDownload: aDictionary
	| theUrl theRequestMethod |
	theUrl := aDictionary at: #url.
	theRequestMethod := aDictionary at: #requestMethod.
	^view canDownload: theUrl requestMethod: theRequestMethod!

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
	self focus: false!

delete
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #Delete;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)!

downloadImage: imageUrl isFavicon: isFavicon maxImageSize: maxImageSize bypassCache: bypassCache callback: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #DownloadImage;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #imageUrl put: imageUrl;
							at: #isFavicon put: isFavicon;
							at: #maxImageSize put: maxImageSize;
							at: #bypassCache put: bypassCache;
							yourself);
				yourself)
		onSuccess: callback!

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

evaluateJavaScript: code
	^self evaluateJavaScript: code callback: nil!

evaluateJavaScript: code callback: callback
	^self
		evaluateJavaScript: code
		scriptUrl: 'Dolphin'
		startLine: 1
		callback: callback!

evaluateJavaScript: code scriptUrl: scriptUrl startLine: startLine callback: callback
	| payload |
	id ifNil: [^self].
	payload := Dictionary new
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
				yourself.
	callback
		ifNotNil: 
			[:aBlock |
			client send: payload onSuccess: aBlock.
			^self]
		ifNil: [^client send: payload wait: INFINITE]!

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

forceClose
	self close: true!

getFrameRate: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #GetFrameRate;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)
		onSuccess: callback!

getScreenPoint: aDictionary
	| theView |
	theView := aDictionary at: #view.
	^view getScreenPoint: theView!

getSource: callback
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #GetSource;
				at: #instanceId put: id;
				at: #arguments put: nil;
				yourself)
		onSuccess: callback!

getViewRect: aDictionary
	^view getViewRect!

hasTextSelected
	^view selectedText notNil and: [view selectedText notEmpty]!

hide
	self wasHidden: true!

id
	^id!

id: anInteger
	id := anInteger!

isReady
	^id notNil!

loadRequest: url method: method postData: postData headerMap: headerMap
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #LoadRequest;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #url put: url;
							at: #method put: method;
							at: #postData put: postData;
							at: #headerMap put: headerMap;
							yourself);
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

navigator
	^navigator!

navigator: anObject
	navigator := anObject!

onAcceleratedPaint: aDictionary
	| theElementType theSharedTextureHandle theFormat |
	theElementType := aDictionary at: #elementType.
	theSharedTextureHandle := aDictionary at: #sharedTextureHandle.
	theFormat := aDictionary at: #format.
	view
		onAcceleratedPaint: theElementType
		sharedTextureHandle: theSharedTextureHandle
		format: theFormat.
	^nil!

onBeforeBrowse: aDictionary
	| theUrl theMethod theReferrerUrl theHeaders theUserGesture theIsRedirect theTransitionType theResourceType |
	theUrl := aDictionary at: #url.
	theMethod := aDictionary at: #method.
	theReferrerUrl := aDictionary at: #referrerUrl.
	theHeaders := aDictionary at: #headers.
	theUserGesture := aDictionary at: #userGesture.
	theIsRedirect := aDictionary at: #isRedirect.
	theTransitionType := aDictionary at: #transitionType.
	theResourceType := aDictionary at: #resourceType.
	^view
		onBeforeBrowse: theUrl
		method: theMethod
		referrerUrl: theReferrerUrl
		headers: theHeaders
		userGesture: theUserGesture
		isRedirect: theIsRedirect
		transitionType: theTransitionType
		resourceType: theResourceType!

onBeforeClose: aDictionary
	view onBeforeClose.
	^nil!

onBeforeContextMenu: aDictionary
	| theOrigin theNodeType theNodeMedia theNodeMediaStateFlags theNodeEditFlags theSelectionText |
	theOrigin := aDictionary at: #origin.
	theNodeType := aDictionary at: #nodeType.
	theNodeMedia := aDictionary at: #nodeMedia.
	theNodeMediaStateFlags := aDictionary at: #nodeMediaStateFlags.
	theNodeEditFlags := aDictionary at: #nodeEditFlags.
	theSelectionText := aDictionary at: #selectionText.
	^view
		onBeforeContextMenu: theOrigin
		nodeType: theNodeType
		nodeMedia: theNodeMedia
		nodeMediaStateFlags: theNodeMediaStateFlags
		nodeEditFlags: theNodeEditFlags
		selectionText: theSelectionText!

onBeforeDownload: aDictionary
	| theDownloadItem |
	theDownloadItem := aDictionary at: #downloadItem.
	^view onBeforeDownload: theDownloadItem!

onBeforePopup: aDictionary
	| theTargetUrl theTargetFrameName theTargetDisposition theUserGesture |
	theTargetUrl := aDictionary at: #targetUrl.
	theTargetFrameName := aDictionary at: #targetFrameName.
	theTargetDisposition := aDictionary at: #targetDisposition.
	theUserGesture := aDictionary at: #userGesture.
	^view
		onBeforePopup: theTargetUrl
		targetFrameName: theTargetFrameName
		targetDisposition: theTargetDisposition
		userGesture: theUserGesture!

onConsoleMessage: aDictionary
	| theLevel theMessage theSource theLine |
	theLevel := aDictionary at: #level.
	theMessage := aDictionary at: #message.
	theSource := aDictionary at: #source.
	theLine := aDictionary at: #line.
	view
		onConsoleMessage: theLevel
		message: theMessage
		source: theSource
		line: theLine.
	^nil!

onContextMenuCommand: aDictionary
	| theCommandId theEventFlags |
	theCommandId := aDictionary at: #commandId.
	theEventFlags := aDictionary at: #eventFlags.
	^view onContextMenuCommand: theCommandId eventFlags: theEventFlags!

onCursorChange: aDictionary
	| theCursorType |
	theCursorType := aDictionary at: #cursorType.
	view onCursorChange: theCursorType.
	^nil!

onDownloadUpdated: aDictionary
	| theDownloadItem |
	theDownloadItem := aDictionary at: #downloadItem.
	^view onDownloadUpdated: theDownloadItem!

onFaviconUrlChange: aDictionary
	| theIconUrls |
	theIconUrls := aDictionary at: #iconUrls.
	view onFaviconUrlChange: theIconUrls.
	^nil!

onFocusedNodeChanged: aDictionary
	| theTagName theInputType theIsEditable |
	theTagName := aDictionary at: #tagName.
	theInputType := aDictionary at: #inputType.
	theIsEditable := aDictionary at: #isEditable.
	view
		onFocusedNodeChanged: theTagName
		inputType: theInputType
		isEditable: theIsEditable.
	^nil!

onFocusOut: aDictionary
	| theTagName theInputType theIsEditable |
	theTagName := aDictionary at: #tagName.
	theInputType := aDictionary at: #inputType.
	theIsEditable := aDictionary at: #isEditable.
	view
		onFocusOut: theTagName
		inputType: theInputType
		isEditable: theIsEditable.
	^nil!

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

onLoadEnd: aDictionary
	| theHttpStatusCode |
	theHttpStatusCode := aDictionary at: #httpStatusCode.
	view onLoadEnd: theHttpStatusCode.
	^nil!

onLoadError: aDictionary
	| theErrorCode theErrorText theFailedUrl |
	theErrorCode := aDictionary at: #errorCode.
	theErrorText := aDictionary at: #errorText.
	theFailedUrl := aDictionary at: #failedUrl.
	view
		onLoadError: theErrorCode
		errorText: theErrorText
		failedUrl: theFailedUrl.
	^nil!

onLoadingProgressChange: aDictionary
	| theProgress |
	theProgress := aDictionary at: #progress.
	view onLoadingProgressChange: theProgress.
	^nil!

onLoadingStateChange: aDictionary
	| theIsLoading theCanGoBack theCanGoForward |
	theIsLoading := aDictionary at: #isLoading.
	theCanGoBack := aDictionary at: #canGoBack.
	theCanGoForward := aDictionary at: #canGoForward.
	view
		onLoadingStateChange: theIsLoading
		canGoBack: theCanGoBack
		canGoForward: theCanGoForward.
	^nil!

onLoadStart: aDictionary
	| theTransitionType |
	theTransitionType := aDictionary at: #transitionType.
	view onLoadStart: theTransitionType.
	^nil!

onLogMessage: aDictionary
	| theLevel theMessage |
	theLevel := aDictionary at: #level.
	theMessage := aDictionary at: #message.
	view onLogMessage: theLevel message: theMessage.
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

onNavigateByDelta: aDictionary
	| theDelta theInfo |
	theDelta := aDictionary at: #delta.
	theInfo := aDictionary at: #info.
	view onNavigateByDelta: theDelta info: theInfo.
	^nil!

onNavigateByKey: aDictionary
	| theKey theInfo |
	theKey := aDictionary at: #key.
	theInfo := aDictionary at: #info.
	view onNavigateByKey: theKey info: theInfo.
	^nil!

onNavigateByUrl: aDictionary
	| theUrl theState theHistory theInfo |
	theUrl := aDictionary at: #url.
	theState := aDictionary at: #state.
	theHistory := aDictionary at: #history.
	theInfo := aDictionary at: #info.
	view
		onNavigateByUrl: theUrl
		state: theState
		history: theHistory
		info: theInfo.
	^nil!

onOpenUrlFromTab: aDictionary
	| theTargetUrl theTargetDisposition theUserGesture |
	theTargetUrl := aDictionary at: #targetUrl.
	theTargetDisposition := aDictionary at: #targetDisposition.
	theUserGesture := aDictionary at: #userGesture.
	^view
		onOpenUrlFromTab: theTargetUrl
		targetDisposition: theTargetDisposition
		userGesture: theUserGesture!

onPaint: aDictionary
	| theElementType theWidth theHeight theDirtyRects theSharedMemoryHandle theSharedMemorySize |
	theElementType := aDictionary at: #elementType.
	theWidth := aDictionary at: #width.
	theHeight := aDictionary at: #height.
	theDirtyRects := aDictionary at: #dirtyRects.
	theSharedMemoryHandle := aDictionary at: #sharedMemoryHandle.
	theSharedMemorySize := aDictionary at: #sharedMemorySize.
	view
		onPaint: theElementType
		width: theWidth
		height: theHeight
		dirtyRects: theDirtyRects
		sharedMemoryHandle: theSharedMemoryHandle
		sharedMemorySize: theSharedMemorySize.
	^nil!

onPopupShow: aDictionary
	| theShow |
	theShow := aDictionary at: #show.
	view onPopupShow: theShow.
	^nil!

onPopupSize: aDictionary
	| theRectangle |
	theRectangle := aDictionary at: #rectangle.
	view onPopupSize: theRectangle.
	^nil!

onPushState: aDictionary
	| theState theUrl |
	theState := aDictionary at: #state.
	theUrl := aDictionary at: #url.
	view onPushState: theState url: theUrl.
	^nil!

onReplaceState: aDictionary
	| theState theUrl |
	theState := aDictionary at: #state.
	theUrl := aDictionary at: #url.
	view onReplaceState: theState url: theUrl.
	^nil!

onTextSelectionChanged: aDictionary
	| theSelectedText theSelectedRangeFrom theSelectedRangeTo |
	theSelectedText := aDictionary at: #selectedText.
	theSelectedRangeFrom := aDictionary at: #selectedRangeFrom.
	theSelectedRangeTo := aDictionary at: #selectedRangeTo.
	view
		onTextSelectionChanged: theSelectedText
		selectedRangeFrom: theSelectedRangeFrom
		selectedRangeTo: theSelectedRangeTo.
	^nil!

onTitleChange: aDictionary
	| theTitle |
	theTitle := aDictionary at: #title.
	view onTitleChange: theTitle.
	^nil!

onTooltip: aDictionary
	| theText |
	theText := aDictionary at: #text.
	view onTooltip: theText.
	^nil!

parseUrl: aString callback: aBlock
	self
		evaluateJavaScript: ('(() => { 
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

setFrameRate: frameRate
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #SetFrameRate;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #frameRate put: frameRate;
							yourself);
				yourself)!

show
	self wasHidden: false!

startDownload: url
	id ifNil: [^self].
	client send: (Dictionary new
				at: #id put: GUID newUnique idlString;
				at: #class put: #Browser;
				at: #method put: #StartDownload;
				at: #instanceId put: id;
				at: #arguments
					put: (Dictionary new
							at: #url put: url;
							yourself);
				yourself)!

tryClose
	self tryClose: [:aBoolean | view isReadyToClose: aBoolean]!

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

view
	^view!

view: aRenderedWebpage
	view := aRenderedWebpage!

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

!WebBrowser categoriesForMethods!
canDownload:!**compiled callbacks**!private!rpc! !
client!public! !
client:!public! !
close!public!rpc! !
close:!**compiled methods**!public!rpc! !
copy!**compiled methods**!public!rpc! !
cut!**compiled methods**!public!rpc! !
defocus!public!rpc! !
delete!**compiled methods**!public!rpc! !
downloadImage:isFavicon:maxImageSize:bypassCache:callback:!**compiled methods**!public!rpc! !
evalJavaScript:scriptUrl:startLine:callback:!**compiled methods**!public!rpc! !
evaluateJavaScript:!public! !
evaluateJavaScript:callback:!public! !
evaluateJavaScript:scriptUrl:startLine:callback:!**compiled methods**!public!rpc! !
focus!public!rpc! !
focus:!**compiled methods**!public!rpc! !
forceClose!public!rpc! !
getFrameRate:!**compiled methods**!public!rpc! !
getScreenPoint:!**compiled callbacks**!private!rpc! !
getSource:!**compiled methods**!public!rpc! !
getViewRect:!**compiled callbacks**!private!rpc! !
hasTextSelected!public! !
hide!public!rpc! !
id!public! !
id:!public! !
isReady!public! !
loadRequest:method:postData:headerMap:!**compiled methods**!public!rpc! !
loadUrl:!**compiled methods**!public!rpc! !
navigator!public! !
navigator:!private! !
onAcceleratedPaint:!**compiled callbacks**!private!rpc! !
onBeforeBrowse:!**compiled callbacks**!private!rpc! !
onBeforeClose:!**compiled callbacks**!private!rpc! !
onBeforeContextMenu:!**compiled callbacks**!private!rpc! !
onBeforeDownload:!**compiled callbacks**!private!rpc! !
onBeforePopup:!**compiled callbacks**!private!rpc! !
onConsoleMessage:!**compiled callbacks**!private!rpc! !
onContextMenuCommand:!**compiled callbacks**!private!rpc! !
onCursorChange:!**compiled callbacks**!private!rpc! !
onDownloadUpdated:!**compiled callbacks**!private!rpc! !
onFaviconUrlChange:!**compiled callbacks**!private!rpc! !
onFocusedNodeChanged:!**compiled callbacks**!private!rpc! !
onFocusOut:!**compiled callbacks**!private!rpc! !
onKeyboardEvent:!**compiled methods**!public!rpc! !
onLoadEnd:!**compiled callbacks**!private!rpc! !
onLoadError:!**compiled callbacks**!private!rpc! !
onLoadingProgressChange:!**compiled callbacks**!private!rpc! !
onLoadingStateChange:!**compiled callbacks**!private!rpc! !
onLoadStart:!**compiled callbacks**!private!rpc! !
onLogMessage:!**compiled callbacks**!private!rpc! !
onMouseClick:button:mouseUp:clickCount:!**compiled methods**!public!rpc! !
onMouseMove:mouseLeave:!**compiled methods**!public!rpc! !
onMouseWheel:deltaX:deltaY:!**compiled methods**!public!rpc! !
onNavigateByDelta:!**compiled callbacks**!private!rpc! !
onNavigateByKey:!**compiled callbacks**!private!rpc! !
onNavigateByUrl:!**compiled callbacks**!private!rpc! !
onOpenUrlFromTab:!**compiled callbacks**!private!rpc! !
onPaint:!**compiled callbacks**!private!rpc! !
onPopupShow:!**compiled callbacks**!private!rpc! !
onPopupSize:!**compiled callbacks**!private!rpc! !
onPushState:!**compiled callbacks**!private!rpc! !
onReplaceState:!**compiled callbacks**!private!rpc! !
onTextSelectionChanged:!**compiled callbacks**!private!rpc! !
onTitleChange:!**compiled callbacks**!private!rpc! !
onTooltip:!**compiled callbacks**!private!rpc! !
parseUrl:callback:!public! !
paste!**compiled methods**!public!rpc! !
redo!**compiled methods**!public!rpc! !
reload!**compiled methods**!public!rpc! !
selectAll!**compiled methods**!public!rpc! !
setFrameRate:!**compiled methods**!public!rpc! !
show!public! !
startDownload:!**compiled methods**!public!rpc! !
tryClose!public!rpc! !
tryClose:!**compiled methods**!public!rpc! !
undo!**compiled methods**!public!rpc! !
view!public! !
view:!private! !
wasHidden:!**compiled methods**!public!rpc! !
wasResized!**compiled methods**!public!rpc! !
!

!WebBrowser class methodsFor!

defineRpcCallbacks
	self
		defineRpcCallback: #onTitleChange arguments: #(#title);
		defineRpcCallback: #onPushState arguments: #(#state #url);
		defineRpcCallback: #onReplaceState arguments: #(#state #url);
		defineRpcCallback: #onNavigateByDelta arguments: #(#delta #info);
		defineRpcCallback: #onNavigateByUrl arguments: #(#url #state #history #info);
		defineRpcCallback: #onNavigateByKey arguments: #(#key #info);
		defineRpcCallback: #onBeforeBrowse
			arguments: #(#url #method #referrerUrl #headers #userGesture #isRedirect #transitionType #resourceType)
			hasReturnValue: true;
		defineRpcCallback: #onOpenUrlFromTab
			arguments: #(#targetUrl #targetDisposition #userGesture)
			hasReturnValue: true;
		defineRpcCallback: #onBeforePopup
			arguments: #(#targetUrl #targetFrameName #targetDisposition #userGesture)
			hasReturnValue: true;
		defineRpcCallback: #onFaviconUrlChange arguments: #(#iconUrls);
		defineRpcCallback: #getScreenPoint
			arguments: #(#view)
			hasReturnValue: true;
		defineRpcCallback: #getViewRect hasReturnValue: true;
		defineRpcCallback: #onPaint
			arguments: #(#elementType #width #height #dirtyRects #sharedMemoryHandle #sharedMemorySize);
		defineRpcCallback: #onAcceleratedPaint arguments: #(#elementType #sharedTextureHandle #format);
		defineRpcCallback: #onTextSelectionChanged
			arguments: #(#selectedText #selectedRangeFrom #selectedRangeTo);
		defineRpcCallback: #onConsoleMessage arguments: #(#level #message #source #line);
		defineRpcCallback: #onLogMessage arguments: #(#level #message);
		defineRpcCallback: #onCursorChange arguments: #(#cursorType);
		defineRpcCallback: #onFocusOut arguments: #(#tagName #inputType #isEditable);
		defineRpcCallback: #onFocusedNodeChanged arguments: #(#tagName #inputType #isEditable);
		defineRpcCallback: #onMouseOver arguments: #(#tagName #inputType #href #rectangle);
		defineRpcCallback: #onTooltip arguments: #(#text);
		defineRpcCallback: #onBeforeContextMenu
			arguments: #(#origin #nodeType #nodeMedia #nodeMediaStateFlags #nodeEditFlags #selectionText)
			hasReturnValue: true;
		defineRpcCallback: #onContextMenuCommand
			arguments: #(#commandId #eventFlags)
			hasReturnValue: true;
		defineRpcCallback: #onPopupShow arguments: #(#show);
		defineRpcCallback: #onPopupSize arguments: #(#rectangle);
		defineRpcCallback: #onBeforeClose target: #view;
		defineRpcCallback: #onLoadingProgressChange arguments: #(#progress);
		defineRpcCallback: #onLoadingStateChange arguments: #(#isLoading #canGoBack #canGoForward);
		defineRpcCallback: #onLoadStart arguments: #(#transitionType);
		defineRpcCallback: #onLoadEnd arguments: #(#httpStatusCode);
		defineRpcCallback: #onLoadError arguments: #(#errorCode #errorText #failedUrl);
		defineRpcCallback: #canDownload
			arguments: #(#url #requestMethod)
			hasReturnValue: true;
		defineRpcCallback: #onBeforeDownload
			arguments: #(#downloadItem)
			hasReturnValue: true;
		defineRpcCallback: #onDownloadUpdated
			arguments: #(#downloadItem)
			hasReturnValue: true!

defineRpcMethods
	"Private - self defineRpcMethods"

	self
		defineRpcMethod: #reload;
		defineRpcMethod: #focus arguments: #(#focus);
		defineRpcMethod: #wasResized;
		defineRpcMethod: #wasHidden arguments: #(#hidden);
		defineRpcMethod: #loadUrl arguments: #(#url);
		defineRpcMethod: #loadRequest arguments: #(#url #method #postData #headerMap);
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
		defineRpcMethod: #tryClose withCallback: true;
		defineRpcMethod: #startDownload arguments: #(#url);
		defineRpcMethod: #downloadImage
			arguments: #(#imageUrl #isFavicon #maxImageSize #bypassCache)
			withCallback: true;
		defineRpcMethod: #getSource withCallback: true;
		defineRpcMethod: #getFrameRate withCallback: true;
		defineRpcMethod: #setFrameRate arguments: #(#frameRate)!

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

!WebBrowser class categoriesForMethods!
defineRpcCallbacks!private! !
defineRpcMethods!private! !
initialize!public! !
rpcClassName!private! !
!

