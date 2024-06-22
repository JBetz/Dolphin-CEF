"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefVisitor
	instanceVariableNames: 'blockCallback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefVisitor guid: (GUID fromString: '{96ed2175-882a-4f5b-adff-e818a5e15a60}')!

CefVisitor comment: ''!

!CefVisitor categoriesForClass!External-Data-Structured! !

!CefVisitor methodsFor!

visit: anExternalAddress
	self subclassResponsibility!

visitCallback: aBlock
	| descriptor |
	descriptor := (self class callbackRegistry at: #visit:) descriptor.
	blockCallback := ExternalCallback block: aBlock descriptor: descriptor.
	self visit: blockCallback asParameter! !

!CefVisitor categoriesForMethods!
visit:!public! !
visitCallback:!public! !
!

