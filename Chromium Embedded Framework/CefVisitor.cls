"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CefVisitor guid: (GUID fromString: '{96ed2175-882a-4f5b-adff-e818a5e15a60}')!
CefVisitor comment: ''!
!CefVisitor categoriesForClass!External-Data-Structured! !
!CefVisitor methodsFor!

visitCallback: aBlock
	| descriptor blockCallback |
	descriptor := (self class callbackRegistry at: #visit:) descriptor.
	blockCallback := ExternalCallback block: aBlock descriptor: descriptor.
	self visit: blockCallback asParameter! !
!CefVisitor categoriesForMethods!
visitCallback:!public! !
!

