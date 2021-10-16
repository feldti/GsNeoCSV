testing
testDigitGroupSeparator 
	self 
		assert: ((NeoNumberParser on: '123,456') digitGroupSeparator: $,; next) 
		equals: 123456.
	self 
		assert: ((NeoNumberParser on: '123 456 789') digitGroupSeparator: Character space; next) 
		equals: 123456789.
	self 
		assert: ((NeoNumberParser on: '-3.14159 26535 89793 23846') digitGroupSeparator: Character space; next) 
		closeTo: Float pi negated.
	self 
		assert: ((NeoNumberParser on: '2.71828 18284 59045 23536') digitGroupSeparator: Character space; next) 
		closeTo: Float e.
	self 
		assert: ((NeoNumberParser on: '-123''456') digitGroupSeparator: $'; next) 
		equals: -123456.
	self 
		assert: ((NeoNumberParser on: '123_456.25') digitGroupSeparator: $_; next) 
		closeTo: 123456.25.
	self 
		assert: ((NeoNumberParser on: '-123.456,25') digitGroupSeparator: $.; radixPoint: $,; next) 
		closeTo: -123456.25.
