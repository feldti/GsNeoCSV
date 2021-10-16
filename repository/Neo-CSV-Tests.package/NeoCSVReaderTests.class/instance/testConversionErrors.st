testing
testConversionErrors 
	self 
		should: [ (NeoCSVReader on: 'a' readStream) addIntegerField; upToEnd ]
		raise: Error.
	self 
		should: [ (NeoCSVReader on: 'a' readStream) addFloatField; upToEnd ]
		raise: Error.
