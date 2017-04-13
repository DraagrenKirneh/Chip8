tests - math
assertHighData: dataByte xor: xorByte pixelStart: aNumber equals: aByte

	| shift result |
	
	shift := (aNumber \\ 8).
	
	result := dataByte bitXor: (xorByte bitShift: shift negated).
	
	self assert: result equals: aByte