public
write3 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'write3,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark write3 ]) asString.
	"

	| aStream |

	aStream := GsFile openWriteOnServer: self filename.

	(NeoCSVWriter on: aStream)
		addObjectFields: #(first second third);
		nextPutAll: data.

	aStream close.
