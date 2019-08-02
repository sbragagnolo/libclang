Class {
	#name : #CXIndexHCb9,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb9 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb9 class >> fnSpec [
	^#(NBVoid (NBVoid * arg1, CXSourceLocationStruct * arg2, NBUInt32 arg3, NBVoid * arg4))
]
