Class {
	#name : #CXSourceRangeStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXSourceRangeStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
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
