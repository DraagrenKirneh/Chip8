instructions
instructionFxnn

	| masked |
	
	masked := opcode bitAnd: 16rFF.
	
	masked == 16r7 ifTrue: [ " Get Timer | register[x] = delayTimer "
		^ self registerX: delayTimer; incrementPC
	].
	
	masked == 16rA ifTrue: [	" Wait for keypress "
		0 to: 15 do: [ :ix |
			(keyboard isKeyDownAt: ix) ifTrue: [ 
				^ self registerX: ix; incrementPC
			]
		].
		^ self  
	].
		
	masked == 16r15 ifTrue: [ 
		delayTimer := self registerX.
		^ self incrementPC	
	].

	masked == 16r18 ifTrue: [ 
		soundTimer := self registerX.
		^ self incrementPC	
	].

	masked == 16r1E ifTrue: [ 
		self registerF: ((memoryPointer + self registerX) > 16rFFF) asBit.
		memoryPointer := memoryPointer + self registerX.
		^ self incrementPC
	].	
	
	masked == 16r29 ifTrue: [ 
		memoryPointer := self registerX * 16r5.
		^ self incrementPC
	].
	
	masked == 16r33 ifTrue: [ | x |
		x := self registerX. 
		^ self 
			memoryAt: 0 put:  x // 100;
			memoryAt: 1 put: (x // 10) % 10;
			memoryAt: 2 put: (x % 100) % 10;
			incrementPC
	].
	
	masked == 16r55 ifTrue: [ 
		0 to: self opcodeX do: [ :ix | 
			self memoryAt: ix put: (dataRegister at: ix + 1) 
		].
		memoryPointer := memoryPointer + self opcodeX + 1.
		^ self incrementPC
	].
				 
	masked == 16r65 ifTrue: [ 
		0 to: self opcodeX do: [ :ix | 
			dataRegister at: ix + 1 put: (self memoryAt: ix) 
		].
		memoryPointer := memoryPointer + self opcodeX + 1.
		^ self incrementPC
	].
	
	self handleUnknownOpcode.

	