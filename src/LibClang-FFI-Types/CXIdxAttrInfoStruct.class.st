Class {
	#name : #CXIdxAttrInfoStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxAttrInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxAttrInfoStruct class >> fieldsDesc [
	^#(
	CXIdxAttrKind kind;
	CXCursor cursor;
	CXIdxLoc loc;

	)
]

{ #category : #'nativeboost types' }
CXIdxAttrInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
