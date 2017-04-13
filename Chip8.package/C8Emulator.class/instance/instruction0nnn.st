instructions
instruction0nnn 

	| mop |
	
	mop := opcode bitAnd: 16rF.
	
	(mop == 16r0000) ifTrue: [ " 00E0 | Display | Clear the screen "
		display clearScreen.
		^ self incrementPC.

	].

	mop = 16r000E ifTrue: [ " 000E | Flow | Return from subroutine "
		pc := stack removeLast + 2.		
		^ self		
	].

	self handleUnknownOpcode.	
	

