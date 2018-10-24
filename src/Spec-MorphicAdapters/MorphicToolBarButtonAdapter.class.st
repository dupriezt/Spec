Class {
	#name : #MorphicToolBarButtonAdapter,
	#superclass : #AbstractMorphicAdapter,
	#category : #'Spec-MorphicAdapters-Base'
}

{ #category : #factory }
MorphicToolBarButtonAdapter >> buildWidget [
	| button |
	
	button := (ITButtonMorph
			on: self model
			getState: nil 
			action:  #execute)
		helpText: self model help;
		beIconTop;
		hResizing: #rigid;
		vResizing: #spaceFill;
		borderWidth: 0;
		borderColor: Color transparent;		
		cellPositioning: #center;
		yourself.
		
	^ button
]