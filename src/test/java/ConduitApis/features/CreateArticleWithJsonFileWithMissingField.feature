Feature:Create an article

Background: Define URL
    # * def loginResponse = call read('Login.feature')
    # * print loginResponse
    # * def token = loginResponse.response.user.token
    Given url 'https://conduit-api.bondaracademy.com/api/'
    * header Content-Type = 'application/json'

* def tokenResponse = call read('classpath:helpers/CreateToken.feature') {"email" : "karate.com", "password" : "karate@123"}
* def token = tokenResponse.authToken

Scenario Outline: Verify with missing field <missingField>
    And header Authorization = 'Token ' +token
    And path 'articles/'
    And def requestBody = read('<requestBody>')
    And karate.log('Request body before removal:', requestBody)
    And remove requestBody.article.<missingField>
    And karate.log('Request body after removal:', requestBody)
    And request requestBody
    When method post
    Then status <statusCode>
    And print response
    And match response.errors.<missingField>[0] contains <errorMessage>

    Examples:
    |requestBody                             |statusCode      |missingField         |errorMessage     |
    |classpath:TestData/CreateArticle.json   |422             |body                 |"can't be blank" |
    |classpath:TestData/CreateArticle.json   |422             |description          |"can't be blank" |
    |classpath:TestData/CreateArticle.json   |422             |title                |"can't be blank" |
    


