convenience-gemstone
addGsIntegerField: accessor 
	"Add a field with accessor parsed as Integer"

	self 
		addField: accessor 
		converter: [ :string | Integer fromString: string ]
