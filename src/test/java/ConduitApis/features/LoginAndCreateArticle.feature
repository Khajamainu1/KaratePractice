Feature:Login and create article

Background: 
    Given url 'https://conduit-api.bondaracademy.com/api/'

Scenario: Login
    And path  'users/login'
    And request {"user": {"email": "karate.com", "password": "karate@123"}}
    When method post
    Then status 200
    * def token = response.user.token
    And print token


        And header Authorization = 'Token '+token
        And path 'articles/'
        And request {"article":{"title":"Test123","description":"Test123","body":"tesTest123t","tagList":[]}}
        When method post
        Then status 201
