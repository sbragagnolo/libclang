Class {
	#name : #CXIdxObjCContainerDeclInfoStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxObjCContainerDeclInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxObjCContainerDeclInfoStruct class >> fieldsDesc [
	^#(
	CXIdxDeclInfo * declInfo;
	CXIdxObjCContainerKind kind;

	)
]

{ #category : #'nativeboost types' }
CXIdxObjCContainerDeclInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
