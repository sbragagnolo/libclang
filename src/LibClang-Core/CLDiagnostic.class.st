Class {
	#name : #CLDiagnostic,
	#superclass : #Object,
	#traits : 'TLibClang',
	#classTraits : 'TLibClang classTrait',
	#instVars : [
		'handle'
	],
	#category : #'LibClang-Core'
}

{ #category : #finalization }
CLDiagnostic class >> finalizeResourceData: aHandle [
	self clang disposeDiagnostic: aHandle  
]

{ #category : #accessing }
CLDiagnostic >> category [
	^ self clang getDiagnosticCategory: handle
]

{ #category : #accessing }
CLDiagnostic >> categoryText [
	| cxstr str |
	cxstr := self clang getDiagnosticCategoryText: handle.
	str := cxstr asString.
	cxstr disposeString.	"free the cxstring"
	^ str
]

{ #category : #accessing }
CLDiagnostic >> childDiagnostics [
	^ CLDiagnosticSet new handle: (self clang getChildDiagnostics: handle)
]

{ #category : #accessing }
CLDiagnostic >> defaultDiagnosticFormat [
	| cxstr str options |
	options := self clang defaultDiagnosticDisplayOptions.
	cxstr := self clang formatDiagnostic: handle Options: options.
	str := cxstr asString.
	cxstr disposeString.	"free the cxstring"
	^ str
]

{ #category : #accessing }
CLDiagnostic >> fixitAt: anIndex [
	| max cxstr str range |
	max := self numFixIts.
	(anIndex < 1 or: [ anIndex > max ])
		ifTrue: [ 
			^ SubscriptOutOfBounds
				signalFor: anIndex
				lowerBound: 1
				upperBound: max
				in: self ].
	range := CXSourceRangeStruct new.
	cxstr := self clang getDiagnosticFixIt: handle FixIt: anIndex - 1 ReplacementRange: range.
	str := cxstr asString.
	cxstr disposeString.
	^CLFixIt new
		replacementString:  str;
		range: range
]

{ #category : #accessing }
CLDiagnostic >> handle [
	^ handle
]

{ #category : #accessing }
CLDiagnostic >> handle: anObject [
	handle := anObject.
	handle ifNil: [ ^ self error: 'Invalid CLDiagnosticSet handle' ].
	NBExternalResourceManager addResource: self data: handle
]

{ #category : #accessing }
CLDiagnostic >> location [
	^ self clang getDiagnosticLocation: handle
]

{ #category : #accessing }
CLDiagnostic >> numFixIts [
	^self clang getDiagnosticNumFixIts: handle
]

{ #category : #accessing }
CLDiagnostic >> numRanges [
	^self clang getDiagnosticNumRanges: handle
]

{ #category : #accessing }
CLDiagnostic >> rangeAt: aRange [
	| max |
	max := self numRanges.
	(aRange < 1 or: [ aRange > max ])
		ifTrue: [ 
			^ SubscriptOutOfBounds
				signalFor: aRange
				lowerBound: 1
				upperBound: max
				in: self ].
	^self clang getDiagnosticRange: handle Range: aRange - 1
]

{ #category : #accessing }
CLDiagnostic >> severity [
	^ self clang getDiagnosticSeverity: handle
]

{ #category : #accessing }
CLDiagnostic >> spelling [
	| cxstr str |
	cxstr := self clang getDiagnosticSpelling: handle.
	str := cxstr asString.
	cxstr disposeString.	"free the cxstring"
	^ str
]
