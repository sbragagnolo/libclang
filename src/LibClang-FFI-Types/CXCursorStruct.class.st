Class {
	#name : #CXCursorStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_DATA1',
		'OFFSET_DATA2',
		'OFFSET_DATA3',
		'OFFSET_KIND',
		'OFFSET_XDATA'
	],
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
	FFIVoid * data1;
	FFIVoid * data2;
	FFIVoid * data3;

	)
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> data1 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA1) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> data1: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA1 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> data2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA2) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> data2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA2 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> data3 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA3) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> data3: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA3 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> kind [
	"This method was automatically generated"
	^CXCursorKindEnum fromInteger: (handle unsignedLongAt: OFFSET_KIND)
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> kind: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_KIND put: anObject value
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> xdata [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_XDATA
]

{ #category : #'accessing structure variables' }
CXCursorStruct >> xdata: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_XDATA put: anObject
]
