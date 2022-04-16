Feature: Validating Place API's
@Addplace  @Regression
Scenario Outline: Verify if place is being succesfully added using AddPlaceAPI
	Given add place Payload with "<name>"  "<language>"  "<address>"
	When user calls "addPlaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	And verify place_Id created maps to "<name>" using "getPlaceAPI"
	
Examples: 
	|name   | language |address|
	|cris2 | French-IN  |other2|
	
@Deleteplace
Scenario: Verify if delete place functionality is working

	Given DeletePlace Payload
	When user calls "deletePlaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"