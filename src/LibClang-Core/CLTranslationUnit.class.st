Class {
	#name : #CLTranslationUnit,
	#superclass : #Object,
	#traits : 'TLibClang',
	#classTraits : 'TLibClang classTrait',
	#instVars : [
		'handle',
		'filename',
		'index',
		'options',
		'numDiagnostics'
	],
	#category : #'LibClang-Core'
}

{ #category : #private }
CLTranslationUnit class >> argsFrom: anArrayOfStrings [
	| argsP |
	argsP := NativeBoost allocate: anArrayOfStrings size * NativeBoost forCurrentPlatform pointerSize.
	anArrayOfStrings
		withIndexDo: [ :arg :idx | 
			argsP
				nbInt32AtOffset: (idx - 1) * NativeBoost forCurrentPlatform pointerSize
				put: (NBExternalAddress fromString: arg) value ].
	^ {argsP.
	(anArrayOfStrings size)}
]

{ #category : #finalization }
CLTranslationUnit class >> finalizeResourceData: aHandle [
	self clang disposeTranslationUnit: aHandle
]

{ #category : #'instance creation' }
CLTranslationUnit class >> fromSource: filename args: anArrayOfStrings unsavedFiles: unsavedFiles options: options index: anIndex [
	| args argsP unsavedArray handler index |
	args := self argsFrom: anArrayOfStrings.
	unsavedArray := self unsavedFilesArray: unsavedFiles.
	index isNil
		ifTrue: [ index := CLIndex default ].
	handler := self clang
		parseTranslationUnit: index handle
		source_filename: filename
		command_line_args: args first
		num_command_line_args: args second
		unsaved_files: (unsavedArray at: 1)
		num_unsaved_files: unsavedArray size
		options: options.
	^ self handle: handler index: index filename: filename
]

{ #category : #'instance creation' }
CLTranslationUnit class >> handle: aHandle index: aCLIndex filename: aFileName [
	^ self new
		handle: aHandle;
		index: aCLIndex;
		filename: aFileName
]

{ #category : #'instance creation' }
CLTranslationUnit class >> source: aString [
	^ self source: aString lang: #c allWarnings: false
]

{ #category : #'instance creation' }
CLTranslationUnit class >> source: aString allWarnings: aBoolean [
	^ self source: aString lang: #c allWarnings: aBoolean
]

{ #category : #'instance creation' }
CLTranslationUnit class >> source: aString lang: aLanguage allWarnings: hasWarnings [
	| args fname |
	args := OrderedCollection new.
	aLanguage = #cpp
		ifTrue: [ 
			fname := 't.cpp'.
			args add: '-std=c++11 ' ]
		ifFalse: [ 
			aLanguage = #objc
				ifTrue: [ fname := 't.m' ]
				ifFalse: [ 
					aLanguage = #c
						ifTrue: [ fname := 't.c' ]
						ifFalse: [ self error: 'unknown language ' ] ] ].
	hasWarnings
		ifTrue: [ 
			args
				add: '-Wall';
				add: '-Wextra' ].
	^ self
		fromSource: fname
		args: args
		unsavedFiles: {(fname -> aString)}
		options: 0
		index: nil
]

{ #category : #private }
CLTranslationUnit class >> unsavedFilesArray: anArrayOfAssociations [
	| unsavedArrayType unsavedArray |
	unsavedArrayType := NBExternalArray ofType: #CXUnsavedFileStruct.
	unsavedArray := unsavedArrayType new: anArrayOfAssociations size.
	anArrayOfAssociations
		withIndexDo: [ :uF :idx | 
			unsavedArray
				at: idx
				put:
					(CXUnsavedFileStruct new
						Filename: (NBExternalAddress fromString: uF key);
						Contents: (NBExternalAddress fromString: uF value);
						Length: uF value size;
						yourself) ].
	^ unsavedArray
]

{ #category : #'as yet unclassified' }
CLTranslationUnit >> cursor [
	^ self clang getTranslationUnitCursor: handle
]

{ #category : #diagnostics }
CLTranslationUnit >> diagnosticAt: anIndex [
	| max |
	max := self numDiagnostics.
	(anIndex < 1 or: [ anIndex > max ])
		ifTrue: [ 
			^ SubscriptOutOfBounds
				signalFor: anIndex
				lowerBound: 1
				upperBound: max 
				in: self ].
	^ CLDiagnostic new handle: (self clang getDiagnostic: handle Index: anIndex - 1)
]

{ #category : #diagnostics }
CLTranslationUnit >> diagnosticSet [
	^CLDiagnosticSet new handle: (self clang getDiagnosticSetFromTU: handle)
]

{ #category : #accessing }
CLTranslationUnit >> filename [
	^ filename
]

{ #category : #accessing }
CLTranslationUnit >> filename: anObject [
	filename := anObject
]

{ #category : #accessing }
CLTranslationUnit >> handle [
	^ handle
]

{ #category : #accessing }
CLTranslationUnit >> handle: anObject [
	handle := anObject.
	handle ifNil: [ ^ self error: 'Invalid TranslationUnit handle' ].
	NBExternalResourceManager addResource: self data: handle
]

{ #category : #accessing }
CLTranslationUnit >> index [
	^ index
]

{ #category : #accessing }
CLTranslationUnit >> index: anObject [
	index := anObject
]

{ #category : #diagnostics }
CLTranslationUnit >> numDiagnostics [
	^ numDiagnostics isNil
		ifTrue: [ numDiagnostics := self clang getNumDiagnostics: handle ]
		ifFalse: [ numDiagnostics ]
]

{ #category : #accessing }
CLTranslationUnit >> options [
	^ options
]

{ #category : #accessing }
CLTranslationUnit >> options: anObject [
	options := anObject
]

{ #category : #'as yet unclassified' }
CLTranslationUnit >> spelling [
	| cxstr str |
	cxstr := self clang getTranslationUnitSpelling: handle.
	str := cxstr asString.
	cxstr disposeString. "free the cxstring"
	^ str
]
