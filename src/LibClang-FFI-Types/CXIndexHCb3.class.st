Class {
	#name : #CXIndexHCb3,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb3 class >> fnSpec [
	^#(NBVoid * (NBVoid * arg1, NBVoid * arg2, NBVoid * arg3))
]

{ #category : #'nativeboost types' }
CXIndexHCb3 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
