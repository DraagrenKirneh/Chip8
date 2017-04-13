instructions
instruction1nnn

	" 1NNN | Flow | Jump to address NNN "

	pc := self opcodeNNN.
	
	pc < 16r200 ifTrue: [ self error ].