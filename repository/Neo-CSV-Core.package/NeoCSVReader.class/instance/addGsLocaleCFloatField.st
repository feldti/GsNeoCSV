convenience-gemstone
addGsLocaleCFloatField 
	"Add a field for indexable records parsed as Float"

	self addFieldConverter: [ :string | Float fromStringLocaleC: string ]
