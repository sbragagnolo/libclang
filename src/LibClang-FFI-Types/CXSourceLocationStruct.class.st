Class {
	#name : #CXSourceLocationStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXSourceLocationStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXSourceLocationStruct class >> fieldsDesc [
	^#(
	NBVoid * ptr_data1;
	NBVoid * ptr_data2;
	NBUInt32 int_data;

	)
]
