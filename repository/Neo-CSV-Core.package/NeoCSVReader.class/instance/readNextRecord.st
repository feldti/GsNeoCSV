private - reading
readNextRecord 
	| record |
	record := self recordClassNew: fieldCount.
	fieldAccessors
		ifNil: [ self readNextRecordWithoutFieldAccessors: record ]
		ifNotNil: [ self readNextRecordWithFieldAccessors: record ].
	self handleEndOfRecord.
	^ record
