Feature:Create an article

Background: Define URL
    # * def loginResponse = call read('Login.feature')
    # * print loginResponse
    # * def token = loginResponse.response.user.token
    Given url baseUrl
    * header Content-Type = 'application/json'

* def tokenResponse = call read('classpath:helpers/CreateToken.feature') {"email":"karate.com","password":"karate@123"}
    * def token = tokenResponse.authToken
Scenario:Successfully create an article
    And header Authorization = 'Token ' +token
    And path 'articles/'
    And request {"article":{"title":"S9","description":"Test12345","body":"tesTest12345","tagList":[]}}
    When method post
    Then status 201

