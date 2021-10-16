accessing
skipLine 
	"Skip one (the current) record by reading until end of line.
	This is fast and has no side effects but does not honor quoted newlines."
	
	[ self readAtEndOrEndOfLine ] whileFalse: [ self nextChar ]
