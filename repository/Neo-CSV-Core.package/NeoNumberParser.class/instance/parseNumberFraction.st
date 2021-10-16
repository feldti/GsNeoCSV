parsing
parseNumberFraction 
	| number power |
	number := 0.
	power := 1.0.
	self digitsDo: [ :x | 
		number := base * number + x.
		power := power * base ].
	^ number / power
