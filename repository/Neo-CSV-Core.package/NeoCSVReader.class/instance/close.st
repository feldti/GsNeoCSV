initialize-release
close 
	readStream ifNotNil: [
		readStream close.
		readStream := charBuffer := nil ]
