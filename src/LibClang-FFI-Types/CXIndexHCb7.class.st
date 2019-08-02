Class {
	#name : #CXIndexHCb7,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb7 class >> fnSpec [
	^#(NBVoid (NBVoid * arg1, CXIdxDeclInfoStruct * arg2))
]

{ #category : #'nativeboost types' }
CXIndexHCb7 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
