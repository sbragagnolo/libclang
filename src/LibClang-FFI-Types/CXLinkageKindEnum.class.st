Class {
	#name : #CXLinkageKindEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXLinkage_External',
		'CXLinkage_Internal',
		'CXLinkage_Invalid',
		'CXLinkage_NoLinkage',
		'CXLinkage_UniqueExternal'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXLinkageKindEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXLinkageKindEnum class >> enumDecl [
	^#(
	CXLinkage_Invalid 0
	CXLinkage_NoLinkage 1
	CXLinkage_Internal 2
	CXLinkage_UniqueExternal 3
	CXLinkage_External 4
)
]
