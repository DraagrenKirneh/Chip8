tests - Fxyn
testInstructionFx18
	
	self assert: chip soundTimer equals: 0.
	
	chip 
		doOpcode: 16r610A;
		doOpcode: 16rF118.
		
	self assert: chip soundTimer equals: (16rA)