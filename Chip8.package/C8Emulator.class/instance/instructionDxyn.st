instructions
instructionDxyn

	| x y height |	
	
	x := self registerX.
	y := self registerY.
	height := (opcode bitAnd: 16r000F).
		
	0 to: height - 1 do: [ :ix |
		display drawByte: (self memoryAt: ix) at: x @ (y + ix).
	].

	display setDrawFlag.
	
	self 
		incrementPC;
		registerF: display collision
		


	
	
	
	 
	
