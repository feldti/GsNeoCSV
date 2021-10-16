testing
testSkippingSpecial 
	| reader |
	reader := NeoCSVReader on: 'A,1\B,\,3\,\\F,6' withCRs readStream.
	reader skip: 5.
	self assert: reader next equals: #('F' '6').
	self assert: reader atEnd.
	
	reader := NeoCSVReader on: 'A,1\"\",\,"\"\,\\F,6' withCRs readStream.
	reader skip: 5.
	self assert: reader next equals: #('F' '6').
	self assert: reader atEnd.
