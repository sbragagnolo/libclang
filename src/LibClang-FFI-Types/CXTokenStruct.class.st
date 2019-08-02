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
	FFIUInt32 int_data1;
	FFIUInt32 int_data2;
	FFIUInt32 int_data3;
	FFIUInt32 int_data4;
	FFIVoid * ptr_data;

	)
]
