register
registerY: aNumber

	^ dataRegister at: self opcodeY + 1 put: (aNumber bitAnd: 16rFF)