testing
testStrictParsing 
	{
		'foo,1\bar,2\foobar,3' -> [ :reader | reader addField ]. 
		'foo,1\bar,2\foobar,3' -> [ :reader | reader addField; addField; addField ]. 
		'foo,1\bar,2\foobar,3' -> [ :reader | reader recordClass: Dictionary; addFieldAt: #a ]. 
		'foo,1\bar,2\foobar,3' -> [ :reader | reader recordClass: Dictionary; addFieldAt: #a; addFieldAt: #b; addFieldAt: #c ].
		'one\one,two' -> [ :reader | reader ]. 
		'one,two\one' -> [ :reader | reader ].
		'"foo",1\"missing quote,2\"foobar",3' -> [ :reader | reader ].
		'"foo",1\missing quote,"2\"foobar",3' -> [ :reader | reader ].
	} do: [ :specification | | inputString configurator reader |
		inputString := specification key.
		configurator := specification value.
		reader := NeoCSVReader on: inputString withCRs readStream.
		reader beStrict.
		self 
			should: [ 
				configurator value: reader.
				reader upToEnd ] 
			raise: Error ]
