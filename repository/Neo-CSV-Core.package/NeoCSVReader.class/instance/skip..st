accessing
skip: count 
	"Skip count records by reading until end of line."

	count timesRepeat: [ self skip ]
