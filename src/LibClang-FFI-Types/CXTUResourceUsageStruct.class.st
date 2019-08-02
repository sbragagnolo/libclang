Class {
	#name : #CXTUResourceUsageStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXTUResourceUsageStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXTUResourceUsageStruct class >> fieldsDesc [
	^#(
	NBVoid * data;
	NBUInt32 numEntries;
	CXTUResourceUsageEntry * entries;

	)
]
