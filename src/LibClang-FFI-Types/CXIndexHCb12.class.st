Class {
	#name : #CXIndexHCb12,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb12 class >> fnSpec [
	^#(NBVoid (NBVoid * arg1))
]

{ #category : #'nativeboost types' }
CXIndexHCb12 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
