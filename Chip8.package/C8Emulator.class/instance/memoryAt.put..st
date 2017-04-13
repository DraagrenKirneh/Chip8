private -accessing
memoryAt: anIndex put: aNumber

	memory at: memoryPointer + anIndex + 1 put: aNumber