parsing
parseNumberInteger 
	| number found |
	number := 0.
	found := false.
	self digitsDo: [ :x | 
		found := true.
		number := base * number + x ].
	found 
		ifFalse: [ self error: 'Integer digit expected' ].
	^ number
