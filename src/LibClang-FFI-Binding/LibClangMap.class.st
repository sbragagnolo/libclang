Class {
	#name : #LibClangMap,
	#superclass : #CLLibraryMap,
	#category : #'LibClang-FFI-Binding'
}

{ #category : #'class initialization' }
LibClangMap class >> initialize [
	super initialize.
	self initializeStructs.
	self initializeEnums.
	self initializeCallbacks.
	self initializeArrays.
	self initializeUnions.
]

{ #category : #'class initialization' }
LibClangMap class >> initializeArrays [

]

{ #category : #'class initialization' }
LibClangMap class >> initializeCallbacks [

CXIndexHCb1 initialize.
CXIndexHCb12 initialize.
CXIndexHCb6 initialize.
CXIndexHCb3 initialize.
CXIndexHCb11 initialize.
CXCursorVisitorCb initialize.
CXIndexHCb8 initialize.
CXIndexHCb5 initialize.
CXIndexHCb2 initialize.
CXInclusionVisitorCb initialize.
CXIndexHCb7 initialize.
CXIndexHCb4 initialize.
]

{ #category : #'class initialization' }
LibClangMap class >> initializeEnums [

CXChildVisitResultEnum initialize.
CXIdxEntityLanguageEnum initialize.
CXDiagnosticSeverityEnum initialize.
CXCursorKindEnum initialize.
CXCompletionChunkKindEnum initialize.
CXTUResourceUsageKindEnum initialize.
CXIdxEntityKindEnum initialize.
CXAvailabilityKindEnum initialize.
CXTypeKindEnum initialize.
CXVisitorResultEnum initialize.
CXIdxAttrKindEnum initialize.
CXIdxEntityCXXTemplateKindEnum initialize.
CXCallingConvEnum initialize.
CXCXXAccessSpecifierEnum initialize.
CXLanguageKindEnum initialize.
CXLinkageKindEnum initialize.
CXIdxEntityRefKindEnum initialize.
CXTokenKindEnum initialize.
CXLoadDiagErrorEnum initialize.
CXIdxObjCContainerKindEnum initialize.
]

{ #category : #'class initialization' }
LibClangMap class >> initializeStructs [

CXIdxDeclInfoStruct rebuildFieldAccessors.
CXIdxObjCProtocolRefInfoStruct rebuildFieldAccessors.
CXIdxIBOutletCollectionAttrInfoStruct rebuildFieldAccessors.
CXIdxBaseClassInfoStruct rebuildFieldAccessors.
CXIdxAttrInfoStruct rebuildFieldAccessors.
CXIndexerCallbacksStruct rebuildFieldAccessors.
CXStringStruct rebuildFieldAccessors.
CXUnsavedFileStruct rebuildFieldAccessors.
CXCompletionResultStruct rebuildFieldAccessors.
CXIdxLocStruct rebuildFieldAccessors.
CXTokenStruct rebuildFieldAccessors.
CXIdxObjCProtocolRefListInfoStruct rebuildFieldAccessors.
CXCursorAndRangeVisitorStruct rebuildFieldAccessors.
CXIdxObjCContainerDeclInfoStruct rebuildFieldAccessors.
CXIdxContainerInfoStruct rebuildFieldAccessors.
CXSourceRangeStruct rebuildFieldAccessors.
CXCodeCompleteResultsStruct rebuildFieldAccessors.
CXTypeStruct rebuildFieldAccessors.
CXIdxEntityRefInfoStruct rebuildFieldAccessors.
CXTUResourceUsageEntryStruct rebuildFieldAccessors.
CXTUResourceUsageStruct rebuildFieldAccessors.
CXCursorStruct rebuildFieldAccessors.
CXIdxObjCPropertyDeclInfoStruct rebuildFieldAccessors.
CXIdxObjCInterfaceDeclInfoStruct rebuildFieldAccessors.
CXIdxIncludedFileInfoStruct rebuildFieldAccessors.
CXIdxObjCCategoryDeclInfoStruct rebuildFieldAccessors.
CXIdxCXXClassDeclInfoStruct rebuildFieldAccessors.
CXSourceLocationStruct rebuildFieldAccessors.
CXIdxEntityInfoStruct rebuildFieldAccessors.
CXIdxImportedASTFileInfoStruct rebuildFieldAccessors.
]

{ #category : #'class initialization' }
LibClangMap class >> initializeUnions [

]

{ #category : #'type map' }
LibClangMap class >> typeMap [
	^#(CXTUResourceUsage 'CXTUResourceUsageStruct'
CXInclusionVisitor 'CXInclusionVisitorCb'
CXIdxAttrKind 'CXIdxAttrKindEnum'
CXIndex 'FFIVoid *'
CXIdxBaseClassInfo 'CXIdxBaseClassInfoStruct'
CXCursorAndRangeVisitor 'CXCursorAndRangeVisitorStruct'
CXIdxEntityKind 'CXIdxEntityKindEnum'
CXIdxAttrInfo 'CXIdxAttrInfoStruct'
CXIdxClientEntity 'FFIVoid *'
CXCursorVisitorBlock '"unsupported"'
CXString 'CXStringStruct'
CXtime_t 'FFIInt32'
CXIdxEntityInfo 'CXIdxEntityInfoStruct'
CXIdxObjCCategoryDeclInfo 'CXIdxObjCCategoryDeclInfoStruct'
CXIdxCXXClassDeclInfo 'CXIdxCXXClassDeclInfoStruct'
CXIdxDeclInfo 'CXIdxDeclInfoStruct'
CXIdxObjCProtocolRefInfo 'CXIdxObjCProtocolRefInfoStruct'
CXCursorVisitor 'CXCursorVisitorCb'
CXToken 'CXTokenStruct'
CXDiagnosticSet 'FFIVoid *'
CXType 'CXTypeStruct'
CXIdxEntityLanguage 'CXIdxEntityLanguageEnum'
CXFile 'FFIVoid *'
CXIdxLoc 'CXIdxLocStruct'
CXTokenKind 'CXTokenKindEnum'
CXDiagnostic 'FFIVoid *'
CXClientData 'FFIVoid *'
CXIdxObjCProtocolRefListInfo 'CXIdxObjCProtocolRefListInfoStruct'
CXCompletionString 'FFIVoid *'
CXSourceRange 'CXSourceRangeStruct'
CXIdxObjCPropertyDeclInfo 'CXIdxObjCPropertyDeclInfoStruct'
CXCursorAndRangeVisitorBlock '"unsupported"'
CXIdxContainerInfo 'CXIdxContainerInfoStruct'
CXSourceLocation 'CXSourceLocationStruct'
CXRemapping 'FFIVoid *'
CXCodeCompleteResults 'CXCodeCompleteResultsStruct'
CXTUResourceUsageEntry 'CXTUResourceUsageEntryStruct'
CXCursor 'CXCursorStruct'
CXIndexAction 'FFIVoid *'
CXIdxClientContainer 'FFIVoid *'
CXIdxObjCInterfaceDeclInfo 'CXIdxObjCInterfaceDeclInfoStruct'
CXIdxClientFile 'FFIVoid *'
CXTranslationUnit 'FFIVoid * *'
CXIdxObjCContainerKind 'CXIdxObjCContainerKindEnum'
CXCursorSet 'FFIVoid * *'
CXIdxEntityRefKind 'CXIdxEntityRefKindEnum'
CXIdxEntityCXXTemplateKind 'CXIdxEntityCXXTemplateKindEnum'
CXCompletionResult 'CXCompletionResultStruct'
CXIndexerCallbacks 'CXIndexerCallbacksStruct'
CXIdxObjCContainerDeclInfo 'CXIdxObjCContainerDeclInfoStruct'
CXIdxIBOutletCollectionAttrInfo 'CXIdxIBOutletCollectionAttrInfoStruct'
)
]

{ #category : #'accessing platform' }
LibClangMap >> unix32ModuleName [
	self error: 'Not yet there'
]

{ #category : #'accessing platform' }
LibClangMap >> unix64ModuleName [
	^ 'libclang-3.8.0.so'
]

{ #category : #'accessing platform' }
LibClangMap >> unixModuleName [
	^ self unix64ModuleName
]
