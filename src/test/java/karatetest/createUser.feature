Feature: User creation feature test

  Background: 
    * url baseUrl
    * def reqPayload =
      """
      {
       "name": "Arjun223",
       "email": "arjunskush18@gmail.com",
       "gender": "male",
       "status": "active"
      }
      """

  Scenario: creating a user
    Given path '/public/v2/users'
    And request reqPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 201
    Then print response
  #  Then match $.name == 'Arjun'

  Scenario: creating a user
    Given path '/public/v2/users'
    And request reqPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 422
