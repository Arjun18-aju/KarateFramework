Feature: Get Api feature

  @positive
  Scenario: Get call validation
    Given url 'https://gorest.co.in/public/v2/users'
    And path '3274'
    When method GET
    Then status 200
    Then print response
    Then def res = response
    Then def actRes = res.name
    Then match actRes == 'Gopee Sharma DDS'
    
    @Negative
    Scenario: Get call negative validation 
    Given url 'https://gorest.co.in/public/v2/users'
    And path '1'
    When method GET
    Then status 404
    Then def res = response
     Then res.message == 'Resource not found'
