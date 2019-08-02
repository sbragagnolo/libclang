Class {
	#name : #CXUnsavedFileStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXUnsavedFileStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXUnsavedFileStruct class >> fieldsDesc [
	^#(
	NBCharacterType * Filename;
	NBCharacterType * Contents;
	NBUInt32 Length;

	)
]
