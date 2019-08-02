Class {
	#name : #CXLoadDiagErrorEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXLoadDiag_CannotLoad',
		'CXLoadDiag_InvalidFile',
		'CXLoadDiag_None',
		'CXLoadDiag_Unknown'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXLoadDiagErrorEnum class >> enumDecl [
	^#(
	CXLoadDiag_None 0
	CXLoadDiag_Unknown 1
	CXLoadDiag_CannotLoad 2
	CXLoadDiag_InvalidFile 3
)
]
