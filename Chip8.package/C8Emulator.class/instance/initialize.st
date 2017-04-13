initialization
initialize

	super initialize.
	
	memory := ByteArray new: 4096 withAll: 0.	
	dataRegister := ByteArray new: 16 withAll: 0.	
	stack := OrderedCollection new: 16.
	
	display := C8BitmapByteGraphics new.
	keyboard := C8Keyboard new.
	
	pc := 16r200.
	opcode := 0.
	memoryPointer := 0.
	
	delayTimer := 0.
	soundTimer := 0.
	
	random := Random new.	
		
	self loadFontSet.
