instructions
setRegX: xIndex to: aNumber

	(xIndex between: 0 and: 15) ifFalse: [ self error ].
	(aNumber between: 0 and: 16rFF) ifFalse: [ self error ].
	
	stream uint16: (16r6000 + (xIndex << 8) + aNumber)