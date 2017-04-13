tests
testInstruction9xy0

	| pc |

	chip doOpcode: 16r6101.
	
	pc := chip programCounter.
	
	chip doOpcode: 16r9100.
	
	self assert: pc + 4 equals: chip programCounter.
	
	chip doOpcode: 16r9110.
	
	self assert: pc + 4 + 2 equals: chip programCounter.