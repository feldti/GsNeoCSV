private - reading
skipField 
	self peekQuote
		ifTrue: [
			self readQuote.
			[ self atEnd or: [ self readEndOfQuotedField ] ]
				whileFalse: [ self nextChar ] ]
		ifFalse: [
			[ self atEnd or: [ self peekSeparator or: [ self peekEndOfLine ] ] ]
				whileFalse: [ self nextChar ] ]
