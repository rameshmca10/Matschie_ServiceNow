Feature: Create New Incident
  
  Scenario: Create a new incident with short description
	Given enable logs
	And short description is added with Added from Cucumber
	When new incident is created
	Then the status code is 201
	And response includes the following
	#json Path of the key|		Value
	|result.sys_created_by|admin|
	|result.sys_class_name|incident|