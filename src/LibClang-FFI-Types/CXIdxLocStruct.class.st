Class {
	#name : #CXIdxLocStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxLocStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxLocStruct class >> fieldsDesc [
	^#(
	FFIVoid * ptr_data1;
	FFIVoid * ptr_data2;
	FFIUInt32 int_data;

	)
]
