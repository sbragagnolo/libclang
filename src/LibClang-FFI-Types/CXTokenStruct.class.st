Class {
	#name : #CXTokenStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXTokenStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXTokenStruct class >> fieldsDesc [
	^#(
	NBUInt32 int_data1;
	NBUInt32 int_data2;
	NBUInt32 int_data3;
	NBUInt32 int_data4;
	NBVoid * ptr_data;

	)
]

{ #category : #'nativeboost types' }
CXTokenStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
