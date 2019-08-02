Class {
	#name : #CXIndexHCb4,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb4 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb4 class >> fnSpec [
	^#(NBVoid * (NBVoid * arg1, CXIdxIncludedFileInfoStruct * arg2))
]
