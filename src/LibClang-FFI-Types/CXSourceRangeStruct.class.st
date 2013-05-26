Class {
	#name : #CXSourceRangeStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXSourceRangeStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXSourceRangeStruct class >> fieldsDesc [
	^#(
	NBVoid * ptr_data1;
	NBVoid * ptr_data2;
	NBUInt32 begin_int_data;
	NBUInt32 end_int_data;

	)
]

{ #category : #'nativeboost types' }
CXSourceRangeStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
