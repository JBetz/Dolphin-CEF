"Filed out from Dolphin Smalltalk"!

SessionCommand subclass: #SetWindowBounds3Command
	instanceVariableNames: 'windowId x y w h showState'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SetWindowBounds3Command guid: (GUID fromString: '{019ef788-d1ca-46db-aaf1-a58a24a52ffe}')!

SetWindowBounds3Command comment: ''!

!SetWindowBounds3Command categoriesForClass!Kernel-Objects! !

!SetWindowBounds3Command methodsFor!

h
	^h!

h: anObject
	h := anObject!

showState
	^showState!

showState: anObject
	showState := anObject!

w
	^w!

w: anObject
	w := anObject!

windowId
	^windowId!

windowId: anObject
	windowId := anObject!

x
	^x!

x: anObject
	x := anObject!

y
	^y!

y: anObject
	y := anObject! !

!SetWindowBounds3Command categoriesForMethods!
h!accessing!public! !
h:!accessing!private! !
showState!accessing!public! !
showState:!accessing!private! !
w!accessing!public! !
w:!accessing!private! !
windowId!accessing!public! !
windowId:!accessing!private! !
x!accessing!public! !
x:!accessing!private! !
y!accessing!public! !
y:!accessing!private! !
!

!SetWindowBounds3Command class methodsFor!

fromStream: aStream
	^self new
		windowId: aStream nextSDWORD;
		x: aStream nextSDWORD;
		y: aStream nextSDWORD;
		w: aStream nextSDWORD;
		h: aStream nextSDWORD;
		showState: aStream nextSDWORD;
		yourself! !

!SetWindowBounds3Command class categoriesForMethods!
fromStream:!public! !
!

