"Filed out from Dolphin Smalltalk"!

Object subclass: #PNGImageData
	instanceVariableNames: 'data width height'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

PNGImageData guid: (GUID fromString: '{5fb4d30a-fe18-49ac-b6f1-4144586ff7a3}')!

PNGImageData comment: ''!

!PNGImageData categoriesForClass!Kernel-Objects! !

!PNGImageData methodsFor!

data
	^data!

data: anObject
	data := anObject!

height
	^height!

height: anObject
	height := anObject!

width
	^width!

width: anObject
	width := anObject! !

!PNGImageData categoriesForMethods!
data!accessing!public! !
data:!accessing!private! !
height!accessing!public! !
height:!accessing!private! !
width!accessing!public! !
width:!accessing!private! !
!

!PNGImageData class methodsFor!

fromDictionary: aDictionary
	^self new
		data: (aDictionary at: #data);
		width: (aDictionary at: #width);
		height: (aDictionary at: #height);
		yourself! !

!PNGImageData class categoriesForMethods!
fromDictionary:!public! !
!

