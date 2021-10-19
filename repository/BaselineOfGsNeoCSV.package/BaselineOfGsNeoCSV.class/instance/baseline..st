baselines
baseline: spec 
	<baseline>
	spec
		for: #'gemstone'
		do: [
			"First the prerequisites"
			spec
				baseline: 'PharoCompatibility'	
				with: [ 
					spec
						loads: #('GsPharo-Core');
						repository: 'github://glassdb/PharoCompatibility:master/repository' ];
				yourself.

			"Now the actual delivered packages"
			spec
				package: 'Neo-CSV-Core';
				package: 'Neo-CSV-Tests' with: [ spec requires: #('Neo-CSV-Core') ] ;
				yourself.

			"Now the names for more specific loading"
			spec
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('Neo-CSV-Core');
				group: 'tests' with: #('Neo-CSV-Tests');
				yourself
		]
