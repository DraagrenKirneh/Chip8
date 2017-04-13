event handling
keyUp: aCharacter
	
	| keyIndex |
		
	keyIndex := keymap indexOf: aCharacter ifAbsent: [ ^ self ].
	state := state bitAt: keyIndex put: 0