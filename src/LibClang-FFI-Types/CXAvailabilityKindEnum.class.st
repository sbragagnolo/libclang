Class {
	#name : #CXAvailabilityKindEnum,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'CXAvailability_Available',
		'CXAvailability_Deprecated',
		'CXAvailability_NotAccessible',
		'CXAvailability_NotAvailable'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'enum declaration' }
CXAvailabilityKindEnum class >> enumDecl [
	^#(
	CXAvailability_Available 0
	CXAvailability_Deprecated 1
	CXAvailability_NotAvailable 2
	CXAvailability_NotAccessible 3
)
]
