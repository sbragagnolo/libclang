Class {
	#name : #CXIdxObjCCategoryDeclInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxObjCCategoryDeclInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxObjCCategoryDeclInfoStruct class >> fieldsDesc [
	^#(
	CXIdxObjCContainerDeclInfo * containerInfo;
	CXIdxEntityInfo * objcClass;
	CXCursor classCursor;
	CXIdxLoc classLoc;
	CXIdxObjCProtocolRefListInfo * protocols;

	)
]
