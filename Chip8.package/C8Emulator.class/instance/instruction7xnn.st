instructions
instruction7xnn
	
	self 
		registerX: self registerX + self opcode00FF;
		incrementPC
