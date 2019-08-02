Class {
	#name : #CXTokenStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_INT_DATA1',
		'OFFSET_INT_DATA2',
		'OFFSET_INT_DATA3',
		'OFFSET_INT_DATA4',
		'OFFSET_PTR_DATA'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXTokenStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXTokenStruct class >> fieldsDesc [
	^#(
	FFIUInt32 int_data1;
	FFIUInt32 int_data2;
	FFIUInt32 int_data3;
	FFIUInt32 int_data4;
	FFIVoid * ptr_data;

	)
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> int_data1 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_INT_DATA1
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> int_data1: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_INT_DATA1 put: anObject
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> int_data2 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_INT_DATA2
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> int_data2: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_INT_DATA2 put: anObject
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> int_data3 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_INT_DATA3
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> int_data3: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_INT_DATA3 put: anObject
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> int_data4 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_INT_DATA4
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> int_data4: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_INT_DATA4 put: anObject
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> ptr_data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PTR_DATA) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
CXTokenStruct >> ptr_data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PTR_DATA put: anObject getHandle.
]
