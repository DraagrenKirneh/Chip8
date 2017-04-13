tests - 8nnn
testBitOpShiftOneLeft

	chip 
		doOpcode: 16r6101;
		doOpcode: 16r810E.
		
	self 
		assert: chip registerX equals: 2;
		assert: chip registerF equals: 0.

	chip 
		doOpcode: 16r6107; 
		doOpcode: 16r810E. 

	self 
		assert: chip registerX equals: 2r1110;
		assert: chip registerF equals: 0.
		
	chip 
		doOpcode: 16r6180; 
		doOpcode: 16r810E. 

	self 
		assert: chip registerX equals: 0;
		assert: chip registerF equals: 1.
	
	chip 
		doOpcode: 16r61FF; 
		doOpcode: 16r810E. 

	self 
		assert: chip registerX equals: 16rFE;
		assert: chip registerF equals: 1.

