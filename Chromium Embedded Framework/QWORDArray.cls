"Filed out from Dolphin Smalltalk"!

ExternalArray subclass: #QWORDArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

QWORDArray guid: (GUID fromString: '{747b219c-1773-4030-82b8-f7a79b9d67c5}')!

QWORDArray comment: ''!

!QWORDArray categoriesForClass!External-Data-Structured! !

!QWORDArray methodsFor!

uncheckedAt: anInteger 
	"Private - Answer an 64-bit signed <integer> representing the element of the 
	receiver at the specified <integer> index. No bounds checks are performed on the subscript."

	^bytes qwordAtOffset: (anInteger - 1) * 8!

uncheckedAt: indexInteger put: valueInteger 
	^bytes qwordAtOffset: (indexInteger - 1) * 8 put: valueInteger! !

!QWORDArray categoriesForMethods!
uncheckedAt:!private! !
uncheckedAt:put:!private! !
!

!QWORDArray class methodsFor!

elementClass
	^QWORD! !

!QWORDArray class categoriesForMethods!
elementClass!public! !
!

