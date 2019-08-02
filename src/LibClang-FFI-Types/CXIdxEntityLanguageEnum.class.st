Class {
	#name : #CXIdxEntityLanguageEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXIdxEntityLang_C',
		'CXIdxEntityLang_CXX',
		'CXIdxEntityLang_None',
		'CXIdxEntityLang_ObjC'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXIdxEntityLanguageEnum class >> enumDecl [
	^#(
	CXIdxEntityLang_None 0
	CXIdxEntityLang_C 1
	CXIdxEntityLang_ObjC 2
	CXIdxEntityLang_CXX 3
)
]
