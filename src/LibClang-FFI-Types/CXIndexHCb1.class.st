Class {
	#name : #CXIndexHCb1,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb1 class >> fnSpec [
	^#(NBVoid (NBVoid * arg1, NBVoid * arg2, NBVoid * arg3))
]

{ #category : #'nativeboost types' }
CXIndexHCb1 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
