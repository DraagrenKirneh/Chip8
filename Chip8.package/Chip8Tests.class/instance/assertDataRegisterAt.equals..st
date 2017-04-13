asserting
assertDataRegisterAt: anIndex equals: aNumber

	self assert: (chip dataRegister at: anIndex + 1) equals: aNumber