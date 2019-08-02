Class {
	#name : #CXIdxEntityRefInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxEntityRefInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxEntityRefInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityRefKind kind;
	CXCursor cursor;
	CXIdxLoc loc;
	CXIdxEntityInfo * referencedEntity;
	CXIdxEntityInfo * parentEntity;
	CXIdxContainerInfo * container;

	)
]
