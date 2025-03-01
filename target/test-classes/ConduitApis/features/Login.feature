Feature: Login

@login
Scenario: Successful Login
    Given url 'https://conduit-api.bondaracademy.com/api/users/login'
    And request {"user": {"email": "karate.com", "password": "karate@123"}}
    When method post
    Then status 200
    And print response
