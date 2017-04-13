emulation
doInstruction
	
	| mop |

	opcode := ((memory at: pc + 1) bitShift: 8) + (memory at: pc + 2).
	"opcode printStringHex crLog."
	mop := opcode bitShift: -12.	
		
	mop < 8
		ifTrue: [ self lowInstruction: mop ]
		ifFalse: [ self highInstruction: mop ].
		