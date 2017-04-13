register
registerX: aNumber

	^ dataRegister at: self opcodeX + 1 put: (aNumber bitAnd: 16rFF)