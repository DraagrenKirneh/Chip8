tests - program
test10to0Loop

	chip loadProgram: self program10to0Loop.
	
	100 timesRepeat: [ chip doInstruction ]
