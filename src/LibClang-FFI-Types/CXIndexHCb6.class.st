Class {
	#name : #CXIndexHCb6,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb6 class >> fnSpec [
	^#(NBVoid * (NBVoid * arg1, NBVoid * arg2))
]

{ #category : #'nativeboost types' }
CXIndexHCb6 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
