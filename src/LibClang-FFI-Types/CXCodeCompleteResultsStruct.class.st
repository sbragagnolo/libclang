Class {
	#name : #CXCodeCompleteResultsStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXCodeCompleteResultsStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXCodeCompleteResultsStruct class >> fieldsDesc [
	^#(
	CXCompletionResult * Results;
	FFIUInt32 NumResults;

	)
]
