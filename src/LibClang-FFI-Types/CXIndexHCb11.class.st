Class {
	#name : #CXIndexHCb11,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb11 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb11 class >> fnSpec [
	^#(CXVisitorResultEnum (NBVoid * arg1, CXCursorStruct arg2, CXSourceRangeStruct arg3))
]
