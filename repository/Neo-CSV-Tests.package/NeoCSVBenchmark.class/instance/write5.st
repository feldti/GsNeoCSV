public
write5 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'write5,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark write5 ]) asString.
	"

	| aStream |

	aStream := GsFile openWriteOnServer: self filename.

	(NeoCSVWriter on: aStream)
		fieldWriter: #object;
		nextPutAll: data.

	aStream close
