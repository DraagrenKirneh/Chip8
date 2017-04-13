adding
addToMemPtr: xIndex

	(xIndex between: 0 and: 15) ifFalse: [ self error ].
	
	stream uint16: 16rF01E + (xIndex << 8)