Class {
	#name : #CXIdxEntityRefKindEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXIdxEntityRef_Direct',
		'CXIdxEntityRef_Implicit'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXIdxEntityRefKindEnum class >> enumDecl [
	^#(
	CXIdxEntityRef_Direct 1
	CXIdxEntityRef_Implicit 2
)
]
