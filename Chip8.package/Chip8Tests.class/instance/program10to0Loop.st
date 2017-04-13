programs
program10to0Loop

	^ C8Builder build: [ :program |
		program  
		"0"	setRegX: 2 to: 1; 
		"1"	call: 3;
		"2"	goto: 1; 
		"3"	setRegX: 1 to: 10; 
		"4"	regX: 1 equals: 0; 
		"5"	goto: 7; "false"
		"6"	return; "true"
		"7"	subRegY: 2 fromRegX: 1;
		"8"	goto: 4;
		"9"return "stack underflow"
	] 