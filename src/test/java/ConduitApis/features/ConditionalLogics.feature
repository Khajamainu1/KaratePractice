Feature: Conditional logocs

Background: Define url

    * def tokenResponse = call read('classpath:helpers/CreateToken.feature') {"email":"#(userEmail)", "password":"#(userPassword)"}
    * def token = tokenResponse.authToken

    Given url baseUrl 
Scenario: Conditional Logics
    And params {limit: 10, offset:0}
    And header Authorization = 'Token ' +token
    And path 'articles'
    And method Get
    * print 'Full Response: ', response
    Then status 200
    * print response
    * def favoriteCount = response.articles[0].favoritesCount
    * def slugResponse = response.articles[0].slug
   * print slugResponse
    
    * if (favoriteCount == 0) karate.call('classpath:helpers/AddLikes.feature', { slug: slugResponse })
    * print response

    And params {limit: 10, offset:0}
    And path 'articles'
    And method Get
    Then status 200
    And match response.articles[0].favoritesCount == 1



