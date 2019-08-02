Class {
	#name : #CXTokenStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXTokenStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
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
