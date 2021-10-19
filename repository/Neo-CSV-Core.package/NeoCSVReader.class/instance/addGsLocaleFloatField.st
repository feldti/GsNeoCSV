convenience-gemstone
addGsLocaleFloatField 
	"Add a field for indexable records parsed as Float"

	self addFieldConverter: [ :string | Float fromString: string ]
