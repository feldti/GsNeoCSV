public
read3 
	"
		| benchmark |
		benchmark := NeoCSVBenchmark new.
		Transcript
			cr ;
			nextPutAll: 'read2,'  ;
			nextPutAll: (Time millisecondsToRun: [ benchmark read2 ]) asString.

	"
