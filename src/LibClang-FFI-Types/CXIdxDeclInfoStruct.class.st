Class {
	#name : #CXIdxDeclInfoStruct,
	#superclass : #FFIExternalStructure,
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
	NBInt32 isRedeclaration;
	NBInt32 isDefinition;
	NBInt32 isContainer;
	CXIdxContainerInfo * declAsContainer;
	NBInt32 isImplicit;
	CXIdxAttrInfo * * attributes;
	NBUInt32 numAttributes;

	)
]
