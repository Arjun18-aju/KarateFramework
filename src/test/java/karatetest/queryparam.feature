Feature: Check query feture


  Scenario: query validation
  When def query = {gender: 'male',status: 'active',id: 3271}
  Given url baseUrl+"/public/v2/users"
  And params query
  When method GET
  Then status 200
  Then def res = response
  Then res.name == 'Gouranga Desai'
  
    Scenario: query count validation
  When def query = {gender: 'male',status: 'active'}
  Given url baseUrl+"/public/v2/users"
  And params query
  When method GET
  Then status 200
  Then def res = response
  Then print res.length
