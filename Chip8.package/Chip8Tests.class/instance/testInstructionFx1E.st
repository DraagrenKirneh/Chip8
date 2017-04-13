tests - Fxyn
testInstructionFx1E

	chip
		memoryPointer: 0;
		doOpcode: 16r61AC; 
		doOpcode: 16rF11E.
	
	self 
		assert: chip memoryPointer equals: 16rAC;
		assert: chip registerF equals: 0.
		
	chip 
		memoryPointer: 16r0F01;
		doOpcode: 16r61FF;
		doOpcode: 16rF11E.
	
	self 
		assert: chip memoryPointer equals: 16r00FF + 16r0F01;
		assert: chip registerF equals: 1.
	 
	