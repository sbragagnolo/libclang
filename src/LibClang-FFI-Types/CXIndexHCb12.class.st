Class {
	#name : #CXIndexHCb12,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb12 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb12 class >> fnSpec [
	^#(FFIVoid (FFIVoid * arg1))
]
