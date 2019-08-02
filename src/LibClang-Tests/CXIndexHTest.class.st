Class {
	#name : #CXIndexHTest,
	#superclass : #TestCase,
	#category : #'LibClang-Tests'
}

{ #category : #'as yet unclassified' }
CXIndexHTest >> testClangVersion [

	self assert: (CXIndexH  clangVersion beginsWith: 'clang version 3.8')
]

{ #category : #'as yet unclassified' }
CXIndexHTest >> testUniqueInstance [

	self assert: CXIndexH uniqueInstance == CXIndexH uniqueInstance.
]
