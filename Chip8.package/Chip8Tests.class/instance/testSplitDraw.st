tests - math
testSplitDraw
	
	self 
		assertHighData: 2r10101010 xor: 2r10110011 pixelStart: 1 equals: 2r11110011;
		assertHighData: 2r10101010 xor: 2r10110011 pixelStart: 7 equals: 2r10101011;
			
		assertLowData: 	2r10101010 xor: 2r10110011 pixelStart: 1 equals: 2r00101010;		
		assertLowData: 	2r10101010 xor: 2r10110011 pixelStart: 7 equals: 2r11001100