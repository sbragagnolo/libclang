Class {
	#name : #CXIndexH,
	#superclass : #FFILibrary,
	#category : #'LibClang-FFI-Binding'
}

{ #category : #'nativeboost types' }
CXIndexH class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #'library path' }
CXIndexH class >> nbLibraryNameOrHandle [
	^ LibClangMap ffiLibraryName 
]

{ #category : #'ffi calls' }
CXIndexH >> CXCursorSet_contains: cset cursor: cursor [
	^ self
		ffiCall:
			#(FFIUInt32 clang_CXCursorSet_contains #(CXCursorSet cset , CXCursor cursor))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> CXCursorSet_insert: cset cursor: cursor [ 
	^self ffiCall: #(FFIUInt32 clang_CXCursorSet_insert(CXCursorSet cset, CXCursor cursor)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> CXIndex_getGlobalOptions: arg1 [
	^ self
		ffiCall: #(FFIUInt32 clang_CXIndex_getGlobalOptions #(CXIndex arg1))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> CXIndex_setGlobalOptions: arg1 options: options [
	^ self
		ffiCall:
			#(FFIVoid clang_CXIndex_setGlobalOptions #(CXIndex arg1 , FFIUInt32 options))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> CXXMethod_isStatic: c [ 
	^self ffiCall: #(FFIUInt32 clang_CXXMethod_isStatic(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> CXXMethod_isVirtual: c [
	^ self
		ffiCall: #(FFIUInt32 clang_CXXMethod_isVirtual #(CXCursor c))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> Cursor_getArgument: cursor index: index [ 
	^self ffiCall: #(CXCursor clang_Cursor_getArgument(CXCursor cursor, FFIUInt32 index)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> Cursor_getNumArguments: arg1 [
	^ self
		ffiCall: #(FFIInt32 clang_Cursor_getNumArguments #(CXCursor arg1))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> Cursor_getObjCSelectorIndex: arg1 [
	^ self
		ffiCall: #(FFIInt32 clang_Cursor_getObjCSelectorIndex #(CXCursor arg1))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> Cursor_getSpellingNameRange: c NameFlags: nameFlags PieceIndex: pieceIndex [
	^ self
		ffiCall:
			#(CXSourceRange clang_Cursor_getSpellingNameRange #(CXCursor c , FFIUInt32 nameFlags , FFIUInt32 pieceIndex))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> Cursor_getTranslationUnit: arg1 [
	^ self
		ffiCall: #(CXTranslationUnit clang_Cursor_getTranslationUnit #(CXCursor arg1))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> Cursor_isNull: arg1 [ 

	^self ffiCall: #(FFIInt32 clang_Cursor_isNull(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> IndexAction_create: cIdx [ 

	^self ffiCall: #(CXIndexAction clang_IndexAction_create(CXIndex cIdx)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> IndexAction_dispose: arg1 [ 

	^self ffiCall: #(FFIVoid clang_IndexAction_dispose(CXIndexAction arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> Range_isNull: range [ 

	^self ffiCall: #(FFIInt32 clang_Range_isNull(CXSourceRange range)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> annotateTokens: tU Tokens: tokens NumTokens: numTokens Cursors: cursors [ 

	^self ffiCall: #(FFIVoid clang_annotateTokens(CXTranslationUnit tU, CXToken * tokens, FFIUInt32 numTokens, CXCursor * cursors)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> call: fnSpec options: callOptions [
	<ffiCalloutTranslator>
	
	| ffiLibrary |
	
	ffiLibrary := CXIndexH asFFILibrary.
	^ (ffiLibrary calloutAPIClass inContext: thisContext sender)
		convention: self ffiCallingConvention;
		options: ffiLibrary options;
		function: fnSpec module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> codeCompleteAt: tU complete_filename: complete_filename complete_line: complete_line complete_column: complete_column unsaved_files: unsaved_files num_unsaved_files: num_unsaved_files options: options [
	^ self
		ffiCall:
			#(CXCodeCompleteResults * clang_codeCompleteAt #(CXTranslationUnit tU , FFICharacterType * complete_filename , FFIUInt32 complete_line , FFIUInt32 complete_column , CXUnsavedFileStruct * unsaved_files , FFIUInt32 num_unsaved_files , FFIUInt32 options))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> codeCompleteGetContainerKind: results IsIncomplete: isIncomplete [ 

	^self ffiCall: #(CXCursorKindEnum clang_codeCompleteGetContainerKind(CXCodeCompleteResults * results, FFIUInt32 * isIncomplete)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> codeCompleteGetContainerUSR: results [ 

	^self ffiCall: #(CXString clang_codeCompleteGetContainerUSR(CXCodeCompleteResults * results)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> codeCompleteGetContexts: results [ 

	^self ffiCall: #(FFIUInt64 clang_codeCompleteGetContexts(CXCodeCompleteResults * results)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> codeCompleteGetDiagnostic: results Index: index [ 

	^self ffiCall: #(CXDiagnostic clang_codeCompleteGetDiagnostic(CXCodeCompleteResults * results, FFIUInt32 index)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> codeCompleteGetNumDiagnostics: results [ 

	^self ffiCall: #(FFIUInt32 clang_codeCompleteGetNumDiagnostics(CXCodeCompleteResults * results)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> codeCompleteGetObjCSelector: results [ 

	^self ffiCall: #(CXString clang_codeCompleteGetObjCSelector(CXCodeCompleteResults * results)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> constructUSR_ObjCCategory: class_name category_name: category_name [ 

	^self ffiCall: #(CXString clang_constructUSR_ObjCCategory(FFICharacterType * class_name, FFICharacterType * category_name)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> constructUSR_ObjCClass: protocol_name [ 

	^self ffiCall: #(CXString clang_constructUSR_ObjCClass(FFICharacterType * protocol_name)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> constructUSR_ObjCIvar: property classUSR: classUSR [ 

	^self ffiCall: #(CXString clang_constructUSR_ObjCIvar(FFICharacterType * property, CXString classUSR)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> constructUSR_ObjCMethod: name isInstanceMethod: isInstanceMethod classUSR: classUSR [ 

	^self ffiCall: #(CXString clang_constructUSR_ObjCMethod(FFICharacterType * name, FFIUInt32 isInstanceMethod, CXString classUSR)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> constructUSR_ObjCProperty: property classUSR: classUSR [ 

	^self ffiCall: #(CXString clang_constructUSR_ObjCProperty(FFICharacterType * property, CXString classUSR)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> constructUSR_ObjCProtocol: protocol_name [ 

	^self ffiCall: #(CXString clang_constructUSR_ObjCProtocol(FFICharacterType * protocol_name)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> createCXCursorSet [

	^self ffiCall: #(CXCursorSet clang_createCXCursorSet()) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> createIndex: excludeDeclarationsFromPCH displayDiagnostics: displayDiagnostics [ 
	^self ffiCall: #(CXIndex clang_createIndex(FFIInt32 excludeDeclarationsFromPCH, FFIInt32 displayDiagnostics)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> createTranslationUnit: arg1 ast_filename: ast_filename [ 

	^self ffiCall: #(CXTranslationUnit clang_createTranslationUnit(CXIndex arg1, FFICharacterType * ast_filename)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> createTranslationUnitFromSourceFile: cIdx source_filename: source_filename num_clang_command_line_args: num_clang_command_line_args clang_command_line_args: clang_command_line_args num_unsaved_files: num_unsaved_files unsaved_files: unsaved_files [ 
	^self ffiCall: #(CXTranslationUnit clang_createTranslationUnitFromSourceFile(CXIndex cIdx, char* source_filename, FFIInt32 num_clang_command_line_args, char** clang_command_line_args, FFIUInt32 num_unsaved_files, CXUnsavedFileStruct * unsaved_files)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> defaultCodeCompleteOptions [

	^self ffiCall: #(FFIUInt32 clang_defaultCodeCompleteOptions()) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> defaultDiagnosticDisplayOptions [

	^self ffiCall: #(FFIUInt32 clang_defaultDiagnosticDisplayOptions()) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> defaultEditingTranslationUnitOptions [

	^self ffiCall: #(FFIUInt32 clang_defaultEditingTranslationUnitOptions()) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> defaultReparseOptions: tU [ 

	^self ffiCall: #(FFIUInt32 clang_defaultReparseOptions(CXTranslationUnit tU)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> defaultSaveOptions: tU [ 

	^self ffiCall: #(FFIUInt32 clang_defaultSaveOptions(CXTranslationUnit tU)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeCXCursorSet: cset [ 

	^self ffiCall: #(FFIVoid clang_disposeCXCursorSet(CXCursorSet cset)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeCXTUResourceUsage: usage [ 

	^self ffiCall: #(FFIVoid clang_disposeCXTUResourceUsage(CXTUResourceUsage usage)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeCodeCompleteResults: results [ 

	^self ffiCall: #(FFIVoid clang_disposeCodeCompleteResults(CXCodeCompleteResults * results)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeDiagnostic: diagnostic [ 

	^self ffiCall: #(FFIVoid clang_disposeDiagnostic(CXDiagnostic diagnostic)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeDiagnosticSet: diags [ 

	^self ffiCall: #(FFIVoid clang_disposeDiagnosticSet(CXDiagnosticSet diags)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeIndex: index [ 

	^self ffiCall: #(FFIVoid clang_disposeIndex(CXIndex index)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeOverriddenCursors: overridden [ 

	^self ffiCall: #(FFIVoid clang_disposeOverriddenCursors(CXCursor * overridden)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeString: string [
	^ self
		ffiCall: #(FFIVoid clang_disposeString #(CXString string))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeTokens: tU Tokens: tokens NumTokens: numTokens [ 

	^self ffiCall: #(FFIVoid clang_disposeTokens(CXTranslationUnit tU, CXToken * tokens, FFIUInt32 numTokens)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> disposeTranslationUnit: arg1 [ 
self flag:#Uncomment.
	"^self ffiCall: #(FFIVoid clang_disposeTranslationUnit(CXTranslationUnit arg1)) module: CXIndexH"
]

{ #category : #'ffi calls' }
CXIndexH >> enableStackTraces [

	^self ffiCall: #(FFIVoid clang_enableStackTraces()) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> equalCursors: arg1 arg2: arg2 [ 

	^self ffiCall: #(FFIUInt32 clang_equalCursors(CXCursor arg1, CXCursor arg2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> equalLocations: loc1 loc2: loc2 [ 

	^self ffiCall: #(FFIUInt32 clang_equalLocations(CXSourceLocation loc1, CXSourceLocation loc2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> equalRanges: range1 range2: range2 [ 

	^self ffiCall: #(FFIUInt32 clang_equalRanges(CXSourceRange range1, CXSourceRange range2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> equalTypes: a B: b [ 

	^self ffiCall: #(FFIUInt32 clang_equalTypes(CXType a, CXType b)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> executeOnThread: fn user_data: user_data stack_size: stack_size [ 

	^self ffiCall: #(FFIVoid clang_executeOnThread(CXIndexHCb12 fn, FFIVoid * user_data, FFIUInt32 stack_size)) options: #( optMayGC )
]

{ #category : #'ffi calls' }
CXIndexH >> findReferencesInFile: cursor file: file visitor: visitor [ 

	^self ffiCall: #(FFIVoid clang_findReferencesInFile(CXCursor cursor, CXFile file, CXCursorAndRangeVisitor visitor)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> findReferencesInFileWithBlock: arg1 arg2: arg2 arg3: arg3 [ 

	^self ffiCall: #(FFIVoid clang_findReferencesInFileWithBlock(CXCursor arg1, CXFile arg2, CXCursorAndRangeVisitorBlock arg3)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> formatDiagnostic: diagnostic Options: options [ 

	^self ffiCall: #(CXString clang_formatDiagnostic(CXDiagnostic diagnostic, FFIUInt32 options)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getArgType: t i: i [ 

	^self ffiCall: #(CXType clang_getArgType(CXType t, FFIUInt32 i)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getArrayElementType: t [ 

	^self ffiCall: #(CXType clang_getArrayElementType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getArraySize: t [ 

	^self ffiCall: #(FFIInt64 clang_getArraySize(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCString: string [
	^ self
		ffiCall: #(FFICharacterType * clang_getCString #(CXStringStruct string))
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCXTUResourceUsage: tU [ 

	^self ffiCall: #(CXTUResourceUsage clang_getCXTUResourceUsage(CXTranslationUnit tU)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCXXAccessSpecifier: arg1 [ 

	^self ffiCall: #(CXCXXAccessSpecifierEnum clang_getCXXAccessSpecifier(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCanonicalCursor: c [ 

	^self ffiCall: #(CXCursor clang_getCanonicalCursor(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCanonicalType: t [ 

	^self ffiCall: #(CXType clang_getCanonicalType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getChildDiagnostics: d [ 

	^self ffiCall: #(CXDiagnosticSet clang_getChildDiagnostics(CXDiagnostic d)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getClangVersion [
	^ self
		call: #(CXStringStruct clang_getClangVersion #())
		module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCompletionAnnotation: completion_string annotation_number: annotation_number [ 

	^self ffiCall: #(CXString clang_getCompletionAnnotation(CXCompletionString completion_string, FFIUInt32 annotation_number)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCompletionAvailability: completion_string [ 

	^self ffiCall: #(CXAvailabilityKindEnum clang_getCompletionAvailability(CXCompletionString completion_string)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCompletionChunkCompletionString: completion_string chunk_number: chunk_number [ 

	^self ffiCall: #(CXCompletionString clang_getCompletionChunkCompletionString(CXCompletionString completion_string, FFIUInt32 chunk_number)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCompletionChunkKind: completion_string chunk_number: chunk_number [ 

	^self ffiCall: #(CXCompletionChunkKindEnum clang_getCompletionChunkKind(CXCompletionString completion_string, FFIUInt32 chunk_number)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCompletionChunkText: completion_string annotation_number: annotation_number [ 

	^self ffiCall: #(CXString clang_getCompletionChunkText(CXCompletionString completion_string, FFIUInt32 annotation_number)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCompletionNumAnnotations: completion_string [ 

	^self ffiCall: #(FFIUInt32 clang_getCompletionNumAnnotations(CXCompletionString completion_string)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCompletionParent: completion_string kind: kind [ 

	^self ffiCall: #(CXString clang_getCompletionParent(CXCompletionString completion_string, CXCursorKindEnum * kind)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCompletionPriority: completion_string [ 

	^self ffiCall: #(FFIUInt32 clang_getCompletionPriority(CXCompletionString completion_string)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursor: arg1 arg2: arg2 [ 

	^self ffiCall: #(CXCursor clang_getCursor(CXTranslationUnit arg1, CXSourceLocation arg2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorAvailability: cursor [ 

	^self ffiCall: #(CXAvailabilityKindEnum clang_getCursorAvailability(CXCursor cursor)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorCompletionString: cursor [ 

	^self ffiCall: #(CXCompletionString clang_getCursorCompletionString(CXCursor cursor)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorDefinition: c [ 

	^self ffiCall: #(CXCursor clang_getCursorDefinition(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorDisplayName: arg1 [ 

	^self ffiCall: #(CXString clang_getCursorDisplayName(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorExtent: arg1 [ 

	^self ffiCall: #(CXSourceRange clang_getCursorExtent(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorKind: c [ 

	^self ffiCall: #(CXCursorKindEnum clang_getCursorKind(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorKindSpelling: kind [ 

	^self ffiCall: #(CXString clang_getCursorKindSpelling(CXCursorKindEnum kind)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorLanguage: cursor [ 

	^self ffiCall: #(CXLanguageKindEnum clang_getCursorLanguage(CXCursor cursor)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorLexicalParent: c [ 

	^self ffiCall: #(CXCursor clang_getCursorLexicalParent(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorLinkage: cursor [ 

	^self ffiCall: #(CXLinkageKindEnum clang_getCursorLinkage(CXCursor cursor)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorLocation: arg1 [ 

	^self ffiCall: #(CXSourceLocation clang_getCursorLocation(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorReferenceNameRange: c NameFlags: nameFlags PieceIndex: pieceIndex [ 

	^self ffiCall: #(CXSourceRange clang_getCursorReferenceNameRange(CXCursor c, FFIUInt32 nameFlags, FFIUInt32 pieceIndex)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorReferenced: c [ 

	^self ffiCall: #(CXCursor clang_getCursorReferenced(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorResultType: arg1 [ 

	^self ffiCall: #(CXType clang_getCursorResultType(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorSemanticParent: c [ 

	^self ffiCall: #(CXCursor clang_getCursorSemanticParent(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorSpelling: arg1 [ 

	^self ffiCall: #(CXString clang_getCursorSpelling(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorType: arg1 [ 

	^self ffiCall: #(CXType clang_getCursorType(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getCursorUSR: arg1 [ 

	^self ffiCall: #(CXString clang_getCursorUSR(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDeclObjCTypeEncoding: arg1 [ 

	^self ffiCall: #(CXString clang_getDeclObjCTypeEncoding(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDefinitionSpellingAndExtent: arg1 startBuf: startBuf endBuf: endBuf startLine: startLine startColumn: startColumn endLine: endLine endColumn: endColumn [ 

	^self ffiCall: #(FFIVoid clang_getDefinitionSpellingAndExtent(CXCursor arg1, FFICharacterType * * startBuf, FFICharacterType * * endBuf, FFIUInt32 * startLine, FFIUInt32 * startColumn, FFIUInt32 * endLine, FFIUInt32 * endColumn)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnostic: unit Index: index [ 

	^self ffiCall: #(CXDiagnostic clang_getDiagnostic(CXTranslationUnit unit, FFIUInt32 index)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticCategory: diagnostic [ 

	^self ffiCall: #(FFIUInt32 clang_getDiagnosticCategory(CXDiagnostic diagnostic)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticCategoryName: category [ 

	^self ffiCall: #(CXString clang_getDiagnosticCategoryName(FFIUInt32 category)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticCategoryText: arg1 [ 

	^self ffiCall: #(CXString clang_getDiagnosticCategoryText(CXDiagnostic arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticFixIt: diagnostic FixIt: fixIt ReplacementRange: replacementRange [ 

	^self ffiCall: #(CXString clang_getDiagnosticFixIt(CXDiagnostic diagnostic, FFIUInt32 fixIt, CXSourceRange * replacementRange)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticInSet: diags Index: index [ 

	^self ffiCall: #(CXDiagnostic clang_getDiagnosticInSet(CXDiagnosticSet diags, FFIUInt32 index)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticLocation: arg1 [ 

	^self ffiCall: #(CXSourceLocation clang_getDiagnosticLocation(CXDiagnostic arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticNumFixIts: diagnostic [ 

	^self ffiCall: #(FFIUInt32 clang_getDiagnosticNumFixIts(CXDiagnostic diagnostic)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticNumRanges: diagnostic [ 

	^self ffiCall: #(FFIUInt32 clang_getDiagnosticNumRanges(CXDiagnostic diagnostic)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticOption: diag Disable: disable [ 

	^self ffiCall: #(CXString clang_getDiagnosticOption(CXDiagnostic diag, CXString * disable)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticRange: diagnostic Range: range [ 

	^self ffiCall: #(CXSourceRange clang_getDiagnosticRange(CXDiagnostic diagnostic, FFIUInt32 range)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticSetFromTU: unit [ 

	^self ffiCall: #(CXDiagnosticSet clang_getDiagnosticSetFromTU(CXTranslationUnit unit)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticSeverity: arg1 [ 

	^self ffiCall: #(CXDiagnosticSeverityEnum clang_getDiagnosticSeverity(CXDiagnostic arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getDiagnosticSpelling: arg1 [ 

	^self ffiCall: #(CXString clang_getDiagnosticSpelling(CXDiagnostic arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getElementType: t [ 

	^self ffiCall: #(CXType clang_getElementType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getEnumConstantDeclUnsignedValue: c [ 

	^self ffiCall: #(FFIUInt64 clang_getEnumConstantDeclUnsignedValue(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getEnumConstantDeclValue: c [ 

	^self ffiCall: #(FFIInt64 clang_getEnumConstantDeclValue(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getEnumDeclIntegerType: arg1 [ 

	^self ffiCall: #(CXType clang_getEnumDeclIntegerType(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getExpansionLocation: location file: file line: line column: column offset: offset [ 

	^self ffiCall: #(FFIVoid clang_getExpansionLocation(CXSourceLocation location, CXFile * file, FFIUInt32 * line, FFIUInt32 * column, FFIUInt32 * offset)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getFile: tu file_name: file_name [ 

	^self ffiCall: #(CXFile clang_getFile(CXTranslationUnit tu, FFICharacterType * file_name)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getFileName: sFile [ 

	^self ffiCall: #(CXString clang_getFileName(CXFile sFile)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getFileTime: sFile [ 

	^self ffiCall: #(CXtime_t clang_getFileTime(CXFile sFile)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getFunctionTypeCallingConv: t [ 

	^self ffiCall: #(CXCallingConvEnum clang_getFunctionTypeCallingConv(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getIBOutletCollectionType: arg1 [ 

	^self ffiCall: #(CXType clang_getIBOutletCollectionType(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getIncludedFile: cursor [ 

	^self ffiCall: #(CXFile clang_getIncludedFile(CXCursor cursor)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getInclusions: tu visitor: visitor client_data: client_data [ 

	^self ffiCall: #(FFIVoid clang_getInclusions(CXTranslationUnit tu, CXInclusionVisitor visitor, CXClientData client_data)) options: #( optMayGC )
]

{ #category : #'ffi calls' }
CXIndexH >> getInstantiationLocation: location file: file line: line column: column offset: offset [ 

	^self ffiCall: #(FFIVoid clang_getInstantiationLocation(CXSourceLocation location, CXFile * file, FFIUInt32 * line, FFIUInt32 * column, FFIUInt32 * offset)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getLocation: tu file: file line: line column: column [ 

	^self ffiCall: #(CXSourceLocation clang_getLocation(CXTranslationUnit tu, CXFile file, FFIUInt32 line, FFIUInt32 column)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getLocationForOffset: tu file: file offset: offset [ 

	^self ffiCall: #(CXSourceLocation clang_getLocationForOffset(CXTranslationUnit tu, CXFile file, FFIUInt32 offset)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNullCursor [

	^self ffiCall: #(CXCursor clang_getNullCursor()) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNullLocation [

	^self ffiCall: #(CXSourceLocation clang_getNullLocation()) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNullRange [

	^self ffiCall: #(CXSourceRange clang_getNullRange()) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNumArgTypes: t [ 

	^self ffiCall: #(FFIInt32 clang_getNumArgTypes(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNumCompletionChunks: completion_string [ 

	^self ffiCall: #(FFIUInt32 clang_getNumCompletionChunks(CXCompletionString completion_string)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNumDiagnostics: tU [ 

	^self ffiCall: #(FFIUInt32 clang_getNumDiagnostics(CXTranslationUnit tU)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNumDiagnosticsInSet: diags [ 

	^self ffiCall: #(FFIUInt32 clang_getNumDiagnosticsInSet(CXDiagnosticSet diags)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNumElements: t [ 

	^self ffiCall: #(FFIInt64 clang_getNumElements(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getNumOverloadedDecls: c [ 

	^self ffiCall: #(FFIUInt32 clang_getNumOverloadedDecls(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getOverloadedDecl: cursor index: index [ 

	^self ffiCall: #(CXCursor clang_getOverloadedDecl(CXCursor cursor, FFIUInt32 index)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getOverriddenCursors: cursor overridden: overridden num_overridden: num_overridden [ 

	^self ffiCall: #(FFIVoid clang_getOverriddenCursors(CXCursor cursor, CXCursor * * overridden, FFIUInt32 * num_overridden)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getPointeeType: t [ 

	^self ffiCall: #(CXType clang_getPointeeType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getPresumedLocation: location filename: filename line: line column: column [ 

	^self ffiCall: #(FFIVoid clang_getPresumedLocation(CXSourceLocation location, CXString * filename, FFIUInt32 * line, FFIUInt32 * column)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getRange: begin end: end [ 

	^self ffiCall: #(CXSourceRange clang_getRange(CXSourceLocation begin, CXSourceLocation end)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getRangeEnd: range [ 

	^self ffiCall: #(CXSourceLocation clang_getRangeEnd(CXSourceRange range)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getRangeStart: range [ 

	^self ffiCall: #(CXSourceLocation clang_getRangeStart(CXSourceRange range)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getRemappings: path [ 

	^self ffiCall: #(CXRemapping clang_getRemappings(FFICharacterType * path)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getRemappingsFromFileList: filePaths numFiles: numFiles [ 

	^self ffiCall: #(CXRemapping clang_getRemappingsFromFileList(FFICharacterType * * filePaths, FFIUInt32 numFiles)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getResultType: t [ 

	^self ffiCall: #(CXType clang_getResultType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getSpecializedCursorTemplate: c [ 

	^self ffiCall: #(CXCursor clang_getSpecializedCursorTemplate(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getSpellingLocation: location file: file line: line column: column offset: offset [ 

	^self ffiCall: #(FFIVoid clang_getSpellingLocation(CXSourceLocation location, CXFile * file, FFIUInt32 * line, FFIUInt32 * column, FFIUInt32 * offset)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTUResourceUsageName: kind [ 

	^self ffiCall: #(FFICharacterType * clang_getTUResourceUsageName(CXTUResourceUsageKindEnum kind)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTemplateCursorKind: c [ 

	^self ffiCall: #(CXCursorKindEnum clang_getTemplateCursorKind(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTokenExtent: arg1 arg2: arg2 [ 

	^self ffiCall: #(CXSourceRange clang_getTokenExtent(CXTranslationUnit arg1, CXToken arg2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTokenKind: arg1 [ 

	^self ffiCall: #(CXTokenKind clang_getTokenKind(CXToken arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTokenLocation: arg1 arg2: arg2 [ 

	^self ffiCall: #(CXSourceLocation clang_getTokenLocation(CXTranslationUnit arg1, CXToken arg2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTokenSpelling: arg1 arg2: arg2 [ 

	^self ffiCall: #(CXString clang_getTokenSpelling(CXTranslationUnit arg1, CXToken arg2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTranslationUnitCursor: arg1 [ 

	^self ffiCall: #(CXCursorStruct clang_getTranslationUnitCursor(void* arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTranslationUnitSpelling: cTUnit [ 

	^self ffiCall: #(CXString clang_getTranslationUnitSpelling(CXTranslationUnit cTUnit)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTypeDeclaration: t [ 

	^self ffiCall: #(CXCursor clang_getTypeDeclaration(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTypeKindSpelling: k [ 

	^self ffiCall: #(CXString clang_getTypeKindSpelling(CXTypeKindEnum k)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> getTypedefDeclUnderlyingType: arg1 [ 

	^self ffiCall: #(CXType clang_getTypedefDeclUnderlyingType(CXCursor arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> hashCursor: c [ 

	^self ffiCall: #(FFIUInt32 clang_hashCursor(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> indexLoc_getCXSourceLocation: loc [ 

	^self ffiCall: #(CXSourceLocation clang_indexLoc_getCXSourceLocation(CXIdxLoc loc)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> indexLoc_getFileLocation: loc indexFile: indexFile file: file line: line column: column offset: offset [ 

	^self ffiCall: #(FFIVoid clang_indexLoc_getFileLocation(CXIdxLoc loc, CXIdxClientFile * indexFile, CXFile * file, FFIUInt32 * line, FFIUInt32 * column, FFIUInt32 * offset)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> indexSourceFile: arg1 client_data: client_data index_callbacks: index_callbacks index_callbacks_size: index_callbacks_size index_options: index_options source_filename: source_filename command_line_args: command_line_args num_command_line_args: num_command_line_args unsaved_files: unsaved_files num_unsaved_files: num_unsaved_files out_TU: out_TU TU_options: tU_options [ 

	^self ffiCall: #(FFIInt32 clang_indexSourceFile(CXIndexAction arg1, CXClientData client_data, CXIndexerCallbacks * index_callbacks, FFIUInt32 index_callbacks_size, FFIUInt32 index_options, FFICharacterType * source_filename, FFICharacterType * * command_line_args, FFIInt32 num_command_line_args, CXUnsavedFileStruct * unsaved_files, FFIUInt32 num_unsaved_files, CXTranslationUnit * out_TU, FFIUInt32 tU_options)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> indexTranslationUnit: arg1 client_data: client_data index_callbacks: index_callbacks index_callbacks_size: index_callbacks_size index_options: index_options arg6: arg6 [ 

	^self ffiCall: #(FFIInt32 clang_indexTranslationUnit(CXIndexAction arg1, CXClientData client_data, CXIndexerCallbacks * index_callbacks, FFIUInt32 index_callbacks_size, FFIUInt32 index_options, CXTranslationUnit arg6)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getCXXClassDeclInfo: arg1 [ 

	^self ffiCall: #(CXIdxCXXClassDeclInfo * clang_index_getCXXClassDeclInfo(CXIdxDeclInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getClientContainer: arg1 [ 

	^self ffiCall: #(CXIdxClientContainer clang_index_getClientContainer(CXIdxContainerInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getClientEntity: arg1 [ 

	^self ffiCall: #(CXIdxClientEntity clang_index_getClientEntity(CXIdxEntityInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getIBOutletCollectionAttrInfo: arg1 [ 

	^self ffiCall: #(CXIdxIBOutletCollectionAttrInfo * clang_index_getIBOutletCollectionAttrInfo(CXIdxAttrInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getObjCCategoryDeclInfo: arg1 [ 

	^self ffiCall: #(CXIdxObjCCategoryDeclInfo * clang_index_getObjCCategoryDeclInfo(CXIdxDeclInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getObjCContainerDeclInfo: arg1 [ 

	^self ffiCall: #(CXIdxObjCContainerDeclInfo * clang_index_getObjCContainerDeclInfo(CXIdxDeclInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getObjCInterfaceDeclInfo: arg1 [ 

	^self ffiCall: #(CXIdxObjCInterfaceDeclInfo * clang_index_getObjCInterfaceDeclInfo(CXIdxDeclInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getObjCPropertyDeclInfo: arg1 [ 

	^self ffiCall: #(CXIdxObjCPropertyDeclInfo * clang_index_getObjCPropertyDeclInfo(CXIdxDeclInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_getObjCProtocolRefListInfo: arg1 [ 

	^self ffiCall: #(CXIdxObjCProtocolRefListInfo * clang_index_getObjCProtocolRefListInfo(CXIdxDeclInfo * arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_isEntityObjCContainerKind: arg1 [ 

	^self ffiCall: #(FFIInt32 clang_index_isEntityObjCContainerKind(CXIdxEntityKind arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_setClientContainer: arg1 arg2: arg2 [ 

	^self ffiCall: #(FFIVoid clang_index_setClientContainer(CXIdxContainerInfo * arg1, CXIdxClientContainer arg2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> index_setClientEntity: arg1 arg2: arg2 [ 

	^self ffiCall: #(FFIVoid clang_index_setClientEntity(CXIdxEntityInfo * arg1, CXIdxClientEntity arg2)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isAttribute: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isAttribute(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isConstQualifiedType: t [ 

	^self ffiCall: #(FFIUInt32 clang_isConstQualifiedType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isCursorDefinition: c [ 

	^self ffiCall: #(FFIUInt32 clang_isCursorDefinition(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isDeclaration: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isDeclaration(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isExpression: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isExpression(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isFileMultipleIncludeGuarded: tu file: file [ 

	^self ffiCall: #(FFIUInt32 clang_isFileMultipleIncludeGuarded(CXTranslationUnit tu, CXFile file)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isFunctionTypeVariadic: t [ 

	^self ffiCall: #(FFIUInt32 clang_isFunctionTypeVariadic(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isInvalid: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isInvalid(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isPODType: t [ 

	^self ffiCall: #(FFIUInt32 clang_isPODType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isPreprocessing: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isPreprocessing(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isReference: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isReference(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isRestrictQualifiedType: t [ 

	^self ffiCall: #(FFIUInt32 clang_isRestrictQualifiedType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isStatement: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isStatement(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isTranslationUnit: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isTranslationUnit(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isUnexposed: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_isUnexposed(CXCursorKindEnum arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isVirtualBase: c [ 

	^self ffiCall: #(FFIUInt32 clang_isVirtualBase(CXCursor c)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> isVolatileQualifiedType: t [ 

	^self ffiCall: #(FFIUInt32 clang_isVolatileQualifiedType(CXType t)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> loadDiagnostics: file error: error errorString: errorString [ 

	^self ffiCall: #(CXDiagnosticSet clang_loadDiagnostics(FFICharacterType * file, CXLoadDiagErrorEnum * error, CXString * errorString)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> parseTranslationUnit: cIdx source_filename: source_filename command_line_args: command_line_args num_command_line_args: num_command_line_args unsaved_files: unsaved_files num_unsaved_files: num_unsaved_files options: options [ 
	^self ffiCall: #(CXTranslationUnit clang_parseTranslationUnit(CXIndex cIdx, FFICharacterType * source_filename, FFICharacterType * * command_line_args, FFIInt32 num_command_line_args, CXUnsavedFileStruct * unsaved_files, FFIUInt32 num_unsaved_files, FFIUInt32 options)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> remap_dispose: arg1 [ 

	^self ffiCall: #(FFIVoid clang_remap_dispose(CXRemapping arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> remap_getFilenames: arg1 index: index original: original transformed: transformed [ 

	^self ffiCall: #(FFIVoid clang_remap_getFilenames(CXRemapping arg1, FFIUInt32 index, CXString * original, CXString * transformed)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> remap_getNumFiles: arg1 [ 

	^self ffiCall: #(FFIUInt32 clang_remap_getNumFiles(CXRemapping arg1)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> reparseTranslationUnit: tU num_unsaved_files: num_unsaved_files unsaved_files: unsaved_files options: options [ 

	^self ffiCall: #(FFIInt32 clang_reparseTranslationUnit(CXTranslationUnit tU, FFIUInt32 num_unsaved_files, CXUnsavedFileStruct * unsaved_files, FFIUInt32 options)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> saveTranslationUnit: tU FileName: fileName options: options [ 

	^self ffiCall: #(FFIInt32 clang_saveTranslationUnit(CXTranslationUnit tU, FFICharacterType * fileName, FFIUInt32 options)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> sortCodeCompletionResults: results NumResults: numResults [ 

	^self ffiCall: #(FFIVoid clang_sortCodeCompletionResults(CXCompletionResult * results, FFIUInt32 numResults)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> toggleCrashRecovery: isEnabled [ 

	^self ffiCall: #(FFIVoid clang_toggleCrashRecovery(FFIUInt32 isEnabled)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> tokenize: tU Range: range Tokens: tokens NumTokens: numTokens [ 

	^self ffiCall: #(FFIVoid clang_tokenize(CXTranslationUnit tU, CXSourceRange range, CXToken * * tokens, FFIUInt32 * numTokens)) module: CXIndexH
]

{ #category : #'ffi calls' }
CXIndexH >> unix64ModuleName [
	^ 'libclang-3.8.so.1'
]

{ #category : #'ffi calls' }
CXIndexH >> unixModuleName [
	^ self unix64ModuleName
]

{ #category : #'ffi calls' }
CXIndexH >> visitChildren: parent visitor: visitor client_data: client_data [ 

	^self ffiCall: #(FFIUInt32 clang_visitChildren(CXCursor parent, CXCursorVisitor visitor, CXClientData client_data)) options: #( optMayGC )
]

{ #category : #'ffi calls' }
CXIndexH >> visitChildrenWithBlock: parent block: block [ 

	^self ffiCall: #(FFIUInt32 clang_visitChildrenWithBlock(CXCursor parent, CXCursorVisitorBlock block)) module: CXIndexH
]
