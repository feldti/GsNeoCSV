initialize-release
base: integer 
	"Set the base of the numbers that I parse to integer.
	The default is 10"
	
	self assert: (integer between: 2 and: 36) description: 'Number base must be between 2 and 36'.
	base := integer
