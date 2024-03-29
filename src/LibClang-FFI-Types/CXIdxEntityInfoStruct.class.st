Class {
	#name : #CXIdxEntityInfoStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ATTRIBUTES',
		'OFFSET_CURSOR',
		'OFFSET_KIND',
		'OFFSET_LANG',
		'OFFSET_NAME',
		'OFFSET_NUMATTRIBUTES',
		'OFFSET_TEMPLATEKIND',
		'OFFSET_USR'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxEntityInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxEntityInfoStruct class >> fieldsDesc [
	^#(
	CXIdxEntityKind kind;
	CXIdxEntityCXXTemplateKind templateKind;
	CXIdxEntityLanguage lang;
	FFICharacterType * name;
	FFICharacterType * USR;
	CXCursor cursor;
	CXIdxAttrInfo * * attributes;
	FFIInt32 numAttributes;

	)
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> USR [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_USR) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> USR: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_USR put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> attributes [
	"This method was automatically generated"
	^CXIdxAttrInfoStruct fromHandle: (handle pointerAt: OFFSET_ATTRIBUTES)
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> attributes: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ATTRIBUTES put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> cursor [
	"This method was automatically generated"
	^ CXCursorStruct fromHandle: (handle referenceStructAt: OFFSET_CURSOR length: CXCursorStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> cursor: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CURSOR put: anObject getHandle length: CXCursorStruct byteSize
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> kind [
	"This method was automatically generated"
	^CXIdxEntityKindEnum fromInteger: (handle unsignedLongAt: OFFSET_KIND)
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> kind: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_KIND put: anObject value
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> lang [
	"This method was automatically generated"
	^CXIdxEntityLanguageEnum fromInteger: (handle unsignedLongAt: OFFSET_LANG)
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> lang: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LANG put: anObject value
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NAME put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> numAttributes [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_NUMATTRIBUTES
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> numAttributes: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_NUMATTRIBUTES put: anObject
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> templateKind [
	"This method was automatically generated"
	^ CXIdxEntityCXXTemplateKindEnum fromHandle: (handle referenceStructAt: OFFSET_TEMPLATEKIND length: CXIdxEntityCXXTemplateKindEnum byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxEntityInfoStruct >> templateKind: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEMPLATEKIND put: anObject getHandle length: CXIdxEntityCXXTemplateKindEnum byteSize
]
