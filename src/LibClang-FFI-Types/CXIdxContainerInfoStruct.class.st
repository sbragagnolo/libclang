Class {
	#name : #CXIdxContainerInfoStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxContainerInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxContainerInfoStruct class >> fieldsDesc [
	^#(
	CXCursor cursor;

	)
]

{ #category : #'nativeboost types' }
CXIdxContainerInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
