emulation
tickTimers

	delayTimer > 0 ifTrue: [ 
		delayTimer := delayTimer - 1	
	].

	soundTimer > 0 ifTrue: [ 
		soundTimer := soundTimer - 1.
		soundTimer = 0 ifTrue: [ self playSound ]
	]