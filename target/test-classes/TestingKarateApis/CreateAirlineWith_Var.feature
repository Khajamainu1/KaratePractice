Feature: Create an airline with variables

Scenario: Create an airline with dynamic data

* def airlineName = 'Sri Lankan Airways'
* def airlineCountry = 'Sri Lanka'

Given url 'https://api.instantwebtools.net/v1/airlines'
And request { "_id": "123", "name": '#(airlineName)', "country": '#(airlineCountry)', "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png", "slogan": "From Sri Lanka", "head_quaters": "Katunayake, Sri Lanka", "website": "www.srilankaaairways.com", "established": "1990" }
    When method post
    Then status 200
   * def response1 =  And print response
    And match response.name == airlineName
    * print response1