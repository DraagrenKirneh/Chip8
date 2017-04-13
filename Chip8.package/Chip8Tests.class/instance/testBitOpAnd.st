tests - 8nnn
testBitOpAnd

	chip doOpcode: 16r6F0F.

	self assertDataRegisterAt: 16rF equals: 16r0F.

	chip doOpcode: 16r80F2.
		
	self 
		assert: chip opcodeX equals: 0;
		assert: chip opcodeY equals: 15;
		assert: chip registerX equals: 2r0000.
		
	chip 
		doOpcode: 16r6A07; "set reg[A] to 7"
		doOpcode: 16r6B0B; "set reg[B] to 11"
		doOpcode: 16r8AB2. "reg[A] & reg [B]"

	self assert: chip registerX equals: 2r0011.