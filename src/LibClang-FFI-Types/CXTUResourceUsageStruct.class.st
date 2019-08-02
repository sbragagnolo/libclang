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
	FFIVoid * data;
	FFIUInt32 numEntries;
	CXTUResourceUsageEntry * entries;

	)
]
