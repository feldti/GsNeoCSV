private - reading
handleEndOfRecord 
	strict
		ifTrue: [ 
			self readAtEndOrEndOfLine 
				ifFalse: [ self error: 'Excess fields for CSV input' ] ] 
		ifFalse: [ self skipLine ]
