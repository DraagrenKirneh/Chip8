instructions
instruction2nnn
	
	" 2NNN | Flow | Call subroutine at NNN "

	stack addLast: pc.	
	pc := self opcodeNNN.
	
	pc < 16r200 ifTrue: [ self error ].