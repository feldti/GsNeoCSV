public
runIt
	"
		NeoCSVBenchmark runIt

	"
| benchmark |

Transcript cr ; show: DateAndTime now asString ; cr.


benchmark := NeoCSVBenchmark new.
benchmark cleanup.

Transcript
	cr ;
	nextPutAll: 'write1,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark write1 ]) asString;

	cr ;
	nextPutAll: 'read0,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark read0 ]) asString;

	cr ;
	nextPutAll: 'read1,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark read1 ]) asString;

	cr ;
	nextPutAll: 'write2,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark write2 ]) asString;

	cr ;
	nextPutAll: 'write3,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark write3 ]) asString;

	cr ;
	nextPutAll: 'write4,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark write4 ]) asString;

	cr ;
	nextPutAll: 'write5,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark write5 ]) asString;

	cr ;
	nextPutAll: 'read2,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark read2 ]) asString;


	cr ;
	nextPutAll: 'read3,'  ;
	nextPutAll: (Time millisecondsToRun: [ benchmark read3 ]) asString.
