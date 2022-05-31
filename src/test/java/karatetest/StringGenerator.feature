Feature: Create user using post api

  Background: 
    * url baseUrl
    * def random_string =
      """
      	function(s){
      		var text = "";
      		var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
      		for(var i=0; i<s; i++)
      			text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
      			return text;
      	}
      """
    * def randomString = random_string(10)
    * print randomString
    * def reqPayload =
      """
      {
             "name": "Arjun",
             "gender": "male",
             "status": "active"
         }	
      """
    # * requestPayload.email = randomString + "@gmail.com"
    * set reqPayload.email = randomString + "@gmail.com"
    * print reqPayload

  Scenario: creating a user
    Given path '/public/v2/users'
    And request reqPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 201
    Then print response
    
    
    
    
    
    
    
    
    
    
