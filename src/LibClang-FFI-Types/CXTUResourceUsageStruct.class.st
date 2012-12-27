Class {
	#name : #CXTUResourceUsageStruct,
	#superclass : #NBExternalStructure,
	#type : #bytes,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXTUResourceUsageStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXTUResourceUsageStruct class >> fieldsDesc [
	^#(
	NBVoid * data;
	NBUInt32 numEntries;
	CXTUResourceUsageEntry * entries;

	)
]

{ #category : #'nativeboost types' }
CXTUResourceUsageStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
