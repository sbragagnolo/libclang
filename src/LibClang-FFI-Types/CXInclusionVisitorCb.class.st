Class {
	#name : #CXInclusionVisitorCb,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXInclusionVisitorCb class >> fnSpec [
	^#(NBVoid (NBVoid * arg1, CXSourceLocationStruct * arg2, NBUInt32 arg3, NBVoid * arg4))
]

{ #category : #'nativeboost types' }
CXInclusionVisitorCb class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
