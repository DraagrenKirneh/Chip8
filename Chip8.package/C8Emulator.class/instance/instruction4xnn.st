instructions
instruction4xnn

	self incrementPC.
	self registerX = self opcode00FF ifFalse: [ self incrementPC ]