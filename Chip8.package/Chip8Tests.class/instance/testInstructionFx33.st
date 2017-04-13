tests - Fxyn
testInstructionFx33

	chip
		memoryPointer: 16r330;
		doOpcode: 16r617B; 
		doOpcode: 16rF133.
	
	self 
		assertMemoryAt: 16r330 equals: 1;
		assertMemoryAt: 16r331 equals: 2;
		assertMemoryAt: 16r332 equals: 3.
	
	chip
		doOpcode: 16r61CF; 
		doOpcode: 16rF133.
	
	self 
		assertMemoryAt: 16r330 equals: 2;
		assertMemoryAt: 16r331 equals: 0;
		assertMemoryAt: 16r332 equals: 7.