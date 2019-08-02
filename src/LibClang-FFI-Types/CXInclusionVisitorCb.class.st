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
	^#(NBVoid (NBVoid * arg1, CXSourceLocationStruct * arg2, NBUInt32 arg3, NBVoid * arg4))
]
