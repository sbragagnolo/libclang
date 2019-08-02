Class {
	#name : #CXTUResourceUsageEntryStruct,
	#superclass : #FFIExternalStructure,
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
