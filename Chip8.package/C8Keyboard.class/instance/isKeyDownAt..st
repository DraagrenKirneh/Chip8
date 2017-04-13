testing
isKeyDownAt: anIndex

	^ (state bitAt: anIndex + 1) = 1
	