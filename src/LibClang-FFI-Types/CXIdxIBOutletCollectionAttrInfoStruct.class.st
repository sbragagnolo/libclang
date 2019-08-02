Class {
	#name : #CXIdxIBOutletCollectionAttrInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxIBOutletCollectionAttrInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxIBOutletCollectionAttrInfoStruct class >> fieldsDesc [
	^#(
	CXIdxAttrInfo * attrInfo;
	CXIdxEntityInfo * objcClass;
	CXCursor classCursor;
	CXIdxLoc classLoc;

	)
]
