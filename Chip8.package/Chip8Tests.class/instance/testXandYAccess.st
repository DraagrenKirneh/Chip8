tests - math
testXandYAccess
	
	self 
	
		assert: 0 	\\ 8 equals: 0;
		assert: 8 	\\ 8 equals: 0;
		assert: 9 	\\ 8 equals: 1;
		assert: 56 	\\ 8 equals: 0;
		assert: 63 	\\ 8 equals: 7;
		
		assert: 0  	// 8 equals: 0;
		assert: 7  	// 8 equals: 0;
		assert: 8  	// 8 equals: 1;
		assert: 56 	// 8 equals: 7;
		assert: 63 	// 8 equals: 7.
		
		