accessing
secondaryColor: aColor

	colorMap at: 2 put: (aColor pixelValueForDepth: 32).
	self changed.