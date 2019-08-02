Class {
	#name : #CXChildVisitResultEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXChildVisit_Break',
		'CXChildVisit_Continue',
		'CXChildVisit_Recurse'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXChildVisitResultEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXChildVisitResultEnum class >> enumDecl [
	^#(
	CXChildVisit_Break 0
	CXChildVisit_Continue 1
	CXChildVisit_Recurse 2
)
]
