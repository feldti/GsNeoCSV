testing
testSkipping 
	| reader |
	reader := NeoCSVReader on: 'A,1\B,2\C,3\D,4\E,5\F,6' withCRs readStream.
	reader skip.
	self assert: reader next equals: #('B' '2').
	reader skip: 2.
	self assert: reader next equals: #('E' '5').
	reader skip.
	self assert: reader atEnd.
	reader skip.
	self assert: reader atEnd.

	reader := NeoCSVReader on: 'LETTER,DIGIT\A,1\B,2\C,3\D,4\E,5\F,6' withCRs readStream.
	reader skipHeader.
	reader skip.
	self assert: reader next equals: #('B' '2').
	reader skip: 2.
	self assert: reader next equals: #('E' '5').
	reader skip.
	self assert: reader atEnd.
