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
	FFIVoid * ptr_data1;
	FFIVoid * ptr_data2;
	FFIUInt32 begin_int_data;
	FFIUInt32 end_int_data;

	)
]
