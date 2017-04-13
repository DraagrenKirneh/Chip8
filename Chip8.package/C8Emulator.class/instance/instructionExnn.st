instructions
instructionExnn

	| masked |
	
	masked := self opcode00FF.
	
	masked == 16r9E ifTrue: [ 		
		(keyboard isKeyDownAt: self registerX) ifTrue: [ self incrementPC ].
		^ self incrementPC
	].
	
	masked == 16rA1 ifTrue: [ 
		(keyboard isKeyDownAt: self registerX) ifFalse: [ self incrementPC ].
		^ self incrementPC
	].
	
	self handleUnknownOpcode.

	