Class {
	#name : #CXIdxObjCPropertyDeclInfoStruct,
	#superclass : #NBExternalStructure,
	#category : #'LibClang-FFI-Types'
}

{ #category : #'nativeboost mapping' }
CXIdxObjCPropertyDeclInfoStruct class >> asNBExternalType: gen [
	^NBExternalStructureType objectClass: self
]

{ #category : #accessing }
CXIdxObjCPropertyDeclInfoStruct class >> fieldsDesc [
	^#(
	CXIdxDeclInfo * declInfo;
	CXIdxEntityInfo * getter;
	CXIdxEntityInfo * setter;

	)
]

{ #category : #'nativeboost types' }
CXIdxObjCPropertyDeclInfoStruct class >> nbBindingOf: aTypeName [
	^ LibClangMap at: aTypeName
]
