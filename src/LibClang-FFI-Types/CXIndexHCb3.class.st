Class {
	#name : #CXIndexHCb3,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb3 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb3 class >> fnSpec [
	^#(NBVoid * (NBVoid * arg1, NBVoid * arg2, NBVoid * arg3))
]
