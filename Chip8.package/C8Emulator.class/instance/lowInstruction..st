emulation
lowInstruction: aNumber

	aNumber == 0 ifTrue: [ ^ self instruction0nnn ].
	aNumber == 1 ifTrue: [ ^ self instruction1nnn ].
	aNumber == 2 ifTrue: [ ^ self instruction2nnn ].
	aNumber == 3 ifTrue: [ ^ self instruction3xnn ].
	aNumber == 4 ifTrue: [ ^ self instruction4xnn ].
	aNumber == 5 ifTrue: [ ^ self instruction5xy0 ].
	aNumber == 6 ifTrue: [ ^ self instruction6xnn ].
	aNumber == 7 ifTrue: [ ^ self instruction7xnn ].
	
	self error: 'Should not happen'