tests - 8nnn
testBitOpOr

	chip doOpcode: 16r6F0F.

	self assertDataRegisterAt: 16rF equals: 16r0F.

	chip doOpcode: 16r80F1.
		
	self 
		assert: chip opcodeX equals: 0;
		assert: chip opcodeY equals: 15;
		assert: chip registerX equals: 2r1111.
		
	chip 
		doOpcode: 16r6A03; "set reg[A] to 3"
		doOpcode: 16r6B08; "set reg[B] to 8"
		doOpcode: 16r8AB1. "reg[A] | reg [B]"

	self assert: chip registerX equals: 2r1011.