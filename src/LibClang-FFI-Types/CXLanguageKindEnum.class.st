Class {
	#name : #CXLanguageKindEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXLanguage_C',
		'CXLanguage_CPlusPlus',
		'CXLanguage_Invalid',
		'CXLanguage_ObjC'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXLanguageKindEnum class >> enumDecl [
	^#(
	CXLanguage_Invalid 0
	CXLanguage_C 1
	CXLanguage_ObjC 2
	CXLanguage_CPlusPlus 3
)
]
