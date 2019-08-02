Class {
	#name : #CXIdxEntityRefInfoStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxEntityRefInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
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

{ #category : #'nativeboost types' }
CXIdxEntityRefInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
