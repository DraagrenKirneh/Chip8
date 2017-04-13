stepping and presenter
stepAt: aTimestamp

	ips timesRepeat: [ chip doInstruction ].
	
	chip tickTimers.
	chip display redraw ifTrue: [ self changed ].