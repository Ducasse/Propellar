Class {
	#name : #SpPropellarPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'searchInputPresenter',
		'noteListPresenter',
		'textPanePresenter'
	],
	#category : #Propellar
}

{ #category : #opening }
SpPropellarPresenter class >> defaultSpec [

	^ SpBoxLayout newTopToBottom 
		add: #searchInputPresenter;
		add: (SpPanedLayout newTopToBottom
			position: 25 percent;
			add: #noteListPresenter ;
			add: #textPanePresenter;
			yourself);
		yourself		
			
	
]

{ #category : #opening }
SpPropellarPresenter class >> open [
	<script>
	self new openWithSpec
]

{ #category : #initialization }
SpPropellarPresenter >> initializePresenters [

	super initializePresenters.
	searchInputPresenter := self newTextInput.
	noteListPresenter := self newList.
	textPanePresenter := self newText.
	
]

{ #category : #initialization }
SpPropellarPresenter >> initializeWindow: aWindowPresenter [
	super initializeWindow: aWindowPresenter.
	aWindowPresenter initialExtent: 550 @ 700
]
