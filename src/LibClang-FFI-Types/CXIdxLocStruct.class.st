Class {
	#name : #CXIdxLocStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxLocStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxLocStruct class >> fieldsDesc [
	^#(
	NBVoid * ptr_data1;
	NBVoid * ptr_data2;
	NBUInt32 int_data;

	)
]

{ #category : #'nativeboost types' }
CXIdxLocStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
