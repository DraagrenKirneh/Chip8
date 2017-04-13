tests - keyboard
testAllKeysOnOff

	| keyboard |
	
	keyboard := chip keyboard.
	
	keyboard quertyMapping do: [ :char |
		keyboard keyDown: char	
	].

	0 to: 15 do: [ :ix |
		self assert: (keyboard isKeyDownAt: ix)	
	].

	keyboard quertyMapping do: [ :char |
		keyboard keyUp: char	
	].

	0 to: 15 do: [ :ix |
		self deny: (keyboard isKeyDownAt: ix)	
	].