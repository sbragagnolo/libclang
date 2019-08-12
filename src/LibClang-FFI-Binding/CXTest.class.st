Class {
	#name : #CXTest,
	#superclass : #FFILibrary,
	#category : #'LibClang-FFI-Binding'
}

{ #category : #'accessing platform' }
CXTest >> getClangVersion [
"	self uniqueInstance getClangVersion"
	^self ffiCall: #(CXString clang_getClangVersion()) module: CXTest
]

{ #category : #'accessing platform' }
CXTest >> unix64ModuleName [
	"
	self uniqueInstance getClangVersion
	"

	^ {'libclang-3.8.so.1' . '/usr/lib/llvm-3.8/lib/libclang-3.8.0.so'.
	'/usr/lib/llvm-3.8/lib/libclang-3.8.so'.
	'/usr/lib/llvm-3.8/lib/libclang-3.8.so.1'.
	'/usr/lib/x86_64-linux-gnu/libclang-3.8.so'.
	'/usr/lib/x86_64-linux-gnu/libclang-3.8.so.1'} at:1
]
