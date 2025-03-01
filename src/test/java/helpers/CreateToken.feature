Feature: Creata Token 

Scenario: Create Token

    Given url baseUrl
   And path '/users/login'
    And request {"user": {"email": "#(email)", "password": "#(password)"}}

    When method post
    Then status 200
    And print response
    * def authToken = response.user.token
