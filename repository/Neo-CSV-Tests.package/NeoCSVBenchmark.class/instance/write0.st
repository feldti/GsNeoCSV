public
write0 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'write0,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark write0 ]) asString.

	"

	| aStream |

	aStream := GsFile openWriteOnServer: self filename.
	(NeoCSVWriter on: aStream)
		nextPutAll: data.

	aStream close
