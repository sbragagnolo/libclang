Extension { #name : #CXStringStruct }

{ #category : #'*libclang-core' }
CXStringStruct >> asString [
	|cstr|
	cstr := CXIndexH uniqueInstance getCString: self.
	^cstr readString 
]

{ #category : #'*libclang-core' }
CXStringStruct >> disposeString [
	CXIndexH uniqueInstance disposeString: self
]
