Class {
	#name : #CXCursorStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXCursorStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXCursorStruct class >> fieldsDesc [
	^#(
	CXCursorKindEnum kind;
	FFIInt32 xdata;
	NBVoid * data1;
	NBVoid * data2;
	NBVoid * data3;

	)
]
