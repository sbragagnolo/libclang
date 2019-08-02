Class {
	#name : #CLIndex,
	#superclass : #Object,
	#traits : 'TLibClang',
	#classTraits : 'TLibClang classTrait',
	#instVars : [
		'handle',
		'excludePCHDecls',
		'diags'
	],
	#category : #'LibClang-Core'
}

{ #category : #'as yet unclassified' }
CLIndex class >> default [
	^ self new create 
]

{ #category : #finalization }
CLIndex class >> finalizeResourceData: aHandle [
	aHandle isNull
		ifFalse: [ self clang disposeIndex: aHandle ]
]

{ #category : #'as yet unclassified' }
CLIndex class >> new [
	^super new initialize 
]

{ #category : #'as yet unclassified' }
CLIndex >> create [
	| index |
	index := self clang createIndex: excludePCHDecls displayDiagnostics: diags.
	index isNil
		ifTrue: [ self error: 'could not create index' ]
		ifFalse: [ 
			handle := index.
			NBExternalResourceManager addResource: self data: handle ].
]

{ #category : #'as yet unclassified' }
CLIndex >> displayDiagnostics [
	diags := 1.
]

{ #category : #'as yet unclassified' }
CLIndex >> excludeDeclarationsFromPCH [
	excludePCHDecls := 1.
]

{ #category : #accessing }
CLIndex >> handle [
	^ handle
]

{ #category : #accessing }
CLIndex >> handle: anObject [
	handle := anObject
]

{ #category : #'as yet unclassified' }
CLIndex >> initialize [ 
	super initialize.
	excludePCHDecls := 0.
	diags := 0.
]

{ #category : #'as yet unclassified' }
CLIndex >> translationUnit: aPCHFile [
	| fileP |
	fileP := NBExternalAddress fromString: aPCHFile.
	^ CLTranslationUnit
		handle: (self clang createTranslationUnit: self handle ast_filename: fileP)
		index: self
		filename: aPCHFile
]

{ #category : #'as yet unclassified' }
CLIndex >> translationUnitFromSource: aSourceFile options: anArrayOfStrings [
	| fileP tuHandle args argsP |
	fileP := NBExternalAddress fromString: aSourceFile.
	args := anArrayOfStrings collect: [ :each | NBExternalAddress fromString: each ].
	argsP := NativeBoost allocate: args size * 4.
	args withIndexDo: [ :arg :idx | argsP nbInt32AtOffset: (idx - 1) * 4 put: arg value ].
	tuHandle := self clang
		createTranslationUnitFromSourceFile: self handle
		source_filename: fileP
		num_clang_command_line_args: args size
		clang_command_line_args: argsP
		num_unsaved_files: 0
		unsaved_files: CXUnsavedFileStruct new.
	^ CLTranslationUnit handle: tuHandle index: self filename: aSourceFile
]
