Class {
	#name : #CXIdxIncludedFileInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxIncludedFileInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxIncludedFileInfoStruct class >> fieldsDesc [
	^#(
	CXIdxLoc hashLoc;
	FFICharacterType * filename;
	CXFile file;
	FFIInt32 isImport;
	FFIInt32 isAngled;

	)
]
