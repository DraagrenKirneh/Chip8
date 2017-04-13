tests
testInstruction4nnn

	| pc |

	pc := chip programCounter.

	chip 
		doOpcode: 16r6101;
		doOpcode: 16r4101.
	
	self assertProgramCounterEquals: pc + 2 + 2.
	
	chip doOpcode: 16r4100.
	
	self assertProgramCounterEquals: pc + 4 + 4