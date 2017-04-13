tests
testInstruction5nnn

	| pc |

	pc := chip programCounter.

	chip 
		doOpcode: 16r6101;
		doOpcode: 16r6202;
		doOpcode: 16r5120.
	
	self assertProgramCounterEquals: pc + 4 + 2.
	
	chip 
		doOpcode: 16r6101;
		doOpcode: 16r5120.
	
	self assertProgramCounterEquals: pc + 6 + 4