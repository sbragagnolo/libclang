Class {
	#name : #CXIndexHTest,
	#superclass : #TestCase,
	#category : #'LibClang-Tests'
}

{ #category : #'as yet unclassified' }
CXIndexHTest >> testClangVersion [

	self assert: CXIndexH  clangVersion = 'clang version 3.1 (tags/RELEASE_31/final 167652) (llvm/tags/RELEASE_31/final 167654)'
]

{ #category : #'as yet unclassified' }
CXIndexHTest >> testUniqueInstance [

	self assert: CXIndexH uniqueInstance == CXIndexH uniqueInstance.
]
