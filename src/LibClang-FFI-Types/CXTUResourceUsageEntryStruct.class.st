Class {
	#name : #CXTUResourceUsageEntryStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXTUResourceUsageEntryStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXTUResourceUsageEntryStruct class >> fieldsDesc [
	^#(
	CXTUResourceUsageKindEnum kind;
	NBUInt32 amount;

	)
]

{ #category : #'nativeboost types' }
CXTUResourceUsageEntryStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
