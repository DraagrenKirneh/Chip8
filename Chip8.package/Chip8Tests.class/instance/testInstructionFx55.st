tests - Fxyn
testInstructionFx55

	1 to: 16 do: [ :ix |
		chip dataRegister at: ix put: ix
	].

	chip
		memoryPointer: 16r330; 
		doOpcode: 16rFF55.
	
	1 to: 16 do: [ :ix |
		self assertMemoryAt: 16r32F + ix equals: ix
	].

	self assert: chip memoryPointer equals: 16r330 + 16.
	
	chip dataRegister 
		at: 1 put: 5;
		at: 2 put: 10.
	
	chip
		memoryPointer: 16r330;
		doOpcode: 16rF055.
	
	self 
		assertMemoryAt: 16r330 equals: 5;
		assertMemoryAt: 16r331 equals: 2;
		assert: chip memoryPointer equals: 16r331