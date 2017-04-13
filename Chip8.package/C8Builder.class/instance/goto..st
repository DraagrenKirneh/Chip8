instructions
goto: aNumber 
	| real |
	real := (aNumber * 2) + 16r200.
	real > 16rFFF ifTrue: [ self error ].
	
	stream uint16: 16r1000 + real