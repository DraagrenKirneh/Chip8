register
registerF: aNumber

	^ dataRegister at: 16 put: (aNumber bitAnd: 16rFF)