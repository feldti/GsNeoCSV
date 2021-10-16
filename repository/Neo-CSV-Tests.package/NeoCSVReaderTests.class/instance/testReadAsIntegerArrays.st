testing
testReadAsIntegerArrays 
	| input |
	input := (String crlf join: #( '100,200,300' '100,200,300' '100,200,300' '')).
	self 
		assert: ((NeoCSVReader on: input readStream) 
					recordClass: Array;
					addIntegerField;
					addIntegerField ;
					addIntegerField;
					upToEnd)
		equals: {
			#(100 200 300) .
			#(100 200 300) .
			#(100 200 300)  }
