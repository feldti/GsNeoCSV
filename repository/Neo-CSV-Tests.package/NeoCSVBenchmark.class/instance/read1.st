public
read1 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'read1,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark read1 ]) asString.

	"

	| aStream |

	aStream := GsFile openReadOnServer: self filename.

	(NeoCSVReader on: aStream)
			upToEnd.

	aStream close.
