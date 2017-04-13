private - accessing
byteIndexFor: aPoint

	^ ((aPoint x // 8) + ((aPoint y % 32) * 8 )) + 1