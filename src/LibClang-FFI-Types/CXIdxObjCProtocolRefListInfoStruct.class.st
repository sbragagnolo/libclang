Class {
	#name : #CXIdxObjCProtocolRefListInfoStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxObjCProtocolRefListInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxObjCProtocolRefListInfoStruct class >> fieldsDesc [
	^#(
	CXIdxObjCProtocolRefInfo * * protocols;
	NBUInt32 numProtocols;

	)
]

{ #category : #'nativeboost types' }
CXIdxObjCProtocolRefListInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
