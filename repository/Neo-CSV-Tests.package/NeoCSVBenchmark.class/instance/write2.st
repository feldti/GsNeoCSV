public
write2 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'write2,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark write2 ]) asString.
	"

	| aStream |

	aStream := GsFile openWriteOnServer: self filename.

	(NeoCSVWriter on: aStream)
		addRawFields: #(first second third);
		nextPutAll: data.

	aStream close.
