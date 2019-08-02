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

{ #category : #'library path' }
LibClangMap class >> libraryNameOrHandle [
	NativeBoost platformId = 2 
		ifTrue:[^'/Users/ciprian/Playfield/llvm-3.1/install_clang-x86_dbg/lib/libclang.dylib'].
	self error: 'define your own path'
]

{ #category : #'type map' }
LibClangMap class >> typeMap [
	^#(CXTUResourceUsage 'CXTUResourceUsageStruct'
CXInclusionVisitor 'CXInclusionVisitorCb'
CXIdxAttrKind 'CXIdxAttrKindEnum'
CXIndex 'void *'
CXIdxBaseClassInfo 'CXIdxBaseClassInfoStruct'
CXCursorAndRangeVisitor 'CXCursorAndRangeVisitorStruct'
CXIdxEntityKind 'CXIdxEntityKindEnum'
CXIdxAttrInfo 'CXIdxAttrInfoStruct'
CXIdxClientEntity 'void *'
CXCursorVisitorBlock '"unsupported"'
CXString 'CXStringStruct'
CXtime_t 'int'
CXIdxEntityInfo 'CXIdxEntityInfoStruct'
CXIdxObjCCategoryDeclInfo 'CXIdxObjCCategoryDeclInfoStruct'
CXIdxCXXClassDeclInfo 'CXIdxCXXClassDeclInfoStruct'
CXIdxDeclInfo 'CXIdxDeclInfoStruct'
CXIdxObjCProtocolRefInfo 'CXIdxObjCProtocolRefInfoStruct'
CXCursorVisitor 'CXCursorVisitorCb'
CXToken 'CXTokenStruct'
CXDiagnosticSet 'void *'
CXType 'CXTypeStruct'
CXIdxEntityLanguage 'CXIdxEntityLanguageEnum'
CXFile 'void *'
CXIdxLoc 'CXIdxLocStruct'
CXTokenKind 'CXTokenKindEnum'
CXDiagnostic 'void *'
CXClientData 'void *'
CXIdxObjCProtocolRefListInfo 'CXIdxObjCProtocolRefListInfoStruct'
CXCompletionString 'void *'
CXSourceRange 'CXSourceRangeStruct'
CXIdxObjCPropertyDeclInfo 'CXIdxObjCPropertyDeclInfoStruct'
CXCursorAndRangeVisitorBlock '"unsupported"'
CXIdxContainerInfo 'CXIdxContainerInfoStruct'
CXSourceLocation 'CXSourceLocationStruct'
CXRemapping 'void *'
CXCodeCompleteResults 'CXCodeCompleteResultsStruct'
CXTUResourceUsageEntry 'CXTUResourceUsageEntryStruct'
CXCursor 'CXCursorStruct'
CXIndexAction 'void *'
CXIdxClientContainer 'void *'
CXIdxObjCInterfaceDeclInfo 'CXIdxObjCInterfaceDeclInfoStruct'
CXIdxClientFile 'void *'
CXTranslationUnit 'void * *'
CXIdxObjCContainerKind 'CXIdxObjCContainerKindEnum'
CXCursorSet 'void * *'
CXIdxEntityRefKind 'CXIdxEntityRefKindEnum'
CXIdxEntityCXXTemplateKind 'CXIdxEntityCXXTemplateKindEnum'
CXCompletionResult 'CXCompletionResultStruct'
CXIndexerCallbacks 'CXIndexerCallbacksStruct'
CXIdxObjCContainerDeclInfo 'CXIdxObjCContainerDeclInfoStruct'
CXIdxIBOutletCollectionAttrInfo 'CXIdxIBOutletCollectionAttrInfoStruct'
)
]
