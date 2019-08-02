Class {
	#name : #CXIdxImportedASTFileInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxImportedASTFileInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxImportedASTFileInfoStruct class >> fieldsDesc [
	^#(
	CXFile file;
	CXIdxLoc loc;
	NBInt32 isModule;

	)
]
