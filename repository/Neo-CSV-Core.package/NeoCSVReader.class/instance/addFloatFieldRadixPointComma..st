convenience
addFloatFieldRadixPointComma: accessor 
	"Add a field for indexable records parsed as Float using a comma as radix point"

	self 
		addField: accessor 
		converter: [ :string | (NeoNumberParser on: string) radixPoint: $, ; next ]
