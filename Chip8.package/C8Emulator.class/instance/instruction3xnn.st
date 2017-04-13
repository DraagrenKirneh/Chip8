instructions
instruction3xnn

	self incrementPC. 		
	self registerX = self opcode00FF ifTrue: [ self incrementPC ].