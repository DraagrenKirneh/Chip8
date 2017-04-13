loading
loadProgram: aByteArray

	memory replaceFrom: 513 to: 513 + aByteArray size - 1 with: aByteArray.
	