tests
testInstructionAnnn

	chip doOpcode: 16rA123.
	
	self assert: chip memoryPointer equals: 16r0123.

	chip doOpcode: 16rA321.

	self assert: chip memoryPointer equals: 16r0321.
		
