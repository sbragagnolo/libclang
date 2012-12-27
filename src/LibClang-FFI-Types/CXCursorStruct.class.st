Class {
	#name : #CXCursorStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXCursorStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXCursorStruct class >> fieldsDesc [
	^#(
	CXCursorKindEnum kind;
	NBInt32 xdata;
	NBVoid * data1;
	NBVoid * data2;
	NBVoid * data3;

	)
]

{ #category : #'nativeboost types' }
CXCursorStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
