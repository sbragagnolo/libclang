Class {
	#name : #CXCursorVisitorCb,
	#superclass : #NBFFICallback,
	#category : #'LibClang-FFI-Types'
}

{ #category : #accessing }
CXCursorVisitorCb class >> fnSpec [
	^#(CXChildVisitResultEnum (CXCursorStruct arg1, CXCursorStruct arg2, NBVoid * arg3))
]

{ #category : #'nativeboost types' }
CXCursorVisitorCb class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
