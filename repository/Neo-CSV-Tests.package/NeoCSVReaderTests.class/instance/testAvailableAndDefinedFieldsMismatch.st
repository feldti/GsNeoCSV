testing
testAvailableAndDefinedFieldsMismatch 
	| input |
	input := 'foo,1\bar,2\foobar,3' withCRs.
	"if we configure the reader for 1 field, the second one in the input should be ignored"
	self
		assert: ((NeoCSVReader on: input readStream) addField; upToEnd)
		equals: #(('foo')('bar')('foobar')).
	self
		assert: ((NeoCSVReader on: input readStream) 
							recordClass: Dictionary; 
							addFieldAt: #one; 
							upToEnd)
		equals: { 
						{ #one->'foo' } asDictionary. 
						{ #one->'bar' } asDictionary. 
						{ #one->'foobar' } asDictionary }.
	"if we configure the reader for 3 fields, the last one should be nil"
	self
		assert: ((NeoCSVReader on: input readStream) addField; addIntegerField; addField; upToEnd)
		equals: #(('foo' 1 nil)('bar' 2 nil)('foobar' 3 nil)).
	"for dictionaries, it depends on the empty field value"
	self
		assert: ((NeoCSVReader on: input readStream) 
							recordClass: Dictionary; 
							addFieldAt: #one; 
							addIntegerFieldAt: #two; 
							addFieldAt: #three; 
							upToEnd)
		equals: { 
						{ #one->'foo'. #two->1 } asDictionary. 
						{ #one->'bar'. #two->2 } asDictionary. 
						{ #one->'foobar'. #two->3 } asDictionary }.
	self
		assert: ((NeoCSVReader on: input readStream) 
							recordClass: Dictionary;
							emptyFieldValue: #passNil;
							addFieldAt: #one; 
							addIntegerFieldAt: #two; 
							addFieldAt: #three; 
							upToEnd)
		equals: { 
						{ #one->'foo'. #two->1. #three->nil } asDictionary. 
						{ #one->'bar'. #two->2. #three->nil } asDictionary. 
						{ #one->'foobar'. #two->3. #three->nil } asDictionary }.
