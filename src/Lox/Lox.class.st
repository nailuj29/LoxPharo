"
I am the main entrypoint to Lox. I control all parts of running Lox code.
"
Class {
	#name : #Lox,
	#superclass : #Object,
	#category : #Lox
}

{ #category : #running }
Lox >> repl [
	"Opens a window for entering code one line at a time, as a repl"
	"The code is entered in a textbox, and when enter is pressed, added to a textbox to be output"
]

{ #category : #running }
Lox >> runScript [
	"Opens a dialog to enter a script, and runs it. Outputs to transcript"
	
]
