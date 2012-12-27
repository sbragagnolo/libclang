Trait {
	#name : #TLibClang,
	#category : #'LibClang-Core'
}

{ #category : #'as yet unclassified' }
TLibClang classSide >> clang [
	^CXIndexH uniqueInstance 
]

{ #category : #'as yet unclassified' }
TLibClang >> clang [
	^ self class clang
]
