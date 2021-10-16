initialize-release
initialize 
	super initialize.
	recordClass := Array.
	recordClassIsIndexable := true.
	separator := $,.
	strict := false
