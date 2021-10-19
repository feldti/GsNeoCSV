convenience-gemstone
addGsIntegerField 
	"Add a field for indexable records parsed as Integer"

	self addFieldConverter: [ :string | Integer fromString: string ]
