Class {
	#name : #CXLanguageKindEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXLanguage_C',
		'CXLanguage_CPlusPlus',
		'CXLanguage_Invalid',
		'CXLanguage_ObjC'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXLanguageKindEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXLanguageKindEnum class >> enumDecl [
	^#(
	CXLanguage_Invalid 0
	CXLanguage_C 1
	CXLanguage_ObjC 2
	CXLanguage_CPlusPlus 3
)
]
