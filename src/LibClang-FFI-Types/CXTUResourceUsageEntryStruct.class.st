Class {
	#name : #CXTUResourceUsageEntryStruct,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_AMOUNT',
		'OFFSET_KIND'
	],
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXTUResourceUsageEntryStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXTUResourceUsageEntryStruct class >> fieldsDesc [
	^#(
	CXTUResourceUsageKindEnum kind;
	FFIUInt32 amount;

	)
]

{ #category : #'accessing structure variables' }
CXTUResourceUsageEntryStruct >> amount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_AMOUNT
]

{ #category : #'accessing structure variables' }
CXTUResourceUsageEntryStruct >> amount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_AMOUNT put: anObject
]

{ #category : #'accessing structure variables' }
CXTUResourceUsageEntryStruct >> kind [
	"This method was automatically generated"
	^CXTUResourceUsageKindEnum fromInteger: (handle unsignedLongAt: OFFSET_KIND)
]

{ #category : #'accessing structure variables' }
CXTUResourceUsageEntryStruct >> kind: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_KIND put: anObject value
]
