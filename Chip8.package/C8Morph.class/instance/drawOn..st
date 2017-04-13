drawing
drawOn: aCanvas

	| form clipRect destRect |
	
	form := chip display asForm.	
	destRect := self innerBounds translateBy: aCanvas origin.	
	clipRect := aCanvas clipRect translateBy: aCanvas origin.
	
	chip display clearRedraw.	
		
	(WarpBlt toForm: aCanvas form)	
		clipBy: clipRect;	
		sourceForm: form;
		colorMap: colorMap;
		cellSize: 1;
		combinationRule: Form over;
		copyQuad: form boundingBox innerCorners toRect: destRect.
	
	running ifFalse: [ super drawOn: aCanvas ]