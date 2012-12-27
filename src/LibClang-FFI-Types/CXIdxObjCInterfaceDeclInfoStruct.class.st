Class {
	#name : #CXIdxObjCInterfaceDeclInfoStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxObjCInterfaceDeclInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxObjCInterfaceDeclInfoStruct class >> fieldsDesc [
	^#(
	CXIdxObjCContainerDeclInfo * containerInfo;
	CXIdxBaseClassInfo * superInfo;
	CXIdxObjCProtocolRefListInfo * protocols;

	)
]

{ #category : #'nativeboost types' }
CXIdxObjCInterfaceDeclInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
