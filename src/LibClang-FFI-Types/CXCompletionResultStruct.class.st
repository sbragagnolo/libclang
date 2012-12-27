Class {
	#name : #CXCompletionResultStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXCompletionResultStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXCompletionResultStruct class >> fieldsDesc [
	^#(
	CXCursorKindEnum CursorKind;
	CXCompletionString CompletionString;

	)
]

{ #category : #'nativeboost types' }
CXCompletionResultStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
