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
	
	Scenario: Update an incident with short description
	Given enable logs
	And short description is updated with Updated from Cucumber
	When existing incident is updated
	Then the status code is 200
	And response includes the following
	#json Path of the key|		Value
	|result.sys_created_by|admin|
	|result.sys_class_name|incident|