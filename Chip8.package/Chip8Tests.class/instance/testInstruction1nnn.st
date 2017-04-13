tests
testInstruction1nnn

	chip doOpcode: 16r1FEF.
	
	self assert: chip programCounter equals: 16r0FEF.
	
	chip doOpcode: 16r1F00.
		
	self assert: chip programCounter equals: 16r0F00 