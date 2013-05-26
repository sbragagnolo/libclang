Class {
	#name : #CXIdxIncludedFileInfoStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxIncludedFileInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
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

{ #category : #'nativeboost types' }
CXIdxIncludedFileInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
