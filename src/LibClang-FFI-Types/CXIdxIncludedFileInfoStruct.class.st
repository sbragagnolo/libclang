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
	NBCharacterType * filename;
	CXFile file;
	NBInt32 isImport;
	NBInt32 isAngled;

	)
]
