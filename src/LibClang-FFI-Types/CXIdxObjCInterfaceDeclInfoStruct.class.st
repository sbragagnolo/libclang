Class {
	#name : #CXIdxObjCInterfaceDeclInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxObjCInterfaceDeclInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxObjCInterfaceDeclInfoStruct class >> fieldsDesc [
	^#(
	CXIdxObjCContainerDeclInfo * containerInfo;
	CXIdxBaseClassInfo * superInfo;
	CXIdxObjCProtocolRefListInfo * protocols;

	)
]
