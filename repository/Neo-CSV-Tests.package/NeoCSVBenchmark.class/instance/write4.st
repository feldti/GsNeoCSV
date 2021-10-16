public
write4 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'write4,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark write4 ]) asString.
	"

	| aStream |

	aStream := GsFile openWriteOnServer: self filename.

	(NeoCSVWriter on: aStream)
		fieldWriter: #raw;
		nextPutAll: data.

	aStream close.
