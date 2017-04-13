tests - keyboard
testKeyboard

	| keyboard |
	
	keyboard := chip keyboard.
	
	0 to: 15 do: [ :ix |
		self deny: (keyboard isKeyDownAt: ix)	
	].

	keyboard keyDown: $1.
	
	0 to: 15 do: [ :ix |
		self assert: (keyboard isKeyDownAt: ix)	equals: ix = 1
	].

	keyboard keyUp: $1.
	
	0 to: 15 do: [ :ix |
		self deny: (keyboard isKeyDownAt: ix)	
	].

