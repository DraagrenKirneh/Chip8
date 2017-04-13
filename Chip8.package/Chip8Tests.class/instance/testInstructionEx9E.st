tests
testInstructionEx9E

	| pc |
	
	pc := chip programCounter.
	
	chip doOpcode: 16rE09E.
	
	self assert: pc + 2 equals: chip programCounter.
	
	chip setKeyboardStateTo: 16rFF.
	
	pc := chip programCounter.
	
	chip doOpcode: 16rE09E.
	
	self assert: pc + 4 equals: chip programCounter.
	
	chip 
		doOpcode: 16r6201;
		setKeyboardStateTo: 16r01.
	
	pc := chip programCounter.
	
	chip doOpcode: 16rE29E.
	
	self assert: pc + 2 equals: chip programCounter.