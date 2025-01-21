Feature: Get Airline details

Scenario: Get Airline details by Id


Given url 'https://api.instantwebtools.net/v1/airlines/252d3bca-d9bb-476c-9a97-562d685e235c'
When method Get
Then status 404