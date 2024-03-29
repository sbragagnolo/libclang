Class {
	#name : #CXIdxIncludedFileInfoStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_FILE',
		'OFFSET_FILENAME',
		'OFFSET_HASHLOC',
		'OFFSET_ISANGLED',
		'OFFSET_ISIMPORT'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxIncludedFileInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxIncludedFileInfoStruct class >> fieldsDesc [
	^#(
	CXIdxLoc hashLoc;
	FFICharacterType * filename;
	CXFile file;
	FFIInt32 isImport;
	FFIInt32 isAngled;

	)
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> file [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_FILE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> file: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FILE put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> filename [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_FILENAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> filename: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FILENAME put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> hashLoc [
	"This method was automatically generated"
	^ CXIdxLocStruct fromHandle: (handle referenceStructAt: OFFSET_HASHLOC length: CXIdxLocStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> hashLoc: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_HASHLOC put: anObject getHandle length: CXIdxLocStruct byteSize
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> isAngled [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_ISANGLED
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> isAngled: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_ISANGLED put: anObject
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> isImport [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_ISIMPORT
]

{ #category : #'accessing structure variables' }
CXIdxIncludedFileInfoStruct >> isImport: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_ISIMPORT put: anObject
]
