Class {
	#name : #CXInclusionVisitorCb,
	#superclass : #FFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXInclusionVisitorCb class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXInclusionVisitorCb class >> fnSpec [
	^#(FFIVoid (FFIVoid * arg1, CXSourceLocationStruct * arg2, FFIUInt32 arg3, FFIVoid * arg4))
]
