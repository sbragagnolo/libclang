Class {
	#name : #CXDiagnosticSeverityEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXDiagnostic_Error',
		'CXDiagnostic_Fatal',
		'CXDiagnostic_Ignored',
		'CXDiagnostic_Note',
		'CXDiagnostic_Warning'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXDiagnosticSeverityEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXDiagnosticSeverityEnum class >> enumDecl [
	^#(
	CXDiagnostic_Ignored 0
	CXDiagnostic_Note 1
	CXDiagnostic_Warning 2
	CXDiagnostic_Error 3
	CXDiagnostic_Fatal 4
)
]
