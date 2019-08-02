Class {
	#name : #CXCallingConvEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXCallingConv_AAPCS',
		'CXCallingConv_AAPCS_VFP',
		'CXCallingConv_C',
		'CXCallingConv_Default',
		'CXCallingConv_Invalid',
		'CXCallingConv_Unexposed',
		'CXCallingConv_X86FastCall',
		'CXCallingConv_X86Pascal',
		'CXCallingConv_X86StdCall',
		'CXCallingConv_X86ThisCall'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXCallingConvEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXCallingConvEnum class >> enumDecl [
	^#(
	CXCallingConv_Default 0
	CXCallingConv_C 1
	CXCallingConv_X86StdCall 2
	CXCallingConv_X86FastCall 3
	CXCallingConv_X86ThisCall 4
	CXCallingConv_X86Pascal 5
	CXCallingConv_AAPCS 6
	CXCallingConv_AAPCS_VFP 7
	CXCallingConv_Invalid 100
	CXCallingConv_Unexposed 200
)
]
