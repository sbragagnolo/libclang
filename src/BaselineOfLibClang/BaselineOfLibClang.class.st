Class {
	#name : #BaselineOfLibClang,
	#superclass : #BaselineOf,
	#category : #BaselineOfLibClang
}

{ #category : #baselines }
BaselineOfLibClang >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'TalkFFIRuntime'
				with: [ spec repository: 'github://sbragagnolo/TalkFFI/src' ].
			spec
				package: 'LibClang-FFI-Types';
				package: 'LibClang-FFI-Binding'
					with: [ spec
						requires: #('TalkFFIRuntime' 'LibClang-FFI-Types');
						postLoadDoIt: #postloadForCore ];
				package: 'LibClang-Core'
					with: [ spec requires: #('LibClang-FFI-Types' 'LibClang-FFI-Binding') ];
				package: 'LibClang-Examples'
					with: [ spec requires: #('LibClang-Core') ];
				package: 'LibClang-Tests'
					with: [ spec requires: #('LibClang-Core') ].
			spec
				group: 'default' with: #('All');
				group: 'All' with: #('Core' 'Examples' 'Tests');
				group: 'Core' with: #('LibClang-Core');
				group: 'Examples' with: #('LibClang-Examples');
				group: 'Tests' with: #('LibClang-Tests') ]
]

{ #category : #baselines }
BaselineOfLibClang >> postloadForCore [

	(Smalltalk at: #LibClangMap) initialize.
]
