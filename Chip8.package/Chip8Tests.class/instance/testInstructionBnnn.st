tests
testInstructionBnnn

	self assertDataRegisterAt: 1 equals: 0.
	
	chip doOpcode: 16rB123.
	
	self assert: chip programCounter equals: 16r0123.

	chip dataRegister at: 1 put: 12.
	self assert: (chip dataRegister at: 1) equals: 12.
	
	chip doOpcode: 16rB123.

	self assert: chip programCounter equals: 16r0123 + 12.
		
