Class {
	#name : #CXIdxContainerInfoStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_CURSOR'
	],
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

{ #category : #'accessing structure variables' }
CXIdxContainerInfoStruct >> cursor [
	"This method was automatically generated"
	^ CXCursorStruct fromHandle: (handle referenceStructAt: OFFSET_CURSOR length: CXCursorStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxContainerInfoStruct >> cursor: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CURSOR put: anObject getHandle length: CXCursorStruct byteSize
]
