Class {
	#name : #CXCursorAndRangeVisitorStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXCursorAndRangeVisitorStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXCursorAndRangeVisitorStruct class >> fieldsDesc [
	^#(
	NBVoid * context;
	CXIndexHCb11 visit;

	)
]

{ #category : #'nativeboost types' }
CXCursorAndRangeVisitorStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
