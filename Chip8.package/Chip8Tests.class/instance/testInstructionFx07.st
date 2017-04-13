tests - Fxyn
testInstructionFx07
	
	chip
		delayTimer: 60; 
		doOpcode: 16rF107.
		
	self assert: chip registerX equals: 60