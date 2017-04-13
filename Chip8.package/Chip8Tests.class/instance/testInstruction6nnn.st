tests
testInstruction6nnn

	0 to: 15 do: [ :ix |
		self assertDataRegisterAt: ix equals: 0.
		chip doOpcode: 16r6001 + ix + (ix bitShift: 8).
		self assertDataRegisterAt: ix equals: ix + 1
	].