private - reading
handleSeparator 
	self readSeparator 
		ifFalse: [ 
			strict 
				ifTrue: [ self error: 'Insufficient fields for CSV input' ] ]
