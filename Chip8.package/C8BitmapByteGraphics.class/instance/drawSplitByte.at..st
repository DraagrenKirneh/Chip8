drawing
drawSplitByte: aByte at: aPosition

	| byteIndex shift |
	
	byteIndex := self byteIndexFor: aPosition.
	shift := (aPosition x % 8).
	
	self 	
		byteAt: byteIndex 
		xorDraw: (aByte bitShift: shift negated);		
		byteAt: byteIndex + 1 
		xorDraw: ((aByte bitShift: 8 - shift) bitAnd: 16rFF)