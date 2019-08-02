Class {
	#name : #CXUnsavedFileStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXUnsavedFileStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXUnsavedFileStruct class >> fieldsDesc [
	^#(
	NBCharacterType * Filename;
	NBCharacterType * Contents;
	NBUInt32 Length;

	)
]

{ #category : #'nativeboost types' }
CXUnsavedFileStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
