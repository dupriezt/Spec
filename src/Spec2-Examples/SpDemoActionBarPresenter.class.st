"
This demo shows an action bar.
"
Class {
	#name : #SpDemoActionBarPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'actionBar',
		'text'
	],
	#category : #'Spec2-Examples-Demo-Buttons'
}

{ #category : #specs }
SpDemoActionBarPresenter class >> defaultSpec [

	^ SpBoxLayout newVertical 
		add: #text;
		addLast: #actionBar expand: false fill: false padding: 0;
		yourself
]

{ #category : #initialization }
SpDemoActionBarPresenter >> initializeWidgets [
	
	actionBar := self newActionBar
		add: (self newButton
			label: 'Add'; 
			icon: (self iconNamed: #smallOk);
			help: 'Add.';
			action: [ self inform: 'Add' ];
			yourself);
		add: (self newButton
			label: 'Remove'; 
			icon: (self iconNamed: #smallCancel);
			help: 'Remove.';
			action: [ self inform: 'Remove' ];
			yourself);
		addLast: (self newButton
			label: 'Other'; 
			help: 'Other.';
			action: [ self inform: 'Other' ];
			yourself);
		yourself.

	text := self newText
]
