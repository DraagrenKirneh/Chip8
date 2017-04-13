accessing
primaryColor: aColor

	colorMap at: 1 put: (aColor pixelValueForDepth: 32).
	self changed.