Class {
	#name : #CXIndexHCb5,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb5 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb5 class >> fnSpec [
	^#(FFIVoid * (FFIVoid * arg1, CXIdxImportedASTFileInfoStruct * arg2))
]
