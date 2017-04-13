tests
testInstruction3nnn

	| pc |

	pc := chip programCounter.

	chip 
		doOpcode: 16r6101;
		doOpcode: 16r3101.
	
	self assertProgramCounterEquals: pc + 2 + 4.
	
	chip doOpcode: 16r3100.
	
	self assertProgramCounterEquals: pc + 6 + 2