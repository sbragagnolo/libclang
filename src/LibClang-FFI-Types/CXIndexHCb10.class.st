Class {
	#name : #CXIndexHCb10,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb10 class >> fnSpec [
	^#(CXChildVisitResultEnum (CXCursorStruct arg1, CXCursorStruct arg2, NBVoid * arg3))
]

{ #category : #'nativeboost types' }
CXIndexHCb10 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
