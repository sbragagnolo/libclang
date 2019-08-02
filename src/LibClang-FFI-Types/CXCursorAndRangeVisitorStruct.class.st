Class {
	#name : #CXCursorAndRangeVisitorStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXCursorAndRangeVisitorStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXCursorAndRangeVisitorStruct class >> fieldsDesc [
	^#(
	FFIVoid * context;
	CXIndexHCb11 visit;

	)
]
