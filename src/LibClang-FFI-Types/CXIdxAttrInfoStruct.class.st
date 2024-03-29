Class {
	#name : #CXIdxAttrInfoStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_CURSOR',
		'OFFSET_KIND',
		'OFFSET_LOC'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxAttrInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxAttrInfoStruct class >> fieldsDesc [
	^#(
	CXIdxAttrKind kind;
	CXCursor cursor;
	CXIdxLoc loc;

	)
]

{ #category : #'accessing structure variables' }
CXIdxAttrInfoStruct >> cursor [
	"This method was automatically generated"
	^ CXCursorStruct fromHandle: (handle referenceStructAt: OFFSET_CURSOR length: CXCursorStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxAttrInfoStruct >> cursor: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CURSOR put: anObject getHandle length: CXCursorStruct byteSize
]

{ #category : #'accessing structure variables' }
CXIdxAttrInfoStruct >> kind [
	"This method was automatically generated"
	^CXIdxAttrKindEnum fromInteger: (handle unsignedLongAt: OFFSET_KIND)
]

{ #category : #'accessing structure variables' }
CXIdxAttrInfoStruct >> kind: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_KIND put: anObject value
]

{ #category : #'accessing structure variables' }
CXIdxAttrInfoStruct >> loc [
	"This method was automatically generated"
	^ CXIdxLocStruct fromHandle: (handle referenceStructAt: OFFSET_LOC length: CXIdxLocStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxAttrInfoStruct >> loc: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_LOC put: anObject getHandle length: CXIdxLocStruct byteSize
]
