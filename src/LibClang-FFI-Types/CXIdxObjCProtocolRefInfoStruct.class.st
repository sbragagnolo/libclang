Class {
	#name : #CXIdxObjCProtocolRefInfoStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxObjCProtocolRefInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxObjCProtocolRefInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityInfo * protocol;
	CXCursor cursor;
	CXIdxLoc loc;

	)
]

{ #category : #'nativeboost types' }
CXIdxObjCProtocolRefInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
