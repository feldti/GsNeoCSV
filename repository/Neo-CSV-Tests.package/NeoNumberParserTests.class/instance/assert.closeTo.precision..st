extensions
assert: actualNumber closeTo: expectedNumber precision: epsilon
	"Tell whether the actualNumber and expectedNumber ARE close to each others with a margin of epsilon."

	^ self
		assert: (self number: actualNumber closeTo: expectedNumber precision: epsilon)
		description: [ self comparingStringBetween: actualNumber and: expectedNumber ]
