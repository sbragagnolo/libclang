Class {
	#name : #CXTypeStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXTypeStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXTypeStruct class >> fieldsDesc [
	^#(
	CXTypeKindEnum kind;
	FFIVoid * data1;
	FFIVoid * data2;

	)
]
