Class {
	#name : #CXIdxEntityInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxEntityInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
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
