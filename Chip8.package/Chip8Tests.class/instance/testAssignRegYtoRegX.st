tests - 8nnn
testAssignRegYtoRegX
		
	chip 
		doOpcode: 16r6101;
		doOpcode: 16r620A;
		doOpcode: 16r8120.
		
	self assert: chip registerX equals: 10.