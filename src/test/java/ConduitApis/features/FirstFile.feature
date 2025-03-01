# Feature:Get Api details

# Background: Define URL
#     Given url 'https://conduit-api.bondaracademy.com/api/'
# Scenario: Get the details

#     Given path  'tags'
#     When method Get
#     Then status 200
#     And match response.tags contains 'Test'
#     And match response.tags == '#[]'

    
# Scenario: Get the details 2 Scenario

#     Given path  'tags'
#     When method Get
#     Then status 200
#     And match response.tags contains 'Test'
#     And match response.tags == '#array'

# Scenario: Scenario-3 Check the size of the object

#     Given path  'articles'
#     Given params  {"limit":10 , "offset":0}
#     When method Get
#     Then status 200
#     And match response.articles == '#[10]'
#     And match response.articlesCount == 10