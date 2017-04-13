event handling
keyboardFocusChange: gotFocus
	
	(running := gotFocus) 
		ifTrue: [ self startStepping ]
		ifFalse: [ self clearKeyboardState; stopStepping ]