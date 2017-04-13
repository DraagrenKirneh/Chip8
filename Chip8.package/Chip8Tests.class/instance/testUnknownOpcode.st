tests - errors
testUnknownOpcode

	#(16r0001 16r8008 16r800F 16rE000 16rE0FF 16rF000 16rF0FF) do: [ :op |
		self assertErrorOnOpcode: op
	].