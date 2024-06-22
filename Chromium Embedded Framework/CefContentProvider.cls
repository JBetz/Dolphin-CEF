"Filed out from Dolphin Smalltalk"!

Object subclass: #CefContentProvider
	instanceVariableNames: 'url html htmlByteStream resourceRequestHandler resourceHandler chromiumBrowser'
	classVariableNames: ''
	poolDictionaries: 'CefConstants'
	classInstanceVariableNames: ''!

CefContentProvider guid: (GUID fromString: '{db2e585b-1977-47c0-8567-027604fd81e9}')!

CefContentProvider comment: ''!

!CefContentProvider categoriesForClass!Kernel-Objects! !

!CefContentProvider methodsFor!

cancel: resourceHandler!

chromiumBrowser: anObject
	chromiumBrowser := anObject!

getResourceHandler: resourceRequestHandler browser: browser frame: frame request: request
	^resourceHandler yourAddress!

getResourceRequestHandler: requestHandler browser: browser frame: frame request: request isNavigation: isNavigation isDownload: isDownload requestInitiator: requestInitiator disableDefaultHandling: disableDefaultHandling
	^resourceRequestHandler ifNotNil: [resourceRequestHandler yourAddress] ifNil: [0]!

getResponseHeaders: resourceHandler response: response responseLength: responseLength redirectUrl: redirectUrl
	response
		setStatus_status: 200;
		setStatusText_statusText: 'OK' asCefString;
		setMimeType_mimeType: 'text/html' asCefString.
	responseLength value: html byteSize!

html
	^html!

html: anObject
	html := anObject!

initialize
	super initialize.
	resourceRequestHandler := CefResourceRequestHandler new.
	resourceRequestHandler delegate: self.
	resourceHandler := CefResourceHandler new.
	resourceHandler delegate: self!

onBeforeResourceLoad: resourceRequestHandler browser: browser frame: frame request: request callback: callback
	htmlByteStream := ReadStream on: html asByteArray.
	^RV_CONTINUE!

onResourceLoadComplete: resourceRequestHandler browser: browser frame: frame request: request response: response status: status receivedContentLength: receivedContentLength
	htmlByteStream := nil.
	chromiumBrowser ifNotNil: [chromiumBrowser removeContentProvider: self]!

open: resourceHandler request: request handleRequest: handleRequest callback: callback 
	handleRequest value: 1.
	^1!

read: resourceHandler dataOut: dataOut bytesToRead: bytesToRead bytesRead: bytesRead callback: callback
	| numberOfBytesToRead |
	numberOfBytesToRead := htmlByteStream size - htmlByteStream position min: bytesToRead.
	1 to: numberOfBytesToRead
		do: [:byteIndex | dataOut byteAtOffset: byteIndex - 1 put: htmlByteStream next].
	bytesRead value: numberOfBytesToRead.
	^(numberOfBytesToRead > 0) asInteger!

skip: resourceHandler bytesToSkip: bytesToSkip bytesSkipped: bytesSkipped callback: callback
	^1!

url
	^url!

url: aUrl
	url := aUrl! !

!CefContentProvider categoriesForMethods!
cancel:!private! !
chromiumBrowser:!accessing!public! !
getResourceHandler:browser:frame:request:!private! !
getResourceRequestHandler:browser:frame:request:isNavigation:isDownload:requestInitiator:disableDefaultHandling:!private! !
getResponseHeaders:response:responseLength:redirectUrl:!private! !
html!accessing!public! !
html:!accessing!public! !
initialize!public! !
onBeforeResourceLoad:browser:frame:request:callback:!private! !
onResourceLoadComplete:browser:frame:request:response:status:receivedContentLength:!private! !
open:request:handleRequest:callback:!private! !
read:dataOut:bytesToRead:bytesRead:callback:!private! !
skip:bytesToSkip:bytesSkipped:callback:!private! !
url!accessing!public! !
url:!accessing!public! !
!

!CefContentProvider class methodsFor!

new
	^super new initialize! !

!CefContentProvider class categoriesForMethods!
new!public! !
!

