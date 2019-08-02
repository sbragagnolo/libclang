Class {
	#name : #CXAvailabilityKindEnum,
	#superclass : #NBExternalEnumeration,
	#classVars : [
		'CXAvailability_Available',
		'CXAvailability_Deprecated',
		'CXAvailability_NotAccessible',
		'CXAvailability_NotAvailable'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXAvailabilityKindEnum class >> asNBExternalType: gen [
	^NBExternalEnumerationType objectClass: self
]

{ #category : #'enum declaration' }
CXAvailabilityKindEnum class >> enumDecl [
	^#(
	CXAvailability_Available 0
	CXAvailability_Deprecated 1
	CXAvailability_NotAvailable 2
	CXAvailability_NotAccessible 3
)
]
