Class {
	#name : #CXIdxDeclInfoStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxDeclInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
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

{ #category : #'nativeboost types' }
CXIdxDeclInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
