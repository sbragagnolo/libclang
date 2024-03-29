Class {
	#name : #CXSourceLocationStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_INT_DATA',
		'OFFSET_PTR_DATA1',
		'OFFSET_PTR_DATA2'
	],
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

{ #category : #'accessing structure variables' }
CXSourceLocationStruct >> int_data [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_INT_DATA
]

{ #category : #'accessing structure variables' }
CXSourceLocationStruct >> int_data: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_INT_DATA put: anObject
]

{ #category : #'accessing structure variables' }
CXSourceLocationStruct >> ptr_data1 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PTR_DATA1) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
CXSourceLocationStruct >> ptr_data1: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PTR_DATA1 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXSourceLocationStruct >> ptr_data2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PTR_DATA2) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
CXSourceLocationStruct >> ptr_data2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PTR_DATA2 put: anObject getHandle.
]
