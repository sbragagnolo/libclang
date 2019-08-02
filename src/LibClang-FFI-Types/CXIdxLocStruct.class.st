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
	NBVoid * ptr_data1;
	NBVoid * ptr_data2;
	NBUInt32 int_data;

	)
]
