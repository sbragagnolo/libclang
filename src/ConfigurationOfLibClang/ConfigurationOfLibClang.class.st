Class {
	#name : #ConfigurationOfLibClang,
	#superclass : #Object,
	#instVars : [
		'project'
	],
	#classVars : [
		'LastVersionLoad'
	],
	#category : #ConfigurationOfLibClang
}

{ #category : #'development support' }
ConfigurationOfLibClang class >> DevelopmentSupport [

"See the methods in the 'development support' category on the class-side of MetacelloBaseConfiguration. Decide what development support methods you would like to use and copy them the the class-side of your configuration."
	<apiDocumentation>

]

{ #category : #private }
ConfigurationOfLibClang class >> baseConfigurationClassIfAbsent: aBlock [

	^Smalltalk
		at: #MetacelloBaseConfiguration
		ifAbsent: [ 
			self ensureMetacelloBaseConfiguration.
			Smalltalk at: #MetacelloBaseConfiguration ifAbsent: aBlock ].

]

{ #category : #private }
ConfigurationOfLibClang class >> ensureMetacello [

	(self baseConfigurationClassIfAbsent: []) ensureMetacello
]

{ #category : #private }
ConfigurationOfLibClang class >> ensureMetacelloBaseConfiguration [

	Smalltalk
		at: #MetacelloBaseConfiguration
		ifAbsent: [ 
			| repository version |
			repository := MCHttpRepository location: 'http://seaside.gemstone.com/ss/metacello' user: '' password: ''.
			repository
				versionReaderForFileNamed: 'Metacello-Base-DaleHenrichs.2.mcz'
				do: [ :reader | 
					version := reader version.
					version load.
					version workingCopy repositoryGroup addRepository: repository ] ]
]

{ #category : #'metacello tool support' }
ConfigurationOfLibClang class >> isMetacelloConfig [
	"Answer true and the Metacello tools will operate on you"
	
	^true
]

{ #category : #loading }
ConfigurationOfLibClang class >> load [
	"Load the #stable version defined for this platform. The #stable version is the version that is recommended to be used on this platform."

	"self load"

	<apiDocumentation>
	^(self project version: #stable) load
]

{ #category : #loading }
ConfigurationOfLibClang class >> loadBleedingEdge [
	"Load the latest versions of the mcz files defined for this project. It is not likely that the #bleedingEdge has been tested."

	"self loadBleedingEdge"

	<apiDocumentation>
	^(self project version: #bleedingEdge) load
]

{ #category : #loading }
ConfigurationOfLibClang class >> loadDevelopment [
	"Load the #development version defined for this platform. The #development version will change over time and is not expected to be stable."

	"self loadDevelopment"

	<apiDocumentation>
	^(self project version: #development) load
]

{ #category : #accessing }
ConfigurationOfLibClang class >> project [

	^self new project
]

{ #category : #'development support' }
ConfigurationOfLibClang class >> validate [
	"Check the configuration for Errors, Critical Warnings, and Warnings (see class comment for MetacelloMCVersionValidator for more information). 
	Errors identify specification issues that will result in unexpected behaviour when you load the configuration. 
	Critical Warnings identify specification issues that may result in unexpected behavior when you load the configuration.
	Warnings identify specification issues that are technically correct, but are worth take a look at."

	"self validate"

	<apiDocumentation>
	self ensureMetacello.
	^ ((Smalltalk at: #MetacelloToolBox) validateConfiguration: self debug: #() recurse: false) explore
]

{ #category : #baselines }
ConfigurationOfLibClang >> baseline10: spec [
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/CipT/LibClang/main'.
		spec 
			project: 'NativeBoost' with: [
				spec
					className: 'ConfigurationOfNativeBoost';
					versionString: #'stable';
					repository: 'http://www.squeaksource.com/NativeBoost' ];
			project: 'TalkFFIRuntime' with: [
				spec
					className: 'ConfigurationOfTalkFFIRuntime';
					versionString: #'bleedingEdge';
					repository: 'http://smalltalkhub.com/mc/CipT/TalkFFI/main' ].
		spec 
			package: 'LibClang-FFI-Types' with: [
				spec requires: #('NativeBoost' 'TalkFFIRuntime' ). ];
			package: 'LibClang-FFI-Binding' with: [
				spec requires: #('NativeBoost' 'TalkFFIRuntime' 'LibClang-FFI-Types' ). ];
			package: 'LibClang-Core' with: [
				spec requires: #('LibClang-FFI-Types' 'LibClang-FFI-Binding' ). ];
			package: 'LibClang-Examples' with: [
				spec requires: #('LibClang-Core' ). ].
		spec 
			group: 'default' with: #('Core' );
			group: 'Core' with: #('LibClang-Core' );
			group: 'Examples' with: #('LibClang-Examples' ). ].

]

{ #category : #'symbolic versions' }
ConfigurationOfLibClang >> development: spec [
	<symbolicVersion: #'development'>

	spec for: #'common' version: '1.0'.

]

{ #category : #accessing }
ConfigurationOfLibClang >> project [

	^ project ifNil: [ | constructor |
		"Bootstrap Metacello if it is not already loaded"
		(self class baseConfigurationClassIfAbsent: []) ensureMetacello.
		"Construct Metacello project"
		constructor := (Smalltalk at: #MetacelloVersionConstructor) on: self.
		project := constructor project.
		project loadType: #linear. "change to #atomic if desired"
		project ]
]

{ #category : #versions }
ConfigurationOfLibClang >> version10: spec [
	<version: '1.0' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'initial version'.
		spec author: 'CiprianTeodorov'.
		spec timestamp: '12/27/2012 14:14'.
		spec 
			project: 'NativeBoost' with: #'stable';
			project: 'TalkFFIRuntime' with: '1.0'.
		spec 
			package: 'LibClang-FFI-Types' with: 'LibClang-FFI-Types-CiprianTeodorov.1';
			package: 'LibClang-FFI-Binding' with: 'LibClang-FFI-Binding-CiprianTeodorov.1';
			package: 'LibClang-Core' with: 'LibClang-Core-CiprianTeodorov.1';
			package: 'LibClang-Examples' with: 'LibClang-Examples-CiprianTeodorov.1'. ].

]
