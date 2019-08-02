Class {
	#name : #CXIdxEntityCXXTemplateKindEnum,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'CXIdxEntity_NonTemplate',
		'CXIdxEntity_Template',
		'CXIdxEntity_TemplatePartialSpecialization',
		'CXIdxEntity_TemplateSpecialization'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXIdxEntityCXXTemplateKindEnum class >> enumDecl [
	^#(
	CXIdxEntity_NonTemplate 0
	CXIdxEntity_Template 1
	CXIdxEntity_TemplatePartialSpecialization 2
	CXIdxEntity_TemplateSpecialization 3
)
]
