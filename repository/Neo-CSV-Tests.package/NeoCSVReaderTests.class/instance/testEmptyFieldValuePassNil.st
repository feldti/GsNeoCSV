testing
testEmptyFieldValuePassNil 
	| date1 date2 |
	date1 := Date fromStream:  '1900-01-01' readStream usingFormat: #(3 2 1 $- 1 1)  .
	date2 := Date fromStream:  '2000-12-31' readStream usingFormat: #(3 2 1 $- 1 1)  .
	self 
		assert: ((NeoCSVReader on: 
							'date1,date2\2018-01-01,2018-02-01\2018-01-01,\,2018-02-01\\' withCRs readStream) 
						emptyFieldValue: #passNil;
						addFieldConverter: [ :input | input ifNil: [ date1 ] ifNotNil: [ Date fromStream: input readStream usingFormat: #(3 2 1 $- 1 1)  ] ];
						addFieldConverter: [ :input | input ifNil: [ date2 ] ifNotNil: [ Date fromStream: input readStream usingFormat: #(3 2 1 $- 1 1) ] ];
						skipHeader; 
						upToEnd)
		equals: (Array 
							with: (Array with: (Date fromStream:  '2018-01-01' readStream usingFormat: #(3 2 1 $- 1 1))  with:  (Date fromStream: '2018-02-01' readStream usingFormat: #(3 2 1 $- 1 1)))
							with: (Array with:  (Date fromStream: '2018-01-01'  readStream usingFormat: #(3 2 1 $- 1 1))  with: date2)
							with: (Array with: date1 with: (Date fromStream:    '2018-02-01' readStream usingFormat: #(3 2 1 $- 1 1)))
							with: (Array with: date1 with: date2)).
