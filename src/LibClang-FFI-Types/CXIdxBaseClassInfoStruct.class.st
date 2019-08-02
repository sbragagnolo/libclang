Class {
	#name : #CXIdxBaseClassInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxBaseClassInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxBaseClassInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityInfo * base;
	CXCursor cursor;
	CXIdxLoc loc;

	)
]
