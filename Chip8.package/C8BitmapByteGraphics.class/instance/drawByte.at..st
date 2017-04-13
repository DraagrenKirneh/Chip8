drawing
drawByte: aByte at: aPosition
	
	(aPosition x % 8) isZero 
		ifTrue: [ self byteAt: (self byteIndexFor: aPosition) xorDraw: aByte ]
		ifFalse: [ self drawSplitByte: aByte at: aPosition ]