Extension { #name : #SpMenuItemPresenter }

{ #category : #'*Spec2-Commands' }
SpMenuItemPresenter >> keyText: aString [

	self flag: #TODO. "This is for backward compatibility and needs to be removed!"
	self shortcut: aString first meta
]
