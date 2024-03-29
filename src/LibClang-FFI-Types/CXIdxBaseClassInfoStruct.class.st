Class {
	#name : #CXIdxBaseClassInfoStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_BASE',
		'OFFSET_CURSOR',
		'OFFSET_LOC'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxBaseClassInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxBaseClassInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityInfo * base;
	CXCursor cursor;
	CXIdxLoc loc;

	)
]

{ #category : #'accessing structure variables' }
CXIdxBaseClassInfoStruct >> base [
	"This method was automatically generated"
	^CXIdxEntityInfoStruct fromHandle: (handle pointerAt: OFFSET_BASE)
]

{ #category : #'accessing structure variables' }
CXIdxBaseClassInfoStruct >> base: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BASE put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXIdxBaseClassInfoStruct >> cursor [
	"This method was automatically generated"
	^ CXCursorStruct fromHandle: (handle referenceStructAt: OFFSET_CURSOR length: CXCursorStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxBaseClassInfoStruct >> cursor: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CURSOR put: anObject getHandle length: CXCursorStruct byteSize
]

{ #category : #'accessing structure variables' }
CXIdxBaseClassInfoStruct >> loc [
	"This method was automatically generated"
	^ CXIdxLocStruct fromHandle: (handle referenceStructAt: OFFSET_LOC length: CXIdxLocStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxBaseClassInfoStruct >> loc: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_LOC put: anObject getHandle length: CXIdxLocStruct byteSize
]
