tests - math
assertLowData: dataByte xor: xorByte pixelStart: aNumber equals: aByte

	| shift result |
	
	shift := (aNumber \\ 8).
	
	result := dataByte bitXor: ((xorByte bitShift: 8 - shift) bitAnd: 16rFF).
	
	self assert: result equals: aByte