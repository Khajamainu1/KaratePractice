Feature:Create and Delete article

Background: 
    * def loginResponse = call read('Login.feature')
    * def token = loginResponse.response.user.token

    * def Response = call read('CreateArticle.feature')
    * def deleteData = Response.response.article.slug

    Given url 'https://conduit-api.bondaracademy.com/api/'


Scenario:Successfully delete an article

    And path 'articles/'+deleteData
    And header Authorization = 'Token ' +token
    When method delete
    Then status 204
    
