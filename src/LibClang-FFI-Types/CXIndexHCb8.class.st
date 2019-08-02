Class {
	#name : #CXIndexHCb8,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb8 class >> fnSpec [
	^#(NBVoid (NBVoid * arg1, CXIdxEntityRefInfoStruct * arg2))
]

{ #category : #'nativeboost types' }
CXIndexHCb8 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
