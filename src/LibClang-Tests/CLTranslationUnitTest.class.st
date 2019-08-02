Class {
	#name : #CLTranslationUnitTest,
	#superclass : #TestCase,
	#category : #'LibClang-Tests'
}

{ #category : #diagnostics }
CLTranslationUnitTest >> testDiagnosticAt [
	| tu d |
	tu := CLTranslationUnit source: 'int f0() { } '.
	d := tu diagnosticAt: 1.
	self assert: (d isKindOf: CLDiagnostic).
	self deny: d handle isNil
]

{ #category : #diagnostics }
CLTranslationUnitTest >> testDiagnosticSet [
	| tu dSet |
	tu := CLTranslationUnit source: 'int f0() { } '.
	dSet := tu diagnosticSet.
	self assert: (dSet isKindOf: CLDiagnosticSet).
	self deny: dSet handle isNil
]

{ #category : #diagnostics }
CLTranslationUnitTest >> testNumDiagnostics [
	| tu  |
	tu := CLTranslationUnit source: 'int f0() { } '.
	self assert: tu numDiagnostics = 1
]
