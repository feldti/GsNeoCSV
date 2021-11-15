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
						loads: #('default');
						repository: 'github://GsDevKit/PharoCompatibility:master/repository' ];
				yourself.

			"Now the actual delivered packages"
			spec
				package: 'Neo-CSV-Core' with: [ spec requires: #('PharoCompatibility') ] ;
				package: 'Neo-CSV-Tests' with: [ spec requires: #('Neo-CSV-Core') ] ;
				yourself.

			"Now the names for more specific loading"
			spec
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('Neo-CSV-Core');
				group: 'tests' with: #('Neo-CSV-Tests');
				yourself
		]
