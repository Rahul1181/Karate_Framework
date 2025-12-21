Feature: We are the Oauth token

@Oauth
Scenario: Check the Oauth implementation
    Given url baseUrls.userService
    And headers commonHeaders
    And path "public","v2","users"
    When method Get
    Then status 200
    * print "Request Header" + karate.pretty(karate.prevRequest.headers)
    * print "Response Header" + karate.pretty(responseHeaders)