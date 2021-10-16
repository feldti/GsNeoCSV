testing
testWideOptionalQuoted 
	self
		assert: (String streamContents: [ :out |
			(NeoCSVWriter on: out) 
				fieldWriter: #optionalQuoted; 
				nextPut: { 1. 'foo "1" ', (Character codePoint: 16r20AC) asString. true} ])
		equals: ('1,"foo ""1"" ', (Character codePoint: 16r20AC) asString, '",true', String crlf)
