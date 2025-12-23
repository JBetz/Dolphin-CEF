"Filed out from Dolphin Smalltalk"!

ReadStream subclass: #PickleStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

PickleStream guid: (GUID fromString: '{c2b395ce-494d-4744-a770-7fe0b8423d28}')!

PickleStream comment: ''!

!PickleStream categoriesForClass!Collections-Streams! !

!PickleStream methodsFor!

alignment
	^4!

checkLength
	self assert: [self nextSDWORD + SDWORD byteSize == self size]!

nextAligned: anInteger
	| bytes alignCount |
	bytes := self next: anInteger.
	alignCount := self alignment - (anInteger % self alignment).
	alignCount ~= self alignment ifTrue: [self next: alignCount].
	^bytes!

nextBoolean
	^self nextSDWORD asBoolean!

nextByteString
	| length |
	length := self nextSDWORD.
	^self nextAligned: length!

nextDateAndTime
	| microseconds |
	microseconds := self nextQWORD.
	^(DateAndTime
		year: 1601
		month: 1
		day: 1) + (Duration microseconds: microseconds)!

nextDictionary
	| size dictionary |
	size := self nextSDWORD.
	dictionary := Dictionary new.
	1 to: size do: [:index | dictionary at: self nextString put: self nextString].
	^dictionary!

nextDWORD
	"uint32"
	| bytes |
	bytes := self next: 4.
	^(DWORD fromBytes: bytes) asInteger!

nextInnerUtf16String
	| length |
	length := self nextSDWORD.
	length = -1 ifTrue: [^nil].
	^(self nextAligned: length) asUtf16String!

nextPageState
	| size |
	^self nextAligned: self nextSDWORD.
	size := self nextSDWORD.
	size = 0 ifTrue: [^nil].
	^PageState fromStream: (PickleStream on: (self nextAligned: size))!

nextQWORD
	"uint64"
	| bytes |
	bytes := self nextAligned: 8.
	^(QWORD fromBytes: bytes) asInteger!

nextSDWORD
	"int32"
	| bytes |
	bytes := self nextAligned: 4.
	^(SDWORD fromBytes: bytes) asInteger!

nextSQWORD
	"int64"
	| bytes |
	bytes := self nextAligned: 8.
	^LargeInteger fromBytes: bytes!

nextString
	| length |
	length := self nextDWORD.
	^(self nextAligned: length) asString!

nextStringArray
	| size strings |
	size := self nextSDWORD.
	strings := OrderedCollection new.
	(1 to: size) do: [:i | strings add: self nextInnerUtf16String].
	^strings asArray!

nextSWORD
	"int16"
	| bytes |
	bytes := self nextAligned: 2.
	^(SWORD fromBytes: bytes) asInteger!

nextUtf16String
	| length |
	length := self nextDWORD * 2.
	^(self nextAligned: length) asUtf16String!

nextWORD
	"uint16"
	| bytes |
	bytes := self nextAligned: 2.
	^(WORD fromBytes: bytes) asInteger!

tryNextSDWORD
	^[self nextSDWORD] on: Error
		do: 
			[:error |
			self position: self position - 4.
			nil]!

tryNextSQWORD
	^[self nextSQWORD] on: Error
		do: 
			[:error |
			self position: self position - 8.
			nil]! !

!PickleStream categoriesForMethods!
alignment!public! !
checkLength!public! !
nextAligned:!private! !
nextBoolean!public! !
nextByteString!public! !
nextDateAndTime!public! !
nextDictionary!public! !
nextDWORD!public! !
nextInnerUtf16String!public! !
nextPageState!public! !
nextQWORD!public! !
nextSDWORD!public! !
nextSQWORD!public! !
nextString!public! !
nextStringArray!public! !
nextSWORD!public! !
nextUtf16String!public! !
nextWORD!public! !
tryNextSDWORD!public! !
tryNextSQWORD!public! !
!

