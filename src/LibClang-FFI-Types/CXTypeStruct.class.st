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
	NBVoid * data1;
	NBVoid * data2;

	)
]
