instructions
instruction5xy0
	
	self incrementPC.
	self registerX = self registerY ifTrue: [ self incrementPC ]