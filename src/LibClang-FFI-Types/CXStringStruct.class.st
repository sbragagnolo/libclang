Class {
	#name : #CXStringStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXStringStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXStringStruct class >> fieldsDesc [
	^#(
	NBVoid * data;
	NBUInt32 private_flags;

	)
]
