"
The window for the code entry field
"
Class {
	#name : #CodeEntry,
	#superclass : #SpPresenter,
	#instVars : [
		'codeEntryField',
		'buttonRunCode'
	],
	#category : #Lox
}

{ #category : #specs }
CodeEntry class >> defaultSpec [ 
	"Lays out the components"
	^ SpBoxLayout newVertical 
		add: #codeEntryField expand: true fill: true padding: 0;
		add: #buttonRunCode expand: false fill: false padding: 0;
		yourself
]

{ #category : #initialization }
CodeEntry >> connectPresenters [ 
	"Add logic to the UI. For now, just prints to the Transcript"
	buttonRunCode action: [ Transcript show: codeEntryField text ]
]

{ #category : #initialization }
CodeEntry >> initializePresenters [ 
	"Sets up the widgets in this window"
	
	"initialize widgets"
	codeEntryField := self newText.
	buttonRunCode := self newButton.
	
	buttonRunCode 
		label: 'Run';
		icon: (self iconNamed: #run).
		
	"specify order of focus"
	self focusOrder
		add: codeEntryField;
		add: buttonRunCode 
	
]
