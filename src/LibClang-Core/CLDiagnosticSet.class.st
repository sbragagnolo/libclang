Class {
	#name : #CLDiagnosticSet,
	#superclass : #Object,
	#traits : 'TLibClang',
	#classTraits : 'TLibClang classTrait',
	#instVars : [
		'handle',
		'tally'
	],
	#category : #'LibClang-Core'
}

{ #category : #finalization }
CLDiagnosticSet class >> finalizeResourceData: aHandle [
	self clang disposeDiagnosticSet: aHandle
]

{ #category : #api }
CLDiagnosticSet class >> loadDiagnostics: aFile [
	"Deserialize a set of diagnostics from a Clang diagnostics bitcode file "

	| error errorString diagSet |
	error := NBExternalArray ofType: #CXLoadDiagErrorEnum.
	errorString := NBExternalArray ofType: #CXStringStruct.
	diagSet := self new handle: (self clang loadDiagnostics: aFile error: error errorString: errorString).
	^ {diagSet.
	error.
	errorString}
]

{ #category : #accessing }
CLDiagnosticSet >> at: anIndex [
	"Retrieve a diagnostic associated with the given CXDiagnosticSet. "

	| max |
	max := self size.
	(anIndex < 1 or: [ anIndex > max ])
		ifTrue: [ 
			^ SubscriptOutOfBounds
				signalFor: anIndex
				lowerBound: 1
				upperBound: max
				in: self ].
	^ CLDiagnostic new handle: (self clang getDiagnosticInSet: handle Index: anIndex - 1)
]

{ #category : #enumerating }
CLDiagnosticSet >> do: aBlock [

	1 to: self size do:
		[:index | aBlock value: (self at: index)]
]

{ #category : #accessing }
CLDiagnosticSet >> handle [
	^ handle
]

{ #category : #accessing }
CLDiagnosticSet >> handle: anObject [
	handle := anObject.
	handle ifNil: [ ^ self error: 'Invalid CLDiagnosticSet handle' ].
	NBExternalResourceManager addResource: self data: handle
]

{ #category : #accessing }
CLDiagnosticSet >> isEmpty [
	^self size = 0
]

{ #category : #accessing }
CLDiagnosticSet >> size [
	"Determine the number of diagnostics in a CXDiagnosticSet. "

	^ tally isNil
		ifTrue: [ tally := self clang getNumDiagnosticsInSet: handle ]
		ifFalse: [ tally ]
]
