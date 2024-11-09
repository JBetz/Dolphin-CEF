"Filed out from Dolphin Smalltalk"!

LPVOIDField subclass: #ProcedureField
	instanceVariableNames: 'cName descriptor smalltalkName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ProcedureField guid: (GUID fromString: '{0ddc0078-0787-4661-aba7-1fd87c10c9b8}')!

ProcedureField comment: ''!

!ProcedureField categoriesForClass!External-Data-Types! !

!ProcedureField methodsFor!

cName
	^cName!

cName: anObject
	cName := anObject!

descriptor
	^descriptor!

descriptor: anExternalDescriptor 
	descriptor := anExternalDescriptor!

smalltalkName
	^smalltalkName!

smalltalkName: aSymbol
	smalltalkName := aSymbol! !

!ProcedureField categoriesForMethods!
cName!accessing!private! !
cName:!accessing!private! !
descriptor!accessing!public! !
descriptor:!public! !
smalltalkName!public! !
smalltalkName:!public! !
!

!ProcedureField class methodsFor!

descriptor: anExternalDescriptor
	anExternalDescriptor argumentCount > 1
		ifTrue: 
			[self
				error: 'For non-unary C method fields, you need to specify the Smalltalk selector manually. Use MethodField class>>descriptor:smalltalkName when constructing this method field instead of MethodField class>>descriptor.'].
	^self new descriptor: anExternalDescriptor!

descriptor: anExternalDescriptor smalltalkName: aSymbol
	^self new
		descriptor: anExternalDescriptor;
		smalltalkName: aSymbol! !

!ProcedureField class categoriesForMethods!
descriptor:!public! !
descriptor:smalltalkName:!public! !
!

