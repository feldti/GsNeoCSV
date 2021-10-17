baselines
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Neo-CSV-Core';
				package: 'Neo-CSV-Tests' with: [ spec requires: #('Neo-CSV-Core') ];
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('Neo-CSV-Core');
				group: 'tests' with: #('Neo-CSV-Tests') ]
