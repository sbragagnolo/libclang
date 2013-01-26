Class {
	#name : #CLIndexTest,
	#superclass : #TestCase,
	#category : #'LibClang-Tests'
}

{ #category : #'as yet unclassified' }
CLIndexTest >> testDefaultInstance [

	self assert: CLIndex default ~~ CLIndex default .
]
