tests - Fxyn
testInstructionFx15
	
	self assert: chip delayTimer equals: 0.
	
	chip 
		doOpcode: 16r610A;
		doOpcode: 16rF115.
		
	self assert: chip delayTimer equals: (16rA)