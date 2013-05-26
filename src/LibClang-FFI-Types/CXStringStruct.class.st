Class {
	#name : #CXStringStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXStringStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXStringStruct class >> fieldsDesc [
	^#(
	NBVoid * data;
	NBUInt32 private_flags;

	)
]

{ #category : #'nativeboost types' }
CXStringStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
