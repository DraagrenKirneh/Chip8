tests
testInstruction7nnn

	0 to: 15 do: [ :ix |
		chip dataRegister at: ix + 1 put: ix + 1.
		chip doOpcode: 16r7000 + ix + (ix bitShift: 8).
		self assertDataRegisterAt: ix equals: ix + ix + 1.
	].