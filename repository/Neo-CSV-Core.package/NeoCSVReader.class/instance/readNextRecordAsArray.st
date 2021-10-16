private - reading
readNextRecordAsArray 


	fieldAccessors ifNotNil: [ 
		self fieldCount: (fieldAccessors count: [ :each | each notNil ]) ].
	^ fieldCount 
		ifNil: [ | record |
			record := self readFirstRecord.
			self fieldCount: record size.
			record ] 
		ifNotNil: [
			self readNextRecord ]
