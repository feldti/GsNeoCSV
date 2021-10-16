public
read0 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'read0,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark read0 ]) asString.

	"

	| aStream |

	aStream := GsFile openReadOnServer: self filename.

	(NeoCSVReader on: aStream)
			upToEnd.

	aStream close.
