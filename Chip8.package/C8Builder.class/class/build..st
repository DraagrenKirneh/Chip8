building
build: aBlock

	| builder |
	
	builder := self new.
	aBlock value: builder.
	
	^ builder stream contents