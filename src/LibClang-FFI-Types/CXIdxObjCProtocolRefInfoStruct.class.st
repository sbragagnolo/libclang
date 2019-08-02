Class {
	#name : #CXIdxObjCProtocolRefInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxObjCProtocolRefInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxObjCProtocolRefInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityInfo * protocol;
	CXCursor cursor;
	CXIdxLoc loc;

	)
]
