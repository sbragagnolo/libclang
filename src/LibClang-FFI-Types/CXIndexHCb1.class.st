Class {
	#name : #CXIndexHCb1,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb1 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb1 class >> fnSpec [
	^#(void (void * arg1, NBVoid * arg2, NBVoid * arg3))
]
