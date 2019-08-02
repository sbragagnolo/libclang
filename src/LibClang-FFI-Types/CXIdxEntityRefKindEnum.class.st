Class {
	#name : #CXIdxEntityRefKindEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXIdxEntityRef_Direct',
		'CXIdxEntityRef_Implicit'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxEntityRefKindEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXIdxEntityRefKindEnum class >> enumDecl [
	^#(
	CXIdxEntityRef_Direct 1
	CXIdxEntityRef_Implicit 2
)
]
