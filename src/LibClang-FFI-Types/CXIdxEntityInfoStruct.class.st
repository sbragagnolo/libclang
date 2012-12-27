Class {
	#name : #CXIdxEntityInfoStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxEntityInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxEntityInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityKind kind;
	CXIdxEntityCXXTemplateKind templateKind;
	CXIdxEntityLanguage lang;
	NBCharacterType * name;
	NBCharacterType * USR;
	CXCursor cursor;
	CXIdxAttrInfo * * attributes;
	NBUInt32 numAttributes;

	)
]

{ #category : #'nativeboost types' }
CXIdxEntityInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
