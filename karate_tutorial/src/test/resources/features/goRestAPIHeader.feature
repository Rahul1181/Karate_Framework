Feature: How to send header request in karate

@header
Scenario: This scenario covers passsing the header request  
    Given url baseUrls.userService
    And headers commonHeaders
    And path "public","v2","users"
    When method Get
    Then status 200
    * print "Response Header" + karate.pretty(responseHeaders)
    * print "Request Header" + karate.pretty(karate.prevRequest.headers)