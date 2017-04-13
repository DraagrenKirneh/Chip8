instructions
setRegX: xIndex toRegY: yIndex

	(xIndex between: 0 and: 15) ifFalse: [ self error ].
	(yIndex between: 0 and: 15) ifFalse: [ self error ].
	
	stream uint16: (16r8000 + (xIndex << 8) + (yIndex << 4))