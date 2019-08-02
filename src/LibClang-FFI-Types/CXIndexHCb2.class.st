Class {
	#name : #CXIndexHCb2,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb2 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb2 class >> fnSpec [
	^#(FFIInt32 (FFIVoid * arg1, FFIVoid * arg2))
]
