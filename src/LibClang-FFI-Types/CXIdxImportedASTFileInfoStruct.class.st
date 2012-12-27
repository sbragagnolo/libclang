Class {
	#name : #CXIdxImportedASTFileInfoStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxImportedASTFileInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxImportedASTFileInfoStruct class >> fieldsDesc [
	^#(
	CXFile file;
	CXIdxLoc loc;
	NBInt32 isModule;

	)
]

{ #category : #'nativeboost types' }
CXIdxImportedASTFileInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
