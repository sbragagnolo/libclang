Class {
	#name : #CXIdxEntityLanguageEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXIdxEntityLang_C',
		'CXIdxEntityLang_CXX',
		'CXIdxEntityLang_None',
		'CXIdxEntityLang_ObjC'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxEntityLanguageEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXIdxEntityLanguageEnum class >> enumDecl [
	^#(
	CXIdxEntityLang_None 0
	CXIdxEntityLang_C 1
	CXIdxEntityLang_ObjC 2
	CXIdxEntityLang_CXX 3
)
]
