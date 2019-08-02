Class {
	#name : #CXCXXAccessSpecifierEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CX_CXXInvalidAccessSpecifier',
		'CX_CXXPrivate',
		'CX_CXXProtected',
		'CX_CXXPublic'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXCXXAccessSpecifierEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXCXXAccessSpecifierEnum class >> enumDecl [
	^#(
	CX_CXXInvalidAccessSpecifier 0
	CX_CXXPublic 1
	CX_CXXProtected 2
	CX_CXXPrivate 3
)
]
