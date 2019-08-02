Class {
	#name : #CXIdxContainerInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxContainerInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxContainerInfoStruct class >> fieldsDesc [
	^#(
	CXCursor cursor;

	)
]
