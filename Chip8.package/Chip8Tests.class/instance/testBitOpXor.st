tests - 8nnn
testBitOpXor

	chip 
		doOpcode: 16r6F0F;
		doOpcode: 16r80F3.
		
	self assert: chip registerX equals: 2r1111.
		
	chip 
		doOpcode: 16r6A0E; "set reg[A] to 14"
		doOpcode: 16r6B07; "set reg[B] to 7"
		doOpcode: 16r8AB3. "reg[A] ^ reg [B]"

	self assert: chip registerX equals: 2r1001.