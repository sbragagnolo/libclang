Class {
	#name : #CXCursorKindEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXCursor_AddrLabelExpr',
		'CXCursor_AnnotateAttr',
		'CXCursor_ArraySubscriptExpr',
		'CXCursor_AsmLabelAttr',
		'CXCursor_AsmStmt',
		'CXCursor_BinaryOperator',
		'CXCursor_BlockExpr',
		'CXCursor_BreakStmt',
		'CXCursor_CStyleCastExpr',
		'CXCursor_CXXAccessSpecifier',
		'CXCursor_CXXBaseSpecifier',
		'CXCursor_CXXBoolLiteralExpr',
		'CXCursor_CXXCatchStmt',
		'CXCursor_CXXConstCastExpr',
		'CXCursor_CXXDeleteExpr',
		'CXCursor_CXXDynamicCastExpr',
		'CXCursor_CXXFinalAttr',
		'CXCursor_CXXForRangeStmt',
		'CXCursor_CXXFunctionalCastExpr',
		'CXCursor_CXXMethod',
		'CXCursor_CXXNewExpr',
		'CXCursor_CXXNullPtrLiteralExpr',
		'CXCursor_CXXOverrideAttr',
		'CXCursor_CXXReinterpretCastExpr',
		'CXCursor_CXXStaticCastExpr',
		'CXCursor_CXXThisExpr',
		'CXCursor_CXXThrowExpr',
		'CXCursor_CXXTryStmt',
		'CXCursor_CXXTypeidExpr',
		'CXCursor_CallExpr',
		'CXCursor_CaseStmt',
		'CXCursor_CharacterLiteral',
		'CXCursor_ClassDecl',
		'CXCursor_ClassTemplate',
		'CXCursor_ClassTemplatePartialSpecialization',
		'CXCursor_CompoundAssignOperator',
		'CXCursor_CompoundLiteralExpr',
		'CXCursor_CompoundStmt',
		'CXCursor_ConditionalOperator',
		'CXCursor_Constructor',
		'CXCursor_ContinueStmt',
		'CXCursor_ConversionFunction',
		'CXCursor_DeclRefExpr',
		'CXCursor_DeclStmt',
		'CXCursor_DefaultStmt',
		'CXCursor_Destructor',
		'CXCursor_DoStmt',
		'CXCursor_EnumConstantDecl',
		'CXCursor_EnumDecl',
		'CXCursor_FieldDecl',
		'CXCursor_FirstAttr',
		'CXCursor_FirstDecl',
		'CXCursor_FirstExpr',
		'CXCursor_FirstInvalid',
		'CXCursor_FirstPreprocessing',
		'CXCursor_FirstRef',
		'CXCursor_FirstStmt',
		'CXCursor_FloatingLiteral',
		'CXCursor_ForStmt',
		'CXCursor_FunctionDecl',
		'CXCursor_FunctionTemplate',
		'CXCursor_GNUNullExpr',
		'CXCursor_GenericSelectionExpr',
		'CXCursor_GotoStmt',
		'CXCursor_IBActionAttr',
		'CXCursor_IBOutletAttr',
		'CXCursor_IBOutletCollectionAttr',
		'CXCursor_IfStmt',
		'CXCursor_ImaginaryLiteral',
		'CXCursor_InclusionDirective',
		'CXCursor_IndirectGotoStmt',
		'CXCursor_InitListExpr',
		'CXCursor_IntegerLiteral',
		'CXCursor_InvalidCode',
		'CXCursor_InvalidFile',
		'CXCursor_LabelRef',
		'CXCursor_LabelStmt',
		'CXCursor_LambdaExpr',
		'CXCursor_LastAttr',
		'CXCursor_LastDecl',
		'CXCursor_LastExpr',
		'CXCursor_LastInvalid',
		'CXCursor_LastPreprocessing',
		'CXCursor_LastRef',
		'CXCursor_LastStmt',
		'CXCursor_LinkageSpec',
		'CXCursor_MacroDefinition',
		'CXCursor_MacroExpansion',
		'CXCursor_MacroInstantiation',
		'CXCursor_MemberRef',
		'CXCursor_MemberRefExpr',
		'CXCursor_Namespace',
		'CXCursor_NamespaceAlias',
		'CXCursor_NamespaceRef',
		'CXCursor_NoDeclFound',
		'CXCursor_NonTypeTemplateParameter',
		'CXCursor_NotImplemented',
		'CXCursor_NullStmt',
		'CXCursor_ObjCAtCatchStmt',
		'CXCursor_ObjCAtFinallyStmt',
		'CXCursor_ObjCAtSynchronizedStmt',
		'CXCursor_ObjCAtThrowStmt',
		'CXCursor_ObjCAtTryStmt',
		'CXCursor_ObjCAutoreleasePoolStmt',
		'CXCursor_ObjCBoolLiteralExpr',
		'CXCursor_ObjCBridgedCastExpr',
		'CXCursor_ObjCCategoryDecl',
		'CXCursor_ObjCCategoryImplDecl',
		'CXCursor_ObjCClassMethodDecl',
		'CXCursor_ObjCClassRef',
		'CXCursor_ObjCDynamicDecl',
		'CXCursor_ObjCEncodeExpr',
		'CXCursor_ObjCForCollectionStmt',
		'CXCursor_ObjCImplementationDecl',
		'CXCursor_ObjCInstanceMethodDecl',
		'CXCursor_ObjCInterfaceDecl',
		'CXCursor_ObjCIvarDecl',
		'CXCursor_ObjCMessageExpr',
		'CXCursor_ObjCPropertyDecl',
		'CXCursor_ObjCProtocolDecl',
		'CXCursor_ObjCProtocolExpr',
		'CXCursor_ObjCProtocolRef',
		'CXCursor_ObjCSelectorExpr',
		'CXCursor_ObjCStringLiteral',
		'CXCursor_ObjCSuperClassRef',
		'CXCursor_ObjCSynthesizeDecl',
		'CXCursor_OverloadedDeclRef',
		'CXCursor_PackExpansionExpr',
		'CXCursor_ParenExpr',
		'CXCursor_ParmDecl',
		'CXCursor_PreprocessingDirective',
		'CXCursor_ReturnStmt',
		'CXCursor_SEHExceptStmt',
		'CXCursor_SEHFinallyStmt',
		'CXCursor_SEHTryStmt',
		'CXCursor_SizeOfPackExpr',
		'CXCursor_StmtExpr',
		'CXCursor_StringLiteral',
		'CXCursor_StructDecl',
		'CXCursor_SwitchStmt',
		'CXCursor_TemplateRef',
		'CXCursor_TemplateTemplateParameter',
		'CXCursor_TemplateTypeParameter',
		'CXCursor_TranslationUnit',
		'CXCursor_TypeAliasDecl',
		'CXCursor_TypeRef',
		'CXCursor_TypedefDecl',
		'CXCursor_UnaryExpr',
		'CXCursor_UnaryOperator',
		'CXCursor_UnexposedAttr',
		'CXCursor_UnexposedDecl',
		'CXCursor_UnexposedExpr',
		'CXCursor_UnexposedStmt',
		'CXCursor_UnionDecl',
		'CXCursor_UsingDeclaration',
		'CXCursor_UsingDirective',
		'CXCursor_VarDecl',
		'CXCursor_VariableRef',
		'CXCursor_WhileStmt'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXCursorKindEnum class >> enumDecl [
	^#(
	CXCursor_FirstDecl 1
	CXCursor_UnexposedDecl 1
	CXCursor_StructDecl 2
	CXCursor_UnionDecl 3
	CXCursor_ClassDecl 4
	CXCursor_EnumDecl 5
	CXCursor_FieldDecl 6
	CXCursor_EnumConstantDecl 7
	CXCursor_FunctionDecl 8
	CXCursor_VarDecl 9
	CXCursor_ParmDecl 10
	CXCursor_ObjCInterfaceDecl 11
	CXCursor_ObjCCategoryDecl 12
	CXCursor_ObjCProtocolDecl 13
	CXCursor_ObjCPropertyDecl 14
	CXCursor_ObjCIvarDecl 15
	CXCursor_ObjCInstanceMethodDecl 16
	CXCursor_ObjCClassMethodDecl 17
	CXCursor_ObjCImplementationDecl 18
	CXCursor_ObjCCategoryImplDecl 19
	CXCursor_TypedefDecl 20
	CXCursor_CXXMethod 21
	CXCursor_Namespace 22
	CXCursor_LinkageSpec 23
	CXCursor_Constructor 24
	CXCursor_Destructor 25
	CXCursor_ConversionFunction 26
	CXCursor_TemplateTypeParameter 27
	CXCursor_NonTypeTemplateParameter 28
	CXCursor_TemplateTemplateParameter 29
	CXCursor_FunctionTemplate 30
	CXCursor_ClassTemplate 31
	CXCursor_ClassTemplatePartialSpecialization 32
	CXCursor_NamespaceAlias 33
	CXCursor_UsingDirective 34
	CXCursor_UsingDeclaration 35
	CXCursor_TypeAliasDecl 36
	CXCursor_ObjCSynthesizeDecl 37
	CXCursor_ObjCDynamicDecl 38
	CXCursor_LastDecl 39
	CXCursor_CXXAccessSpecifier 39
	CXCursor_FirstRef 40
	CXCursor_ObjCSuperClassRef 40
	CXCursor_ObjCProtocolRef 41
	CXCursor_ObjCClassRef 42
	CXCursor_TypeRef 43
	CXCursor_CXXBaseSpecifier 44
	CXCursor_TemplateRef 45
	CXCursor_NamespaceRef 46
	CXCursor_MemberRef 47
	CXCursor_LabelRef 48
	CXCursor_OverloadedDeclRef 49
	CXCursor_LastRef 50
	CXCursor_VariableRef 50
	CXCursor_FirstInvalid 70
	CXCursor_InvalidFile 70
	CXCursor_NoDeclFound 71
	CXCursor_NotImplemented 72
	CXCursor_LastInvalid 73
	CXCursor_InvalidCode 73
	CXCursor_FirstExpr 100
	CXCursor_UnexposedExpr 100
	CXCursor_DeclRefExpr 101
	CXCursor_MemberRefExpr 102
	CXCursor_CallExpr 103
	CXCursor_ObjCMessageExpr 104
	CXCursor_BlockExpr 105
	CXCursor_IntegerLiteral 106
	CXCursor_FloatingLiteral 107
	CXCursor_ImaginaryLiteral 108
	CXCursor_StringLiteral 109
	CXCursor_CharacterLiteral 110
	CXCursor_ParenExpr 111
	CXCursor_UnaryOperator 112
	CXCursor_ArraySubscriptExpr 113
	CXCursor_BinaryOperator 114
	CXCursor_CompoundAssignOperator 115
	CXCursor_ConditionalOperator 116
	CXCursor_CStyleCastExpr 117
	CXCursor_CompoundLiteralExpr 118
	CXCursor_InitListExpr 119
	CXCursor_AddrLabelExpr 120
	CXCursor_StmtExpr 121
	CXCursor_GenericSelectionExpr 122
	CXCursor_GNUNullExpr 123
	CXCursor_CXXStaticCastExpr 124
	CXCursor_CXXDynamicCastExpr 125
	CXCursor_CXXReinterpretCastExpr 126
	CXCursor_CXXConstCastExpr 127
	CXCursor_CXXFunctionalCastExpr 128
	CXCursor_CXXTypeidExpr 129
	CXCursor_CXXBoolLiteralExpr 130
	CXCursor_CXXNullPtrLiteralExpr 131
	CXCursor_CXXThisExpr 132
	CXCursor_CXXThrowExpr 133
	CXCursor_CXXNewExpr 134
	CXCursor_CXXDeleteExpr 135
	CXCursor_UnaryExpr 136
	CXCursor_ObjCStringLiteral 137
	CXCursor_ObjCEncodeExpr 138
	CXCursor_ObjCSelectorExpr 139
	CXCursor_ObjCProtocolExpr 140
	CXCursor_ObjCBridgedCastExpr 141
	CXCursor_PackExpansionExpr 142
	CXCursor_SizeOfPackExpr 143
	CXCursor_LambdaExpr 144
	CXCursor_ObjCBoolLiteralExpr 145
	CXCursor_LastExpr 145
	CXCursor_UnexposedStmt 200
	CXCursor_FirstStmt 200
	CXCursor_LabelStmt 201
	CXCursor_CompoundStmt 202
	CXCursor_CaseStmt 203
	CXCursor_DefaultStmt 204
	CXCursor_IfStmt 205
	CXCursor_SwitchStmt 206
	CXCursor_WhileStmt 207
	CXCursor_DoStmt 208
	CXCursor_ForStmt 209
	CXCursor_GotoStmt 210
	CXCursor_IndirectGotoStmt 211
	CXCursor_ContinueStmt 212
	CXCursor_BreakStmt 213
	CXCursor_ReturnStmt 214
	CXCursor_AsmStmt 215
	CXCursor_ObjCAtTryStmt 216
	CXCursor_ObjCAtCatchStmt 217
	CXCursor_ObjCAtFinallyStmt 218
	CXCursor_ObjCAtThrowStmt 219
	CXCursor_ObjCAtSynchronizedStmt 220
	CXCursor_ObjCAutoreleasePoolStmt 221
	CXCursor_ObjCForCollectionStmt 222
	CXCursor_CXXCatchStmt 223
	CXCursor_CXXTryStmt 224
	CXCursor_CXXForRangeStmt 225
	CXCursor_SEHTryStmt 226
	CXCursor_SEHExceptStmt 227
	CXCursor_SEHFinallyStmt 228
	CXCursor_NullStmt 230
	CXCursor_DeclStmt 231
	CXCursor_LastStmt 231
	CXCursor_TranslationUnit 300
	CXCursor_UnexposedAttr 400
	CXCursor_FirstAttr 400
	CXCursor_IBActionAttr 401
	CXCursor_IBOutletAttr 402
	CXCursor_IBOutletCollectionAttr 403
	CXCursor_CXXFinalAttr 404
	CXCursor_CXXOverrideAttr 405
	CXCursor_AnnotateAttr 406
	CXCursor_LastAttr 407
	CXCursor_AsmLabelAttr 407
	CXCursor_PreprocessingDirective 500
	CXCursor_FirstPreprocessing 500
	CXCursor_MacroDefinition 501
	CXCursor_MacroInstantiation 502
	CXCursor_MacroExpansion 502
	CXCursor_LastPreprocessing 503
	CXCursor_InclusionDirective 503
)
]
