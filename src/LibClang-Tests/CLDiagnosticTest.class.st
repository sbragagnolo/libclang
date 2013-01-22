Class {
	#name : #CLDiagnosticTest,
	#superclass : #TestCase,
	#category : #'LibClang-Tests'
}

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testCategory [
	| tu diag |
	tu := CLTranslationUnit source: 'int f(int i) { return 7; }' allWarnings: true.
	self assert: tu diagnosticSet size = 1.
	diag := tu diagnosticAt: 1.
	self assert: diag category = 2
]

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testCategoryText [
	| tu diag |
	tu := CLTranslationUnit source: 'int f(int i) { return 7; }' allWarnings: true.
	self assert: tu diagnosticSet size = 1.
	diag := tu diagnosticAt: 1.
	self assert: diag categoryText = 'Semantic Issue'
]

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testFixItAt [
	| tu diag fix |
	tu := CLTranslationUnit source: 'struct { int f0; } x = { f0 : 1 };'.
	diag := tu diagnosticAt: 1.
	self assert: diag severity = CXDiagnosticSeverityEnum CXDiagnostic_Warning.
	self assert: (diag spelling beginsWith: 'use of GNU old-style').
	
	self assert: diag numFixIts = 1.
	fix := diag fixitAt: 1.
	self assert: fix range start line = 1.
	self assert: fix range start column = 26.
	self assert: fix range end line = 1.
	self assert: fix range end column = 30.
	self assert: fix replacementString  = '.f0 = '
]

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testLocation [
| tu diagnostic  |
	tu := CLTranslationUnit source: 'int f0() { } '.
	diagnostic := tu diagnosticAt: 1.
	self assert: diagnostic location line = 1.
	self assert: diagnostic location column = 12.
]

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testNumFixIts [
	|tu diag|
	tu := CLTranslationUnit source: 'struct { int f0; } x = { f0 : 1 };'.
	diag := tu diagnosticAt: 1.
	self assert: diag severity = CXDiagnosticSeverityEnum CXDiagnostic_Warning.
	self assert: (diag spelling beginsWith: 'use of GNU old-style').
	self assert: diag numFixIts = 1.
	
]

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testRange [
	|tu diag range|
	tu := CLTranslationUnit source: 'void f() { int i = "a" + 1; }'.
	self assert: (tu numDiagnostics = 1 ).
	diag := tu diagnosticAt: 1.
	self assert: (diag spelling beginsWith: 'incompatible pointer to' ).
	self assert: diag numRanges = 1.
	range := diag rangeAt: 1.
	self assert: range start line = 1.
	self assert: range start column = 20.
	self assert: range end line = 1.
	self assert: range end column = 27.
]

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testSeverity [
| tu diagnostic  |
	tu := CLTranslationUnit source: 'int f0() { } '.
	diagnostic := tu diagnosticAt: 1.
	self assert: diagnostic severity = CXDiagnosticSeverityEnum CXDiagnostic_Warning.
]

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testSeverityError [
| tu diagnostic  |
	tu := CLTranslationUnit source: 
	'void foo(int c, int *x) {
		if (c) return 3;
   		 *x = 5; } ' .
	diagnostic := tu diagnosticAt: 1.
	self assert: diagnostic severity = CXDiagnosticSeverityEnum CXDiagnostic_Error.
]

{ #category : #'as yet unclassified' }
CLDiagnosticTest >> testSpelling [
| tu diagnostic  |
	tu := CLTranslationUnit source: 'int f0() { } '.
	diagnostic := tu diagnosticAt: 1.
	self assert: diagnostic spelling = 'control reaches end of non-void function'
]
