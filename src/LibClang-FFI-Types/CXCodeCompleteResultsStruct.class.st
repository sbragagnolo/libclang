Class {
	#name : #CXCodeCompleteResultsStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXCodeCompleteResultsStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXCodeCompleteResultsStruct class >> fieldsDesc [
	^#(
	CXCompletionResult * Results;
	NBUInt32 NumResults;

	)
]

{ #category : #'nativeboost types' }
CXCodeCompleteResultsStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
