emulation
highInstruction: aNumber

	aNumber == 8  ifTrue: [ ^ self instruction8xyn ].
	aNumber == 9  ifTrue: [ ^ self instruction9xy0 ].
	aNumber == 10 ifTrue: [ ^ self instructionAnnn ].
	aNumber == 11 ifTrue: [ ^ self instructionBnnn ].
	aNumber == 12 ifTrue: [ ^ self instructionCxnn ].
	aNumber == 13 ifTrue: [ ^ self instructionDxyn ].
	aNumber == 14 ifTrue: [ ^ self instructionExnn ].
	aNumber == 15 ifTrue: [ ^ self instructionFxnn ].
	
	self error: 'Should not happen'