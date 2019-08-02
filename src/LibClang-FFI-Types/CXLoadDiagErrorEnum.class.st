Class {
	#name : #CXLoadDiagErrorEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXLoadDiag_CannotLoad',
		'CXLoadDiag_InvalidFile',
		'CXLoadDiag_None',
		'CXLoadDiag_Unknown'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXLoadDiagErrorEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXLoadDiagErrorEnum class >> enumDecl [
	^#(
	CXLoadDiag_None 0
	CXLoadDiag_Unknown 1
	CXLoadDiag_CannotLoad 2
	CXLoadDiag_InvalidFile 3
)
]
