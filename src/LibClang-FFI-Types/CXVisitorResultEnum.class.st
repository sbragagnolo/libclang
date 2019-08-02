Class {
	#name : #CXVisitorResultEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXVisit_Break',
		'CXVisit_Continue'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXVisitorResultEnum class >> enumDecl [
	^#(
	CXVisit_Break 0
	CXVisit_Continue 1
)
]
