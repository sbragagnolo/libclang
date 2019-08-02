Class {
	#name : #CXIdxEntityKindEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXIdxEntity_CXXClass',
		'CXIdxEntity_CXXConstructor',
		'CXIdxEntity_CXXConversionFunction',
		'CXIdxEntity_CXXDestructor',
		'CXIdxEntity_CXXInstanceMethod',
		'CXIdxEntity_CXXNamespace',
		'CXIdxEntity_CXXNamespaceAlias',
		'CXIdxEntity_CXXStaticMethod',
		'CXIdxEntity_CXXStaticVariable',
		'CXIdxEntity_CXXTypeAlias',
		'CXIdxEntity_Enum',
		'CXIdxEntity_EnumConstant',
		'CXIdxEntity_Field',
		'CXIdxEntity_Function',
		'CXIdxEntity_ObjCCategory',
		'CXIdxEntity_ObjCClass',
		'CXIdxEntity_ObjCClassMethod',
		'CXIdxEntity_ObjCInstanceMethod',
		'CXIdxEntity_ObjCIvar',
		'CXIdxEntity_ObjCProperty',
		'CXIdxEntity_ObjCProtocol',
		'CXIdxEntity_Struct',
		'CXIdxEntity_Typedef',
		'CXIdxEntity_Unexposed',
		'CXIdxEntity_Union',
		'CXIdxEntity_Variable'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXIdxEntityKindEnum class >> enumDecl [
	^#(
	CXIdxEntity_Unexposed 0
	CXIdxEntity_Typedef 1
	CXIdxEntity_Function 2
	CXIdxEntity_Variable 3
	CXIdxEntity_Field 4
	CXIdxEntity_EnumConstant 5
	CXIdxEntity_ObjCClass 6
	CXIdxEntity_ObjCProtocol 7
	CXIdxEntity_ObjCCategory 8
	CXIdxEntity_ObjCInstanceMethod 9
	CXIdxEntity_ObjCClassMethod 10
	CXIdxEntity_ObjCProperty 11
	CXIdxEntity_ObjCIvar 12
	CXIdxEntity_Enum 13
	CXIdxEntity_Struct 14
	CXIdxEntity_Union 15
	CXIdxEntity_CXXClass 16
	CXIdxEntity_CXXNamespace 17
	CXIdxEntity_CXXNamespaceAlias 18
	CXIdxEntity_CXXStaticVariable 19
	CXIdxEntity_CXXStaticMethod 20
	CXIdxEntity_CXXInstanceMethod 21
	CXIdxEntity_CXXConstructor 22
	CXIdxEntity_CXXDestructor 23
	CXIdxEntity_CXXConversionFunction 24
	CXIdxEntity_CXXTypeAlias 25
)
]
