Class {
	#name : #CXIndexHCb9,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXIndexHCb9 class >> fnSpec [
	^#(NBVoid (NBVoid * arg1, CXSourceLocationStruct * arg2, NBUInt32 arg3, NBVoid * arg4))
]

{ #category : #'nativeboost types' }
CXIndexHCb9 class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
