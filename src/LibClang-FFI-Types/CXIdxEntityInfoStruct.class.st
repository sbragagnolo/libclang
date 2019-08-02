Class {
	#name : #CXIdxEntityInfoStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_KIND',
		'OFFSET_LANG',
		'OFFSET_NAME',
		'OFFSET_TEMPLATEKIND',
		'OFFSET_USR'
	],
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
	FFICharacterType * name;
	FFICharacterType * USR;
	CXCursor cursor;
	CXIdxAttrInfo * * attributes;
	FFIInt32 numAttributes;

	)
]
