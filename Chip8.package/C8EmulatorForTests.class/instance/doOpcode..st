emulation
doOpcode: aNumber

	memory 
		at: pc + 1	put: ((aNumber bitShift: -8) bitAnd: 16rFF);
		at: pc + 2 	put: (aNumber bitAnd: 16rFF).
			
	self doInstruction