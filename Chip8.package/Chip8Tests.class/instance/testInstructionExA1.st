tests
testInstructionExA1

	| pc |
	
	pc := chip programCounter.
	
	chip doOpcode: 16rE0A1.
	
	self assert: pc + 4 equals: chip programCounter.
	
	chip setKeyboardStateTo: 16rFF.
	
	pc := chip programCounter.
	
	chip doOpcode: 16rE0A1.
	
	self assert: pc + 2 equals: chip programCounter.
	
	chip 
		doOpcode: 16r6201;
		setKeyboardStateTo: 16r01.
	
	pc := chip programCounter.
	
	chip doOpcode: 16rE2A1.
	
	self assert: pc + 4 equals: chip programCounter.