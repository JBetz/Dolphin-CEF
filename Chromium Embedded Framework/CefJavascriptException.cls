"Filed out from Dolphin Smalltalk"!

Error subclass: #CefJavaScriptException
	instanceVariableNames: 'endColumn endPosition lineNumber message scriptResourceName sourceLine startColumn startPosition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefJavaScriptException guid: (GUID fromString: '{cea8190c-8e08-40cb-853b-cf4516640332}')!

CefJavaScriptException comment: ''!

!CefJavaScriptException categoriesForClass!Kernel-Objects! !

!CefJavaScriptException methodsFor!

endColumn
	^endColumn!

endColumn: anObject
	endColumn := anObject!

endPosition
	^endPosition!

endPosition: anObject
	endPosition := anObject!

lineNumber
	^lineNumber!

lineNumber: anObject
	lineNumber := anObject!

message
	^message!

message: anObject
	message := anObject!

messageText
	^message!

scriptResourceName
	^scriptResourceName!

scriptResourceName: anObject
	scriptResourceName := anObject!

sourceLine
	^sourceLine!

sourceLine: anObject
	sourceLine := anObject!

startColumn
	^startColumn!

startColumn: anObject
	startColumn := anObject!

startPosition
	^startPosition!

startPosition: anObject
	startPosition := anObject! !

!CefJavaScriptException categoriesForMethods!
endColumn!accessing!public! !
endColumn:!accessing!private! !
endPosition!accessing!public! !
endPosition:!accessing!private! !
lineNumber!accessing!public! !
lineNumber:!accessing!private! !
message!accessing!public! !
message:!accessing!private! !
messageText!public! !
scriptResourceName!accessing!public! !
scriptResourceName:!accessing!private! !
sourceLine!accessing!public! !
sourceLine:!accessing!private! !
startColumn!accessing!public! !
startColumn:!accessing!private! !
startPosition!accessing!public! !
startPosition:!accessing!private! !
!

!CefJavaScriptException class methodsFor!

fromCefDictionary: aCefDictionary
	^self new
		endColumn: (aCefDictionary at: 'endColumn');
		endPosition: (aCefDictionary at: 'endPosition');
		lineNumber: (aCefDictionary at: 'lineNumber');
		message: (aCefDictionary at: 'message');
		scriptResourceName: (aCefDictionary at: 'scriptResourceName');
		sourceLine: (aCefDictionary at: 'sourceLine');
		startColumn: (aCefDictionary at: 'startColumn');
		startPosition: (aCefDictionary at: 'startPosition');
		yourself! !

!CefJavaScriptException class categoriesForMethods!
fromCefDictionary:!public! !
!

