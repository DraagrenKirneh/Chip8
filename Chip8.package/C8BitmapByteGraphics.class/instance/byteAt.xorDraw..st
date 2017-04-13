drawing
byteAt: byteIndex xorDraw: aByte

	| currentByte xorByte |
	
	byteIndex > 256 ifTrue: [ ^ self ].
	currentByte := bitmap byteAt: byteIndex.
	xorByte := currentByte bitXor: aByte.
	
	bitmap byteAt: byteIndex put: xorByte.
	
	collision ifTrue: [ ^ self ].	
	collision := (currentByte bitAnd: xorByte) > 0.