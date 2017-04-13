tests - Fxyn
testInstructionFx65

	0 to: 15 do: [ :ix |
		self chipMemoryAt: 16r330 + ix put: ix + 2
	].
		
	self assertDataRegisterAt: 7 equals: 0.
			
	chip
		memoryPointer: 16r330; 
		doOpcode: 16rFF65.
	
	0 to: 15 do: [ :ix |
		self assertDataRegisterAt: ix equals: ix + 2
	].

	self assert: chip memoryPointer equals: 16r330 + 16.
	
	self
		chipMemoryAt: 16r330 put: 5;
		chipMemoryAt: 16r331 put: 7.
	
	chip
		memoryPointer: 16r330;
		doOpcode: 16rF065.
	
	self 
		assertDataRegisterAt: 0 equals: 5;
		assertDataRegisterAt: 1 equals: 3;
		assert: chip memoryPointer equals: 16r331