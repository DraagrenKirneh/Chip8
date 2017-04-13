instructions
instruction8xyn

	| subcode |
	
	subcode := opcode bitAnd: 16r000F.
	
	subcode == 16rE ifTrue: [ 
		^ self 
			registerF: (self registerX >= 16r80) asBit;
			registerX: (self registerX bitShift: 1) ;
			incrementPC
	].

	subcode < 8 
		ifTrue: [ self incrementPC ]
		ifFalse: [ ^ self handleUnknownOpcode ].
	
	subcode == 0 ifTrue: [ ^ self registerX:  self registerY 									].
	subcode == 1 ifTrue: [ ^ self registerX: (self registerX bitOr:  self registerY)	].
	subcode == 2 ifTrue: [ ^ self registerX: (self registerX bitAnd: self registerY) 	].
	subcode == 3 ifTrue: [ ^ self registerX: (self registerX bitXor: self registerY) 	].
	
	subcode == 4 ifTrue: [ | result |
		result := self registerX + self registerY.
		^ self 
			registerF: (result > 16rFF) asBit;
			registerX: result.
	].
	subcode == 5 ifTrue: [ | result |
		result := self registerX - self registerY.
		^ self 
			registerF: result negative not asBit;
			registerX: result.
	].
	subcode == 6 ifTrue: [ 
		^ self 
			registerF: (self registerX bitAnd: 16r1);
			registerX: (self registerX bitShift: -1)
	].	
	subcode == 7 ifTrue: [ 
		self 
			registerF: (self registerX <= self registerY) asBit;
			registerX: (self registerY - self registerX)
	].
		

