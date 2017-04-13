tests
testInstructionCxnn

	chip 
		setNextRandom: 16r99;
		doOpcode: 16rC177.
	
	self assertDataRegisterAt: 1 equals: 17
	
		
