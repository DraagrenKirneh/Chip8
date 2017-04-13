as yet unclassified
regX: aNumber equals: anotherNumber

	(aNumber between: 0 and: 15) ifFalse: [ self error ].
	(anotherNumber between: 0 and: 16rFF) ifFalse: [ self error ].
	
	stream uint16: (16r3000 + (aNumber << 8) + anotherNumber)
	
	