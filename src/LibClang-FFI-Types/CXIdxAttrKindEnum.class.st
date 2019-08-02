Class {
	#name : #CXIdxAttrKindEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXIdxAttr_IBAction',
		'CXIdxAttr_IBOutlet',
		'CXIdxAttr_IBOutletCollection',
		'CXIdxAttr_Unexposed'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXIdxAttrKindEnum class >> enumDecl [
	^#(
	CXIdxAttr_Unexposed 0
	CXIdxAttr_IBAction 1
	CXIdxAttr_IBOutlet 2
	CXIdxAttr_IBOutletCollection 3
)
]
