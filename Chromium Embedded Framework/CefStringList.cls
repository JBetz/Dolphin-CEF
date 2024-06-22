"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #CefStringList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefStringList guid: (GUID fromString: '{00cf9acf-825f-4870-ae38-79458f6b14a9}')!

CefStringList comment: ''!

!CefStringList categoriesForClass!External-Data-Structured! !

!CefStringList methodsFor!

at: anInteger
	| value resultCode |
	value := CefString new.
	resultCode := CefLibrary default
				stringListValue_list: self
				index: anInteger - 1
				value: value.
	resultCode = 0
		ifTrue: [self error: ('Invalid index in CefStringList: <1d>' expandMacrosWith: anInteger)].
	^value!

size
	^CefLibrary default stringListSize_list: self! !

!CefStringList categoriesForMethods!
at:!public! !
size!public! !
!

