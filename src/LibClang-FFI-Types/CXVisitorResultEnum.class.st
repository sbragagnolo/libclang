Class {
	#name : #CXVisitorResultEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXVisit_Break',
		'CXVisit_Continue'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXVisitorResultEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXVisitorResultEnum class >> enumDecl [
	^#(
	CXVisit_Break 0
	CXVisit_Continue 1
)
]
