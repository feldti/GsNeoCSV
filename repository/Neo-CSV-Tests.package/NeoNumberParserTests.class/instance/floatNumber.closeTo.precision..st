extensions
floatNumber: aNumber closeTo: num precision: aPrecision
 	"Tell whether the receiver and arguments are close from each other given a precision"
	
	num isNumber ifFalse: [ ^ [aNumber = num] onErrorDo: [false]].
	aNumber = 0.0 ifTrue: [^ num abs < aPrecision].
	num = 0 ifTrue: [^aNumber abs < aPrecision].
	^aNumber = num asFloat
		or: [(aNumber - num) abs / (aNumber abs max: num abs) < aPrecision]
