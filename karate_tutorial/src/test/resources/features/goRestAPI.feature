Feature: This scenario covers GoRest API testing

    @gorest
    Scenario: Get user request
    * def userId = 8115615
        Given url baseUrls.userService
        And path "public","v2","users"
        And param id = userId
        When method Get
        Then status 200
        * print 'Request headers:', karate.prevRequest.headers
        * print "Json Object response is: " + karate.pretty(response)
        * def userDataResponse = response[0]
        * karate.log("User data", userDataResponse)
        * def userDataId = userDataResponse.id
        * def userDataName = userDataResponse.name
        * def userDataEmail = userDataResponse.email
        * def userDataGender = userDataResponse.gender
        * match userDataId == 8115615
        * match userDataName == "Elakshi Gowda"
        * match userDataEmail == "gowda_elakshi@green.example"
        * match userDataGender == "male"





