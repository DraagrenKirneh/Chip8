tests - Fxyn
testInstructionFx29

	chip
		doOpcode: 16r610A; 
		doOpcode: 16rF129.
	
	self assert: chip memoryPointer equals: 16rA * 16r5.
		
	chip 
		doOpcode: 16r6101;
		doOpcode: 16rF129.
	
	self assert: chip memoryPointer equals: 16r5

	 
	