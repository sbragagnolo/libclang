Class {
	#name : #CXIndexHCb10,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb10 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb10 class >> fnSpec [
	^#(CXChildVisitResultEnum (CXCursorStruct arg1, CXCursorStruct arg2, FFIVoid * arg3))
]
