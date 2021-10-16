accessing
skipRecord 
	"Skip one (the current) record by reading fields until end of line.
	This is fast, has no side effects and honors quoted newlines."
	
	[ self readAtEndOrEndOfLine ]
		whileFalse: [
			self skipField.
			self readSeparator ]
