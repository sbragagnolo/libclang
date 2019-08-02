Class {
	#name : #CXTypeKindEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXType_BlockPointer',
		'CXType_Bool',
		'CXType_Char16',
		'CXType_Char32',
		'CXType_Char_S',
		'CXType_Char_U',
		'CXType_Complex',
		'CXType_ConstantArray',
		'CXType_Dependent',
		'CXType_Double',
		'CXType_Enum',
		'CXType_FirstBuiltin',
		'CXType_Float',
		'CXType_FunctionNoProto',
		'CXType_FunctionProto',
		'CXType_Int',
		'CXType_Int128',
		'CXType_Invalid',
		'CXType_LValueReference',
		'CXType_LastBuiltin',
		'CXType_Long',
		'CXType_LongDouble',
		'CXType_LongLong',
		'CXType_NullPtr',
		'CXType_ObjCClass',
		'CXType_ObjCId',
		'CXType_ObjCInterface',
		'CXType_ObjCObjectPointer',
		'CXType_ObjCSel',
		'CXType_Overload',
		'CXType_Pointer',
		'CXType_RValueReference',
		'CXType_Record',
		'CXType_SChar',
		'CXType_Short',
		'CXType_Typedef',
		'CXType_UChar',
		'CXType_UInt',
		'CXType_UInt128',
		'CXType_ULong',
		'CXType_ULongLong',
		'CXType_UShort',
		'CXType_Unexposed',
		'CXType_Vector',
		'CXType_Void',
		'CXType_WChar'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXTypeKindEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXTypeKindEnum class >> enumDecl [
	^#(
	CXType_Invalid 0
	CXType_Unexposed 1
	CXType_FirstBuiltin 2
	CXType_Void 2
	CXType_Bool 3
	CXType_Char_U 4
	CXType_UChar 5
	CXType_Char16 6
	CXType_Char32 7
	CXType_UShort 8
	CXType_UInt 9
	CXType_ULong 10
	CXType_ULongLong 11
	CXType_UInt128 12
	CXType_Char_S 13
	CXType_SChar 14
	CXType_WChar 15
	CXType_Short 16
	CXType_Int 17
	CXType_Long 18
	CXType_LongLong 19
	CXType_Int128 20
	CXType_Float 21
	CXType_Double 22
	CXType_LongDouble 23
	CXType_NullPtr 24
	CXType_Overload 25
	CXType_Dependent 26
	CXType_ObjCId 27
	CXType_ObjCClass 28
	CXType_LastBuiltin 29
	CXType_ObjCSel 29
	CXType_Complex 100
	CXType_Pointer 101
	CXType_BlockPointer 102
	CXType_LValueReference 103
	CXType_RValueReference 104
	CXType_Record 105
	CXType_Enum 106
	CXType_Typedef 107
	CXType_ObjCInterface 108
	CXType_ObjCObjectPointer 109
	CXType_FunctionNoProto 110
	CXType_FunctionProto 111
	CXType_ConstantArray 112
	CXType_Vector 113
)
]
