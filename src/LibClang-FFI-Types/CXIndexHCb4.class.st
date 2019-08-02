Class {
	#name : #CXIndexHCb4,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb4 class >> fnSpec [
	^#(NBVoid * (NBVoid * arg1, CXIdxIncludedFileInfoStruct * arg2))
]

{ #category : #'nativeboost types' }
CXIndexHCb4 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
