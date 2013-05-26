Class {
	#name : #CXSourceLocationStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXSourceLocationStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXSourceLocationStruct class >> fieldsDesc [
	^#(
	NBVoid * ptr_data1;
	NBVoid * ptr_data2;
	NBUInt32 int_data;

	)
]

{ #category : #'nativeboost types' }
CXSourceLocationStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
