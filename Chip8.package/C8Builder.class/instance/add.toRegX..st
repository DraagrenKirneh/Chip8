adding
add: aNumber toRegX: xIndex

	(aNumber between: 0 and: 16rFF) ifFalse: [ self error ].
	(xIndex between: 0 and: 15) ifFalse: [ self error ].
	
	stream uint16: (16r7000 + (xIndex << 8) + aNumber)