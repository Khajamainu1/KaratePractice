Feature: Go Rest APIs

Scenario: Get user details

Given url 'https://gorest.co.in/public/v2/users'
And path '7644271'
When method Get
Then status 200
 And print response
And match response.name =='Sen. Akshainie Singh'

