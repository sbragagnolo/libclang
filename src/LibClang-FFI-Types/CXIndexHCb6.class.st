Class {
	#name : #CXIndexHCb6,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb6 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb6 class >> fnSpec [
	^#(NBVoid * (NBVoid * arg1, NBVoid * arg2))
]
