Class {
	#name : #CXIndexHTest,
	#superclass : #TestCase,
	#category : #'LibClang-Tests'
}

{ #category : #'as yet unclassified' }
CXIndexHTest >> testClangVersion [

	self assert: (CXIndexH  clangVersion beginsWith: 'clang version 3.1')
]

{ #category : #'as yet unclassified' }
CXIndexHTest >> testUniqueInstance [

	self assert: CXIndexH uniqueInstance == CXIndexH uniqueInstance.
]
