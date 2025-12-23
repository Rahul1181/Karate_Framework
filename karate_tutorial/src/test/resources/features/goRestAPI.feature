Feature: This scenario covers GoRest API testing

    @gorest
    Scenario: Get user request
        * def userQuery = {status: "inactive", gender : "male"}
        Given url baseUrls.userService
        And path "public","v2","users"
        And params userQuery
        When method Get
        Then status 200

        * print 'Request headers:', karate.prevRequest.headers

        # Print raw response (best practice while debugging)
        * print "Json Object response is: " + karate.pretty(response)

        # Extract first object from array
        * def userDataResponse = response[0]

        # Log extracted object
        * karate.log("User data", userDataResponse)

        # Field extraction
        * def userDataId = userDataResponse.id
        * def userDataName = userDataResponse.name
        * def userDataEmail = userDataResponse.email
        * def userDataGender = userDataResponse.gender
        
        # Assertion
        * match userDataId == 8115525
        * match userDataName == "Brajendra Guha CPA"
        * match userDataEmail == "cpa_brajendra_guha@jerde.example"
        * match userDataGender == "male"

    @gorest
    Scenario: Get user array list for the active status users and get the length of the list
        * def userQuery = {status: "active", gender : "female"}
        Given url baseUrls.userService
        And path "public","v2","users"
        And params userQuery
        When method Get
        Then status 200
        * print "Json Object response is: " + karate.pretty(response)
        * def userDataResponse = response
        * karate.log("User data", userDataResponse)
        * def noOfUsers = userDataResponse.length
        * print "No of users in the list: " + noOfUsers
        * match noOfUsers == 10





