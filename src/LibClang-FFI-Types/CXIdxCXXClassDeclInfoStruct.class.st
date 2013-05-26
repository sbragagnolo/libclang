Class {
	#name : #CXIdxCXXClassDeclInfoStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxCXXClassDeclInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxCXXClassDeclInfoStruct class >> fieldsDesc [
	^#(
	CXIdxDeclInfo * declInfo;
	CXIdxBaseClassInfo * * bases;
	NBUInt32 numBases;

	)
]

{ #category : #'nativeboost types' }
CXIdxCXXClassDeclInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
