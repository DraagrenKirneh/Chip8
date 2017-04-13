tests
testInstruction2nnn

	self assert: chip stack isEmpty.

	chip doOpcode: 16r2FEF.
	
	self 
		assert: chip programCounter equals: 16r0FEF;
		assert: chip stack size = 1. 
	
	chip doOpcode: 16r2F00.
		
	self 
		assert: chip programCounter equals: 16r0F00; 
		assert: chip stack size = 2. 