parsing
parseNumberExponent 
	| number negated |
	number := 0.
	(negated := stream peekFor: $-)
		ifFalse: [ stream peekFor: $+ ].
	self digitsDo: [ :x | 
		number := base * number + x ].
	negated
		ifTrue: [ number := number negated ].
	^ base raisedTo: number
