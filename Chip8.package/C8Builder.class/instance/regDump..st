adding
regDump: xIndex

	(xIndex between: 0 and: 15) ifFalse: [ self error ].
	
	stream uint16: 16rF055 + (xIndex << 8)