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
	FFICharacterType * Filename;
	FFICharacterType * Contents;
	FFIUInt32 Length;

	)
]
