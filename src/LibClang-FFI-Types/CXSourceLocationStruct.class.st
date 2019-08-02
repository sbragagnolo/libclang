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
	FFIVoid * ptr_data1;
	FFIVoid * ptr_data2;
	FFIUInt32 int_data;

	)
]
