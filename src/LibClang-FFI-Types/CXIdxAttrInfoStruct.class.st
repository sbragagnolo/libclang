Class {
	#name : #CXIdxAttrInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxAttrInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxAttrInfoStruct class >> fieldsDesc [
	^#(
	CXIdxAttrKind kind;
	CXCursor cursor;
	CXIdxLoc loc;

	)
]
