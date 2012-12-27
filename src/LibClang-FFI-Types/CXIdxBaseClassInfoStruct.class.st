Class {
	#name : #CXIdxBaseClassInfoStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxBaseClassInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxBaseClassInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityInfo * base;
	CXCursor cursor;
	CXIdxLoc loc;

	)
]

{ #category : #'nativeboost types' }
CXIdxBaseClassInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
