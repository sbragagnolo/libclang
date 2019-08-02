Class {
	#name : #CXCompletionResultStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXCompletionResultStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXCompletionResultStruct class >> fieldsDesc [
	^#(
	CXCursorKindEnum CursorKind;
	CXCompletionString CompletionString;

	)
]
