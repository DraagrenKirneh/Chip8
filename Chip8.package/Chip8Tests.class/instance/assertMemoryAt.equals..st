asserting
assertMemoryAt: anIndex equals: aNumber

	self assert: (chip memory at: anIndex + 1) equals: aNumber