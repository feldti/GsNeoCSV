public
read2 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'read2,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark read2 ]) asString.

	"

	| aStream |

	aStream := GsFile openReadOnServer: self filename.

	(NeoCSVReader on: aStream)
		recordClass: NeoCSVTestObject;
		addIntegerField: #x: ;
		addIntegerField: #y: ;
		addIntegerField: #z: ;
		upToEnd.

	aStream close.
