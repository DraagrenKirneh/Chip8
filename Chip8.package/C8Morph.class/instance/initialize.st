initialization
initialize

	super initialize.
	
	colorMap := Bitmap new: 2.
	running := false. 
	ips := 1.
	
	self grayAndBlack