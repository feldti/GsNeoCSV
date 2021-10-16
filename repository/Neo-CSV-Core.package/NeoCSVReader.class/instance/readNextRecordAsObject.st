private - reading
readNextRecordAsObject 
	| object |
	object := self recordClassNew.
	fieldAccessors 
		do: [ :each | | rawValue |
			rawValue := self readField.
			"nil field accessors are used to ignore fields"
			each 
				ifNotNil: [  
					rawValue = emptyFieldValue
						ifTrue: [ 
							emptyFieldValue = #passNil 
								ifTrue: [ each value: object value: nil ] ]
						ifFalse: [ each value: object value: rawValue ] ] ]
		separatedBy: [ self handleSeparator ].
	self handleEndOfRecord.
	^ object
