tests - 8nnn
testBitOpSubXfromY

	chip 
		doOpcode: 16r6100;
		doOpcode: 16r8017.
		
	self 
		assert: chip registerX equals: 0;
		assert: chip registerF equals: 1.
	
	chip 
		doOpcode: 16r6A08; 
		doOpcode: 16r6B07; 
		doOpcode: 16r8BA7. 

	self 
		assert: chip registerX equals: 1;
		assert: chip registerF equals: 1.
		
	chip 
		doOpcode: 16r6200;
		doOpcode: 16r6301;
		doOpcode: 16r8327.
		
	self 
		assert: chip registerX equals: 255;
		assert: chip registerF equals: 0.

	chip 
		doOpcode: 16r62AA;
		doOpcode: 16r63CC;
		doOpcode: 16r8327.
		
	self 
		assert: chip registerX equals: 222;
		assert: chip registerF equals: 0.

		

