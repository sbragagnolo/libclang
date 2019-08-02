Class {
	#name : #CXIndexH,
	#superclass : #CLExternalLibraryWrapper,
	#category : #'LibClang-FFI-Binding'
}

{ #category : #'nativeboost types' }
CXIndexH class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #'library path' }
CXIndexH class >> nbLibraryNameOrHandle [
	^ LibClangMap libraryNameOrHandle
]

{ #category : #'foreign interface' }
CXIndexH >> CXCursorSet_contains: cset cursor: cursor [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_CXCursorSet_contains(CXCursorSet cset, CXCursor cursor)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> CXCursorSet_insert: cset cursor: cursor [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_CXCursorSet_insert(CXCursorSet cset, CXCursor cursor)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> CXIndex_getGlobalOptions: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_CXIndex_getGlobalOptions(CXIndex arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> CXIndex_setGlobalOptions: arg1 options: options [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_CXIndex_setGlobalOptions(CXIndex arg1, NBUInt32 options)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> CXXMethod_isStatic: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_CXXMethod_isStatic(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> CXXMethod_isVirtual: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_CXXMethod_isVirtual(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> Cursor_getArgument: cursor index: index [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_Cursor_getArgument(CXCursor cursor, NBUInt32 index)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> Cursor_getNumArguments: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_Cursor_getNumArguments(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> Cursor_getObjCSelectorIndex: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_Cursor_getObjCSelectorIndex(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> Cursor_getSpellingNameRange: c NameFlags: nameFlags PieceIndex: pieceIndex [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceRange clang_Cursor_getSpellingNameRange(CXCursor c, NBUInt32 nameFlags, NBUInt32 pieceIndex)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> Cursor_getTranslationUnit: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXTranslationUnit clang_Cursor_getTranslationUnit(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> Cursor_isNull: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_Cursor_isNull(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> IndexAction_create: cIdx [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIndexAction clang_IndexAction_create(CXIndex cIdx)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> IndexAction_dispose: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_IndexAction_dispose(CXIndexAction arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> Range_isNull: range [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_Range_isNull(CXSourceRange range)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> annotateTokens: tU Tokens: tokens NumTokens: numTokens Cursors: cursors [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_annotateTokens(CXTranslationUnit tU, CXToken * tokens, NBUInt32 numTokens, CXCursor * cursors)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> codeCompleteAt: tU complete_filename: complete_filename complete_line: complete_line complete_column: complete_column unsaved_files: unsaved_files num_unsaved_files: num_unsaved_files options: options [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCodeCompleteResults * clang_codeCompleteAt(CXTranslationUnit tU, NBCharacterType * complete_filename, NBUInt32 complete_line, NBUInt32 complete_column, CXUnsavedFileStruct * unsaved_files, NBUInt32 num_unsaved_files, NBUInt32 options)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> codeCompleteGetContainerKind: results IsIncomplete: isIncomplete [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursorKindEnum clang_codeCompleteGetContainerKind(CXCodeCompleteResults * results, NBUInt32 * isIncomplete)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> codeCompleteGetContainerUSR: results [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_codeCompleteGetContainerUSR(CXCodeCompleteResults * results)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> codeCompleteGetContexts: results [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt64 clang_codeCompleteGetContexts(CXCodeCompleteResults * results)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> codeCompleteGetDiagnostic: results Index: index [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXDiagnostic clang_codeCompleteGetDiagnostic(CXCodeCompleteResults * results, NBUInt32 index)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> codeCompleteGetNumDiagnostics: results [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_codeCompleteGetNumDiagnostics(CXCodeCompleteResults * results)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> codeCompleteGetObjCSelector: results [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_codeCompleteGetObjCSelector(CXCodeCompleteResults * results)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> constructUSR_ObjCCategory: class_name category_name: category_name [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_constructUSR_ObjCCategory(NBCharacterType * class_name, NBCharacterType * category_name)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> constructUSR_ObjCClass: protocol_name [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_constructUSR_ObjCClass(NBCharacterType * protocol_name)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> constructUSR_ObjCIvar: property classUSR: classUSR [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_constructUSR_ObjCIvar(NBCharacterType * property, CXString classUSR)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> constructUSR_ObjCMethod: name isInstanceMethod: isInstanceMethod classUSR: classUSR [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_constructUSR_ObjCMethod(NBCharacterType * name, NBUInt32 isInstanceMethod, CXString classUSR)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> constructUSR_ObjCProperty: property classUSR: classUSR [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_constructUSR_ObjCProperty(NBCharacterType * property, CXString classUSR)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> constructUSR_ObjCProtocol: protocol_name [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_constructUSR_ObjCProtocol(NBCharacterType * protocol_name)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> createCXCursorSet [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursorSet clang_createCXCursorSet()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> createIndex: excludeDeclarationsFromPCH displayDiagnostics: displayDiagnostics [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIndex clang_createIndex(NBInt32 excludeDeclarationsFromPCH, NBInt32 displayDiagnostics)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> createTranslationUnit: arg1 ast_filename: ast_filename [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXTranslationUnit clang_createTranslationUnit(CXIndex arg1, NBCharacterType * ast_filename)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> createTranslationUnitFromSourceFile: cIdx source_filename: source_filename num_clang_command_line_args: num_clang_command_line_args clang_command_line_args: clang_command_line_args num_unsaved_files: num_unsaved_files unsaved_files: unsaved_files [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXTranslationUnit clang_createTranslationUnitFromSourceFile(CXIndex cIdx, NBCharacterType * source_filename, NBInt32 num_clang_command_line_args, NBCharacterType * * clang_command_line_args, NBUInt32 num_unsaved_files, CXUnsavedFileStruct * unsaved_files)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> defaultCodeCompleteOptions [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_defaultCodeCompleteOptions()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> defaultDiagnosticDisplayOptions [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_defaultDiagnosticDisplayOptions()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> defaultEditingTranslationUnitOptions [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_defaultEditingTranslationUnitOptions()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> defaultReparseOptions: tU [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_defaultReparseOptions(CXTranslationUnit tU)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> defaultSaveOptions: tU [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_defaultSaveOptions(CXTranslationUnit tU)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeCXCursorSet: cset [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeCXCursorSet(CXCursorSet cset)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeCXTUResourceUsage: usage [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeCXTUResourceUsage(CXTUResourceUsage usage)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeCodeCompleteResults: results [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeCodeCompleteResults(CXCodeCompleteResults * results)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeDiagnostic: diagnostic [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeDiagnostic(CXDiagnostic diagnostic)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeDiagnosticSet: diags [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeDiagnosticSet(CXDiagnosticSet diags)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeIndex: index [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeIndex(CXIndex index)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeOverriddenCursors: overridden [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeOverriddenCursors(CXCursor * overridden)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeString: string [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeString(CXString string)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeTokens: tU Tokens: tokens NumTokens: numTokens [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeTokens(CXTranslationUnit tU, CXToken * tokens, NBUInt32 numTokens)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> disposeTranslationUnit: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_disposeTranslationUnit(CXTranslationUnit arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> enableStackTraces [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_enableStackTraces()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> equalCursors: arg1 arg2: arg2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_equalCursors(CXCursor arg1, CXCursor arg2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> equalLocations: loc1 loc2: loc2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_equalLocations(CXSourceLocation loc1, CXSourceLocation loc2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> equalRanges: range1 range2: range2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_equalRanges(CXSourceRange range1, CXSourceRange range2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> equalTypes: a B: b [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_equalTypes(CXType a, CXType b)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> executeOnThread: fn user_data: user_data stack_size: stack_size [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_executeOnThread(CXIndexHCb12 fn, NBVoid * user_data, NBUInt32 stack_size)) options: #( optMayGC )
]

{ #category : #'foreign interface' }
CXIndexH >> findReferencesInFile: cursor file: file visitor: visitor [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_findReferencesInFile(CXCursor cursor, CXFile file, CXCursorAndRangeVisitor visitor)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> findReferencesInFileWithBlock: arg1 arg2: arg2 arg3: arg3 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_findReferencesInFileWithBlock(CXCursor arg1, CXFile arg2, CXCursorAndRangeVisitorBlock arg3)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> formatDiagnostic: diagnostic Options: options [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_formatDiagnostic(CXDiagnostic diagnostic, NBUInt32 options)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getArgType: t i: i [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getArgType(CXType t, NBUInt32 i)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getArrayElementType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getArrayElementType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getArraySize: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt64 clang_getArraySize(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCString: string [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBCharacterType * clang_getCString(CXString string)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCXTUResourceUsage: tU [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXTUResourceUsage clang_getCXTUResourceUsage(CXTranslationUnit tU)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCXXAccessSpecifier: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCXXAccessSpecifierEnum clang_getCXXAccessSpecifier(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCanonicalCursor: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getCanonicalCursor(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCanonicalType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getCanonicalType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getChildDiagnostics: d [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXDiagnosticSet clang_getChildDiagnostics(CXDiagnostic d)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getClangVersion [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getClangVersion()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCompletionAnnotation: completion_string annotation_number: annotation_number [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getCompletionAnnotation(CXCompletionString completion_string, NBUInt32 annotation_number)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCompletionAvailability: completion_string [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXAvailabilityKindEnum clang_getCompletionAvailability(CXCompletionString completion_string)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCompletionChunkCompletionString: completion_string chunk_number: chunk_number [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCompletionString clang_getCompletionChunkCompletionString(CXCompletionString completion_string, NBUInt32 chunk_number)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCompletionChunkKind: completion_string chunk_number: chunk_number [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCompletionChunkKindEnum clang_getCompletionChunkKind(CXCompletionString completion_string, NBUInt32 chunk_number)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCompletionChunkText: completion_string annotation_number: annotation_number [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getCompletionChunkText(CXCompletionString completion_string, NBUInt32 annotation_number)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCompletionNumAnnotations: completion_string [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getCompletionNumAnnotations(CXCompletionString completion_string)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCompletionParent: completion_string kind: kind [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getCompletionParent(CXCompletionString completion_string, CXCursorKindEnum * kind)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCompletionPriority: completion_string [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getCompletionPriority(CXCompletionString completion_string)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursor: arg1 arg2: arg2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getCursor(CXTranslationUnit arg1, CXSourceLocation arg2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorAvailability: cursor [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXAvailabilityKindEnum clang_getCursorAvailability(CXCursor cursor)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorCompletionString: cursor [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCompletionString clang_getCursorCompletionString(CXCursor cursor)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorDefinition: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getCursorDefinition(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorDisplayName: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getCursorDisplayName(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorExtent: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceRange clang_getCursorExtent(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorKind: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursorKindEnum clang_getCursorKind(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorKindSpelling: kind [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getCursorKindSpelling(CXCursorKindEnum kind)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorLanguage: cursor [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXLanguageKindEnum clang_getCursorLanguage(CXCursor cursor)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorLexicalParent: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getCursorLexicalParent(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorLinkage: cursor [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXLinkageKindEnum clang_getCursorLinkage(CXCursor cursor)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorLocation: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_getCursorLocation(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorReferenceNameRange: c NameFlags: nameFlags PieceIndex: pieceIndex [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceRange clang_getCursorReferenceNameRange(CXCursor c, NBUInt32 nameFlags, NBUInt32 pieceIndex)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorReferenced: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getCursorReferenced(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorResultType: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getCursorResultType(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorSemanticParent: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getCursorSemanticParent(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorSpelling: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getCursorSpelling(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorType: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getCursorType(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getCursorUSR: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getCursorUSR(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDeclObjCTypeEncoding: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getDeclObjCTypeEncoding(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDefinitionSpellingAndExtent: arg1 startBuf: startBuf endBuf: endBuf startLine: startLine startColumn: startColumn endLine: endLine endColumn: endColumn [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_getDefinitionSpellingAndExtent(CXCursor arg1, NBCharacterType * * startBuf, NBCharacterType * * endBuf, NBUInt32 * startLine, NBUInt32 * startColumn, NBUInt32 * endLine, NBUInt32 * endColumn)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnostic: unit Index: index [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXDiagnostic clang_getDiagnostic(CXTranslationUnit unit, NBUInt32 index)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticCategory: diagnostic [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getDiagnosticCategory(CXDiagnostic diagnostic)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticCategoryName: category [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getDiagnosticCategoryName(NBUInt32 category)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticCategoryText: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getDiagnosticCategoryText(CXDiagnostic arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticFixIt: diagnostic FixIt: fixIt ReplacementRange: replacementRange [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getDiagnosticFixIt(CXDiagnostic diagnostic, NBUInt32 fixIt, CXSourceRange * replacementRange)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticInSet: diags Index: index [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXDiagnostic clang_getDiagnosticInSet(CXDiagnosticSet diags, NBUInt32 index)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticLocation: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_getDiagnosticLocation(CXDiagnostic arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticNumFixIts: diagnostic [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getDiagnosticNumFixIts(CXDiagnostic diagnostic)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticNumRanges: diagnostic [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getDiagnosticNumRanges(CXDiagnostic diagnostic)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticOption: diag Disable: disable [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getDiagnosticOption(CXDiagnostic diag, CXString * disable)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticRange: diagnostic Range: range [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceRange clang_getDiagnosticRange(CXDiagnostic diagnostic, NBUInt32 range)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticSetFromTU: unit [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXDiagnosticSet clang_getDiagnosticSetFromTU(CXTranslationUnit unit)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticSeverity: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXDiagnosticSeverityEnum clang_getDiagnosticSeverity(CXDiagnostic arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getDiagnosticSpelling: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getDiagnosticSpelling(CXDiagnostic arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getElementType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getElementType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getEnumConstantDeclUnsignedValue: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt64 clang_getEnumConstantDeclUnsignedValue(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getEnumConstantDeclValue: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt64 clang_getEnumConstantDeclValue(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getEnumDeclIntegerType: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getEnumDeclIntegerType(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getExpansionLocation: location file: file line: line column: column offset: offset [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_getExpansionLocation(CXSourceLocation location, CXFile * file, NBUInt32 * line, NBUInt32 * column, NBUInt32 * offset)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getFile: tu file_name: file_name [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXFile clang_getFile(CXTranslationUnit tu, NBCharacterType * file_name)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getFileName: sFile [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getFileName(CXFile sFile)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getFileTime: sFile [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXtime_t clang_getFileTime(CXFile sFile)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getFunctionTypeCallingConv: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCallingConvEnum clang_getFunctionTypeCallingConv(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getIBOutletCollectionType: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getIBOutletCollectionType(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getIncludedFile: cursor [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXFile clang_getIncludedFile(CXCursor cursor)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getInclusions: tu visitor: visitor client_data: client_data [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_getInclusions(CXTranslationUnit tu, CXInclusionVisitor visitor, CXClientData client_data)) options: #( optMayGC )
]

{ #category : #'foreign interface' }
CXIndexH >> getInstantiationLocation: location file: file line: line column: column offset: offset [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_getInstantiationLocation(CXSourceLocation location, CXFile * file, NBUInt32 * line, NBUInt32 * column, NBUInt32 * offset)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getLocation: tu file: file line: line column: column [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_getLocation(CXTranslationUnit tu, CXFile file, NBUInt32 line, NBUInt32 column)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getLocationForOffset: tu file: file offset: offset [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_getLocationForOffset(CXTranslationUnit tu, CXFile file, NBUInt32 offset)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNullCursor [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getNullCursor()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNullLocation [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_getNullLocation()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNullRange [
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceRange clang_getNullRange()) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNumArgTypes: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_getNumArgTypes(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNumCompletionChunks: completion_string [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getNumCompletionChunks(CXCompletionString completion_string)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNumDiagnostics: tU [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getNumDiagnostics(CXTranslationUnit tU)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNumDiagnosticsInSet: diags [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getNumDiagnosticsInSet(CXDiagnosticSet diags)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNumElements: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt64 clang_getNumElements(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getNumOverloadedDecls: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_getNumOverloadedDecls(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getOverloadedDecl: cursor index: index [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getOverloadedDecl(CXCursor cursor, NBUInt32 index)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getOverriddenCursors: cursor overridden: overridden num_overridden: num_overridden [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_getOverriddenCursors(CXCursor cursor, CXCursor * * overridden, NBUInt32 * num_overridden)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getPointeeType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getPointeeType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getPresumedLocation: location filename: filename line: line column: column [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_getPresumedLocation(CXSourceLocation location, CXString * filename, NBUInt32 * line, NBUInt32 * column)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getRange: begin end: end [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceRange clang_getRange(CXSourceLocation begin, CXSourceLocation end)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getRangeEnd: range [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_getRangeEnd(CXSourceRange range)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getRangeStart: range [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_getRangeStart(CXSourceRange range)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getRemappings: path [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXRemapping clang_getRemappings(NBCharacterType * path)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getRemappingsFromFileList: filePaths numFiles: numFiles [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXRemapping clang_getRemappingsFromFileList(NBCharacterType * * filePaths, NBUInt32 numFiles)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getResultType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getResultType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getSpecializedCursorTemplate: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getSpecializedCursorTemplate(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getSpellingLocation: location file: file line: line column: column offset: offset [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_getSpellingLocation(CXSourceLocation location, CXFile * file, NBUInt32 * line, NBUInt32 * column, NBUInt32 * offset)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTUResourceUsageName: kind [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBCharacterType * clang_getTUResourceUsageName(CXTUResourceUsageKindEnum kind)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTemplateCursorKind: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursorKindEnum clang_getTemplateCursorKind(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTokenExtent: arg1 arg2: arg2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceRange clang_getTokenExtent(CXTranslationUnit arg1, CXToken arg2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTokenKind: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXTokenKind clang_getTokenKind(CXToken arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTokenLocation: arg1 arg2: arg2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_getTokenLocation(CXTranslationUnit arg1, CXToken arg2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTokenSpelling: arg1 arg2: arg2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getTokenSpelling(CXTranslationUnit arg1, CXToken arg2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTranslationUnitCursor: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getTranslationUnitCursor(CXTranslationUnit arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTranslationUnitSpelling: cTUnit [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getTranslationUnitSpelling(CXTranslationUnit cTUnit)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTypeDeclaration: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXCursor clang_getTypeDeclaration(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTypeKindSpelling: k [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXString clang_getTypeKindSpelling(CXTypeKindEnum k)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> getTypedefDeclUnderlyingType: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXType clang_getTypedefDeclUnderlyingType(CXCursor arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> hashCursor: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_hashCursor(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> indexLoc_getCXSourceLocation: loc [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXSourceLocation clang_indexLoc_getCXSourceLocation(CXIdxLoc loc)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> indexLoc_getFileLocation: loc indexFile: indexFile file: file line: line column: column offset: offset [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_indexLoc_getFileLocation(CXIdxLoc loc, CXIdxClientFile * indexFile, CXFile * file, NBUInt32 * line, NBUInt32 * column, NBUInt32 * offset)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> indexSourceFile: arg1 client_data: client_data index_callbacks: index_callbacks index_callbacks_size: index_callbacks_size index_options: index_options source_filename: source_filename command_line_args: command_line_args num_command_line_args: num_command_line_args unsaved_files: unsaved_files num_unsaved_files: num_unsaved_files out_TU: out_TU TU_options: tU_options [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_indexSourceFile(CXIndexAction arg1, CXClientData client_data, CXIndexerCallbacks * index_callbacks, NBUInt32 index_callbacks_size, NBUInt32 index_options, NBCharacterType * source_filename, NBCharacterType * * command_line_args, NBInt32 num_command_line_args, CXUnsavedFileStruct * unsaved_files, NBUInt32 num_unsaved_files, CXTranslationUnit * out_TU, NBUInt32 tU_options)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> indexTranslationUnit: arg1 client_data: client_data index_callbacks: index_callbacks index_callbacks_size: index_callbacks_size index_options: index_options arg6: arg6 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_indexTranslationUnit(CXIndexAction arg1, CXClientData client_data, CXIndexerCallbacks * index_callbacks, NBUInt32 index_callbacks_size, NBUInt32 index_options, CXTranslationUnit arg6)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getCXXClassDeclInfo: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxCXXClassDeclInfo * clang_index_getCXXClassDeclInfo(CXIdxDeclInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getClientContainer: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxClientContainer clang_index_getClientContainer(CXIdxContainerInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getClientEntity: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxClientEntity clang_index_getClientEntity(CXIdxEntityInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getIBOutletCollectionAttrInfo: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxIBOutletCollectionAttrInfo * clang_index_getIBOutletCollectionAttrInfo(CXIdxAttrInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getObjCCategoryDeclInfo: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxObjCCategoryDeclInfo * clang_index_getObjCCategoryDeclInfo(CXIdxDeclInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getObjCContainerDeclInfo: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxObjCContainerDeclInfo * clang_index_getObjCContainerDeclInfo(CXIdxDeclInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getObjCInterfaceDeclInfo: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxObjCInterfaceDeclInfo * clang_index_getObjCInterfaceDeclInfo(CXIdxDeclInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getObjCPropertyDeclInfo: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxObjCPropertyDeclInfo * clang_index_getObjCPropertyDeclInfo(CXIdxDeclInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_getObjCProtocolRefListInfo: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXIdxObjCProtocolRefListInfo * clang_index_getObjCProtocolRefListInfo(CXIdxDeclInfo * arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_isEntityObjCContainerKind: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_index_isEntityObjCContainerKind(CXIdxEntityKind arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_setClientContainer: arg1 arg2: arg2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_index_setClientContainer(CXIdxContainerInfo * arg1, CXIdxClientContainer arg2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> index_setClientEntity: arg1 arg2: arg2 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_index_setClientEntity(CXIdxEntityInfo * arg1, CXIdxClientEntity arg2)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isAttribute: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isAttribute(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isConstQualifiedType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isConstQualifiedType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isCursorDefinition: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isCursorDefinition(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isDeclaration: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isDeclaration(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isExpression: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isExpression(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isFileMultipleIncludeGuarded: tu file: file [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isFileMultipleIncludeGuarded(CXTranslationUnit tu, CXFile file)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isFunctionTypeVariadic: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isFunctionTypeVariadic(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isInvalid: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isInvalid(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isPODType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isPODType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isPreprocessing: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isPreprocessing(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isReference: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isReference(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isRestrictQualifiedType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isRestrictQualifiedType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isStatement: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isStatement(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isTranslationUnit: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isTranslationUnit(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isUnexposed: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isUnexposed(CXCursorKindEnum arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isVirtualBase: c [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isVirtualBase(CXCursor c)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> isVolatileQualifiedType: t [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_isVolatileQualifiedType(CXType t)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> loadDiagnostics: file error: error errorString: errorString [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXDiagnosticSet clang_loadDiagnostics(NBCharacterType * file, CXLoadDiagErrorEnum * error, CXString * errorString)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> parseTranslationUnit: cIdx source_filename: source_filename command_line_args: command_line_args num_command_line_args: num_command_line_args unsaved_files: unsaved_files num_unsaved_files: num_unsaved_files options: options [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(CXTranslationUnit clang_parseTranslationUnit(CXIndex cIdx, NBCharacterType * source_filename, NBCharacterType * * command_line_args, NBInt32 num_command_line_args, CXUnsavedFileStruct * unsaved_files, NBUInt32 num_unsaved_files, NBUInt32 options)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> remap_dispose: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_remap_dispose(CXRemapping arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> remap_getFilenames: arg1 index: index original: original transformed: transformed [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_remap_getFilenames(CXRemapping arg1, NBUInt32 index, CXString * original, CXString * transformed)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> remap_getNumFiles: arg1 [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_remap_getNumFiles(CXRemapping arg1)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> reparseTranslationUnit: tU num_unsaved_files: num_unsaved_files unsaved_files: unsaved_files options: options [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_reparseTranslationUnit(CXTranslationUnit tU, NBUInt32 num_unsaved_files, CXUnsavedFileStruct * unsaved_files, NBUInt32 options)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> saveTranslationUnit: tU FileName: fileName options: options [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 clang_saveTranslationUnit(CXTranslationUnit tU, NBCharacterType * fileName, NBUInt32 options)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> sortCodeCompletionResults: results NumResults: numResults [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_sortCodeCompletionResults(CXCompletionResult * results, NBUInt32 numResults)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> toggleCrashRecovery: isEnabled [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_toggleCrashRecovery(NBUInt32 isEnabled)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> tokenize: tU Range: range Tokens: tokens NumTokens: numTokens [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid clang_tokenize(CXTranslationUnit tU, CXSourceRange range, CXToken * * tokens, NBUInt32 * numTokens)) options: #(  )
]

{ #category : #'foreign interface' }
CXIndexH >> visitChildren: parent visitor: visitor client_data: client_data [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_visitChildren(CXCursor parent, CXCursorVisitor visitor, CXClientData client_data)) options: #( optMayGC )
]

{ #category : #'foreign interface' }
CXIndexH >> visitChildrenWithBlock: parent block: block [ 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 clang_visitChildrenWithBlock(CXCursor parent, CXCursorVisitorBlock block)) options: #(  )
]
