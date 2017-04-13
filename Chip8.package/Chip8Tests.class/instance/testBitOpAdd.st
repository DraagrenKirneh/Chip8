tests - 8nnn
testBitOpAdd

	chip 
		doOpcode: 16r6106;
		doOpcode: 16r8014.
		
	self 
		assert: chip registerX equals: 6;
		assert: chip registerF equals: 0.
	
	chip 
		doOpcode: 16r6A07; "set reg[A] to 7"
		doOpcode: 16r6B08; "set reg[B] to 8"
		doOpcode: 16r8AB4. "reg[A] + reg [B]"

	self 
		assert: chip registerX equals: 15;
		assert: chip registerF equals: 0.
		
	chip 
		doOpcode: 16r62AA;
		doOpcode: 16r8224.
		
	self 
		assert: chip registerX equals: (16rAA + 16rAA) & 16rFF;
		assert: chip registerF equals: 1.
		