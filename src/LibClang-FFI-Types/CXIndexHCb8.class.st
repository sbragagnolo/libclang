Class {
	#name : #CXIndexHCb8,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIndexHCb8 class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIndexHCb8 class >> fnSpec [
	^#(FFIVoid (FFIVoid * arg1, CXIdxEntityRefInfoStruct * arg2))
]
