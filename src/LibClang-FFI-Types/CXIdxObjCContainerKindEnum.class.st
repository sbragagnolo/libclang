Class {
	#name : #CXIdxObjCContainerKindEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXIdxObjCContainer_ForwardRef',
		'CXIdxObjCContainer_Implementation',
		'CXIdxObjCContainer_Interface'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxObjCContainerKindEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXIdxObjCContainerKindEnum class >> enumDecl [
	^#(
	CXIdxObjCContainer_ForwardRef 0
	CXIdxObjCContainer_Interface 1
	CXIdxObjCContainer_Implementation 2
)
]
