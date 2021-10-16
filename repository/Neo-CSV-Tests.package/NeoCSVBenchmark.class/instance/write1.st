public
write1 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'write1,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark write1 ]) asString.

	"

	| aStream |

	aStream := GsFile openWriteOnServer: self filename.
	(NeoCSVWriter on: aStream)
		nextPutAll: data.

	aStream close
