Class {
	#name : #CXCodeCompleteResultsStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_NUMRESULTS',
		'OFFSET_RESULTS'
	],
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

{ #category : #'accessing structure variables' }
CXCodeCompleteResultsStruct >> NumResults [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_NUMRESULTS
]

{ #category : #'accessing structure variables' }
CXCodeCompleteResultsStruct >> NumResults: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_NUMRESULTS put: anObject
]

{ #category : #'accessing structure variables' }
CXCodeCompleteResultsStruct >> Results [
	"This method was automatically generated"
	^CXCompletionResultStruct fromHandle: (handle pointerAt: OFFSET_RESULTS)
]

{ #category : #'accessing structure variables' }
CXCodeCompleteResultsStruct >> Results: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RESULTS put: anObject getHandle.
]
