Class {
	#name : #CXIdxCXXClassDeclInfoStruct,
	#superclass : #FFIExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost types' }
CXIdxCXXClassDeclInfoStruct class >> ffiBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]

{ #category : #accessing }
CXIdxCXXClassDeclInfoStruct class >> fieldsDesc [
	^#(
	CXIdxDeclInfo * declInfo;
	CXIdxBaseClassInfo * * bases;
	FFIUInt32 numBases;

	)
]
