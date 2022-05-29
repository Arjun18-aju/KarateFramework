Feature: sample feature test

  Scenario: Get statement scenario
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
