asserting
assertErrorOnOpcode: aNumber

	| pc |
	
	pc := chip programCounter.

	self 
		should: [ chip doOpcode: aNumber ] raise: Error;
		assert: pc equals: chip programCounter