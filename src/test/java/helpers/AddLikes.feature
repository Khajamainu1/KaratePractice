Feature:Add Likes

Scenario: Add likes
    Given url baseUrl
    And path 'article', slug, 'favourite'
    And request {}
    When method post
    * def likeCount = response.article.favoritesCount
    * print response
