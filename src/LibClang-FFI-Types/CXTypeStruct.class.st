Class {
	#name : #CXTypeStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXTypeStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXTypeStruct class >> fieldsDesc [
	^#(
	CXTypeKindEnum kind;
	NBVoid * data1;
	NBVoid * data2;

	)
]

{ #category : #'nativeboost types' }
CXTypeStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
