Class {
	#name : #CXTUResourceUsageKindEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXTUResourceUsage_AST',
		'CXTUResourceUsage_AST_SideTables',
		'CXTUResourceUsage_ExternalASTSource_Membuffer_MMap',
		'CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc',
		'CXTUResourceUsage_First',
		'CXTUResourceUsage_GlobalCompletionResults',
		'CXTUResourceUsage_Identifiers',
		'CXTUResourceUsage_Last',
		'CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN',
		'CXTUResourceUsage_MEMORY_IN_BYTES_END',
		'CXTUResourceUsage_PreprocessingRecord',
		'CXTUResourceUsage_Preprocessor',
		'CXTUResourceUsage_Preprocessor_HeaderSearch',
		'CXTUResourceUsage_Selectors',
		'CXTUResourceUsage_SourceManagerContentCache',
		'CXTUResourceUsage_SourceManager_DataStructures',
		'CXTUResourceUsage_SourceManager_Membuffer_MMap',
		'CXTUResourceUsage_SourceManager_Membuffer_Malloc'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXTUResourceUsageKindEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXTUResourceUsageKindEnum class >> enumDecl [
	^#(
	CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN 1
	CXTUResourceUsage_AST 1
	CXTUResourceUsage_First 1
	CXTUResourceUsage_Identifiers 2
	CXTUResourceUsage_Selectors 3
	CXTUResourceUsage_GlobalCompletionResults 4
	CXTUResourceUsage_SourceManagerContentCache 5
	CXTUResourceUsage_AST_SideTables 6
	CXTUResourceUsage_SourceManager_Membuffer_Malloc 7
	CXTUResourceUsage_SourceManager_Membuffer_MMap 8
	CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc 9
	CXTUResourceUsage_ExternalASTSource_Membuffer_MMap 10
	CXTUResourceUsage_Preprocessor 11
	CXTUResourceUsage_PreprocessingRecord 12
	CXTUResourceUsage_SourceManager_DataStructures 13
	CXTUResourceUsage_Preprocessor_HeaderSearch 14
	CXTUResourceUsage_MEMORY_IN_BYTES_END 14
	CXTUResourceUsage_Last 14
)
]
