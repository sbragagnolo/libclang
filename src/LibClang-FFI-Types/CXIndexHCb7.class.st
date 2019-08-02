Class {
	#name : #CXIndexHCb7,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb7 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb7 class >> fnSpec [
	^#(NBVoid (NBVoid * arg1, CXIdxDeclInfoStruct * arg2))
]
