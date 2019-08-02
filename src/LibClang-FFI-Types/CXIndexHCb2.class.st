Class {
	#name : #CXIndexHCb2,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb2 class >> fnSpec [
	^#(NBInt32 (NBVoid * arg1, NBVoid * arg2))
]

{ #category : #'nativeboost types' }
CXIndexHCb2 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
