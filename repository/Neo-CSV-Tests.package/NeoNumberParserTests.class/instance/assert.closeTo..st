extensions
assert: actualNumber closeTo: expectedNumber
	"Tell whether the actualNumber and expectedNumber ARE close to each others with a margin of
	 the default precision (see class-side method #defaultPrecisionsForCloseToComparison).
	"
	self assert: actualNumber closeTo: expectedNumber precision: self class defaultPrecisionsForCloseToComparison
