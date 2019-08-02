Class {
	#name : #CXIdxDeclInfoStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ENTITYINFO'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxDeclInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxDeclInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityInfo * entityInfo;
	CXCursor cursor;
	CXIdxLoc loc;
	CXIdxContainerInfo * semanticContainer;
	CXIdxContainerInfo * lexicalContainer;
	FFIInt32 isRedeclaration;
	FFIInt32 isDefinition;
	FFIInt32 isContainer;
	CXIdxContainerInfo * declAsContainer;
	FFIInt32 isImplicit;
	CXIdxAttrInfo * * attributes;
	FFIInt32 numAttributes;

	)
]
