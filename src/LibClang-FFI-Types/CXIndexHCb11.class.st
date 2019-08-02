Class {
	#name : #CXIndexHCb11,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb11 class >> fnSpec [
	^#(CXVisitorResultEnum (NBVoid * arg1, CXCursorStruct arg2, CXSourceRangeStruct arg3))
]

{ #category : #'nativeboost types' }
CXIndexHCb11 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
