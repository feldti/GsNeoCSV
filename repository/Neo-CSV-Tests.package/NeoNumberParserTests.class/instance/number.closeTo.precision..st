extensions
number: aNumber closeTo: num precision: aPrecision
	"are these two numbers close?"

	num isFloat ifTrue: [ ^ self floatNumber: num closeTo: aNumber asFloat precision: aPrecision ].
	^ [ aNumber = num ] onErrorDo: [ false ]
