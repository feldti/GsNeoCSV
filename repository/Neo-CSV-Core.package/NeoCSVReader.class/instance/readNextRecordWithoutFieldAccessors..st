private - reading
readNextRecordWithoutFieldAccessors: record 
	1 to: fieldCount do: [ :each |
		record at: each put: self readField.
		each = fieldCount ifFalse: [ self handleSeparator ] ]
