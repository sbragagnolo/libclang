Class {
	#name : #CLTranslationUnit,
	#superclass : #Object,
	#traits : 'TLibClang',
	#classTraits : 'TLibClang classTrait',
	#instVars : [
		'handle',
		'filename',
		'index',
		'options',
		'numDiagnostics'
	],
	#category : #'LibClang-Core'
}

{ #category : #finalization }
CLTranslationUnit class >> finalizeResourceData: aHandle [
	self clang disposeTranslationUnit: aHandle
]

{ #category : #'as yet unclassified' }
CLTranslationUnit class >> handle: aHandle index: aCLIndex filename: aFileName [
	^ self new
		handle: aHandle;
		index: aCLIndex;
		filename: aFileName
]

{ #category : #'as yet unclassified' }
CLTranslationUnit >> cursor [
	^ self clang getTranslationUnitCursor: handle
]

{ #category : #diagnostics }
CLTranslationUnit >> diagnosticAt: anIndex [
	| max |
	max := self numDiagnostics.
	(anIndex < 1 or: [ anIndex >= max ])
		ifTrue: [ 
			^ SubscriptOutOfBounds
				signalFor: anIndex
				lowerBound: 1
				upperBound: max 
				in: self ].
	^ CLDiagnostic new handle: (self clang getDiagnostic: handle Index: anIndex - 1)
]

{ #category : #diagnostics }
CLTranslationUnit >> diagnosticSet [
	^CLDiagnosticSet new handle: (self clang getDiagnosticSetFromTU: handle)
]

{ #category : #accessing }
CLTranslationUnit >> filename [
	^ filename
]

{ #category : #accessing }
CLTranslationUnit >> filename: anObject [
	filename := anObject
]

{ #category : #accessing }
CLTranslationUnit >> handle [
	^ handle
]

{ #category : #accessing }
CLTranslationUnit >> handle: anObject [
	handle := anObject.
	handle ifNil: [ ^ self error: 'Invalid TranslationUnit handle' ].
	NBExternalResourceManager addResource: self data: handle
]

{ #category : #accessing }
CLTranslationUnit >> index [
	^ index
]

{ #category : #accessing }
CLTranslationUnit >> index: anObject [
	index := anObject
]

{ #category : #diagnostics }
CLTranslationUnit >> numDiagnostics [
	^ numDiagnostics isNil
		ifTrue: [ numDiagnostics := self clang getNumDiagnostics: handle ]
		ifFalse: [ numDiagnostics ]
]

{ #category : #accessing }
CLTranslationUnit >> options [
	^ options
]

{ #category : #accessing }
CLTranslationUnit >> options: anObject [
	options := anObject
]

{ #category : #'as yet unclassified' }
CLTranslationUnit >> spelling [
	| cxstr str |
	cxstr := self clang getTranslationUnitSpelling: handle.
	str := cxstr asString.
	cxstr disposeString. "free the cxstring"
	^ str
]
