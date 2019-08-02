Class {
	#name : #CXIdxObjCProtocolRefListInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxObjCProtocolRefListInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxObjCProtocolRefListInfoStruct class >> fieldsDesc [
	^#(
	CXIdxObjCProtocolRefInfo * * protocols;
	NBUInt32 numProtocols;

	)
]
