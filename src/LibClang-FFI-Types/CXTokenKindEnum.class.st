Class {
	#name : #CXTokenKindEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXToken_Comment',
		'CXToken_Identifier',
		'CXToken_Keyword',
		'CXToken_Literal',
		'CXToken_Punctuation'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXTokenKindEnum class >> enumDecl [
	^#(
	CXToken_Punctuation 0
	CXToken_Keyword 1
	CXToken_Identifier 2
	CXToken_Literal 3
	CXToken_Comment 4
)
]
