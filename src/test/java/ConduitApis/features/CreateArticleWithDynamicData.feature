Feature:Create an article

Background: Define URL
    Given url baseUrl
    * header Content-Type = 'application/json'

* def loginResponse = call read('classpath:helpers/CreateToken.feature') {"email":"#(userEmail)","password":"#(userPassword)"}
    * def token = loginResponse.authToken

* def requestBody = read('classpath:TestData/CreateArticle.json')
Scenario Outline:Successfully create an article
    And header Authorization = 'Token ' +token
    And path 'articles/'

     # Dynamically modifying JSON values using eval
     * eval requestBody.article.title = "<title>"
    #  * eval requestBody.article.description = "<description>"
    #  * eval requestBody.article.body = "<body>"

    And request requestBody
    When method post
    Then status 201

    Examples: 

    |title  |description  |body |
    |S17    |S11          |S9   |
    |S16    |S12          |S10  |

