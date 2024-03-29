Class {
	#name : #CXIdxIBOutletCollectionAttrInfoStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ATTRINFO',
		'OFFSET_CLASSCURSOR',
		'OFFSET_CLASSLOC',
		'OFFSET_OBJCCLASS'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxIBOutletCollectionAttrInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxIBOutletCollectionAttrInfoStruct class >> fieldsDesc [
	^#(
	CXIdxAttrInfo * attrInfo;
	CXIdxEntityInfo * objcClass;
	CXCursor classCursor;
	CXIdxLoc classLoc;

	)
]

{ #category : #'accessing structure variables' }
CXIdxIBOutletCollectionAttrInfoStruct >> attrInfo [
	"This method was automatically generated"
	^CXIdxAttrInfoStruct fromHandle: (handle pointerAt: OFFSET_ATTRINFO)
]

{ #category : #'accessing structure variables' }
CXIdxIBOutletCollectionAttrInfoStruct >> attrInfo: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ATTRINFO put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXIdxIBOutletCollectionAttrInfoStruct >> classCursor [
	"This method was automatically generated"
	^ CXCursorStruct fromHandle: (handle referenceStructAt: OFFSET_CLASSCURSOR length: CXCursorStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxIBOutletCollectionAttrInfoStruct >> classCursor: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CLASSCURSOR put: anObject getHandle length: CXCursorStruct byteSize
]

{ #category : #'accessing structure variables' }
CXIdxIBOutletCollectionAttrInfoStruct >> classLoc [
	"This method was automatically generated"
	^ CXIdxLocStruct fromHandle: (handle referenceStructAt: OFFSET_CLASSLOC length: CXIdxLocStruct byteSize)
]

{ #category : #'accessing structure variables' }
CXIdxIBOutletCollectionAttrInfoStruct >> classLoc: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CLASSLOC put: anObject getHandle length: CXIdxLocStruct byteSize
]

{ #category : #'accessing structure variables' }
CXIdxIBOutletCollectionAttrInfoStruct >> objcClass [
	"This method was automatically generated"
	^CXIdxEntityInfoStruct fromHandle: (handle pointerAt: OFFSET_OBJCCLASS)
]

{ #category : #'accessing structure variables' }
CXIdxIBOutletCollectionAttrInfoStruct >> objcClass: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_OBJCCLASS put: anObject getHandle.
]
