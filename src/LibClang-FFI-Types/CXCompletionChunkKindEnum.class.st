Class {
	#name : #CXCompletionChunkKindEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXCompletionChunk_Colon',
		'CXCompletionChunk_Comma',
		'CXCompletionChunk_CurrentParameter',
		'CXCompletionChunk_Equal',
		'CXCompletionChunk_HorizontalSpace',
		'CXCompletionChunk_Informative',
		'CXCompletionChunk_LeftAngle',
		'CXCompletionChunk_LeftBrace',
		'CXCompletionChunk_LeftBracket',
		'CXCompletionChunk_LeftParen',
		'CXCompletionChunk_Optional',
		'CXCompletionChunk_Placeholder',
		'CXCompletionChunk_ResultType',
		'CXCompletionChunk_RightAngle',
		'CXCompletionChunk_RightBrace',
		'CXCompletionChunk_RightBracket',
		'CXCompletionChunk_RightParen',
		'CXCompletionChunk_SemiColon',
		'CXCompletionChunk_Text',
		'CXCompletionChunk_TypedText',
		'CXCompletionChunk_VerticalSpace'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXCompletionChunkKindEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXCompletionChunkKindEnum class >> enumDecl [
	^#(
	CXCompletionChunk_Optional 0
	CXCompletionChunk_TypedText 1
	CXCompletionChunk_Text 2
	CXCompletionChunk_Placeholder 3
	CXCompletionChunk_Informative 4
	CXCompletionChunk_CurrentParameter 5
	CXCompletionChunk_LeftParen 6
	CXCompletionChunk_RightParen 7
	CXCompletionChunk_LeftBracket 8
	CXCompletionChunk_RightBracket 9
	CXCompletionChunk_LeftBrace 10
	CXCompletionChunk_RightBrace 11
	CXCompletionChunk_LeftAngle 12
	CXCompletionChunk_RightAngle 13
	CXCompletionChunk_Comma 14
	CXCompletionChunk_ResultType 15
	CXCompletionChunk_Colon 16
	CXCompletionChunk_SemiColon 17
	CXCompletionChunk_Equal 18
	CXCompletionChunk_HorizontalSpace 19
	CXCompletionChunk_VerticalSpace 20
)
]
