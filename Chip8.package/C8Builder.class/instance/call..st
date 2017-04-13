as yet unclassified
call: aNumber 

	| real |
	real := (aNumber * 2) + 16r200.
	real > 16rFFF ifTrue: [ self error ].
	
	stream uint16: 16r2000 + real