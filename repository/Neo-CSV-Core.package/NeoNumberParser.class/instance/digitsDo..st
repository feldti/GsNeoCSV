parsing
digitsDo: oneArgumentBlock 
	"Evaluate oneArgumentBlock with integer digit values from the input stream,
	while the stream is not at end and the digit value is within [0, base).
	Skip digit group separator characters."
	
	| character digitValue |
	[ (character := stream peek) notNil ]
		whileTrue: [ 
			character = digitGroupSeparator
				ifFalse: [ 
					((digitValue := character digitValue) >= 0 and: [ digitValue < base ])
						ifTrue: [ oneArgumentBlock value: digitValue ]
						ifFalse: [ ^ self ] ].
			stream next ]
