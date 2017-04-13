tests - 8nnn
testBitOpShiftOneRight

	chip 
		doOpcode: 16r6101;
		doOpcode: 16r8106.
		
	self 
		assert: chip registerX equals: 0;
		assert: chip registerF equals: 1.

	chip 
		doOpcode: 16r6A0E; 
		doOpcode: 16r8A06. 

	self 
		assert: chip registerX equals: 7;
		assert: chip registerF equals: 0.
		

