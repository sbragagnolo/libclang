Class {
	#name : #CXIndexHCb5,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb5 class >> fnSpec [
	^#(NBVoid * (NBVoid * arg1, CXIdxImportedASTFileInfoStruct * arg2))
]

{ #category : #'nativeboost types' }
CXIndexHCb5 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
