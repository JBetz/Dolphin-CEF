"Filed out from Dolphin Smalltalk"!

ProcedureField subclass: #CallbackField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CallbackField guid: (GUID fromString: '{3c72b0b9-794c-453e-ba34-1e035d622240}')!
CallbackField comment: ''!
!CallbackField categoriesForClass!External-Data-Types! !
!CallbackField methodsFor!

callbackSelector
	^smalltalkName
		ifNil: 
			[| callbackSelector |
			callbackSelector := cName fromSnakeCaseToCamelCase.
			descriptor argumentTypes allButFirst do: 
					[:typeName |
					| keyword |
					keyword := (typeName reject: [:each | each = $*]) uncapitalized.
					callbackSelector := callbackSelector , keyword , ':'].
			callbackSelector asSymbol]! !
!CallbackField categoriesForMethods!
callbackSelector!private! !
!

