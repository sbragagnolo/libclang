Class {
	#name : #CXIdxIBOutletCollectionAttrInfoStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxIBOutletCollectionAttrInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
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

{ #category : #'nativeboost types' }
CXIdxIBOutletCollectionAttrInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
