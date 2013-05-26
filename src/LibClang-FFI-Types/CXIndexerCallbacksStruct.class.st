Class {
	#name : #CXIndexerCallbacksStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIndexerCallbacksStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIndexerCallbacksStruct class >> fieldsDesc [
	^#(
	CXIndexHCb2 abortQuery;
	CXIndexHCb1 diagnostic;
	CXIndexHCb3 enteredMainFile;
	CXIndexHCb4 ppIncludedFile;
	CXIndexHCb5 importedASTFile;
	CXIndexHCb6 startedTranslationUnit;
	CXIndexHCb7 indexDeclaration;
	CXIndexHCb8 indexEntityReference;

	)
]

{ #category : #'nativeboost types' }
CXIndexerCallbacksStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
