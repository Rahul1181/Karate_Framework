Feature: This feature covers creating the user and then deleting the user

    Background:
        Given url baseUrls.userService
        And headers commonHeaders

    @method
    ## Now Delete the user
    Scenario: Create, delete and verify user lifecycle
        # Calling the post method
        * def postResult = call read("classpath:features/goRestPost.feature")
        * def userId = postResult.userId
        And path "public","v2","users",userId
        When method delete
        Then status 204
        * print "UserId is: " + userId

        ## Now check if the user is deleted or not
        Given path "public","v2","users",userId
        When method Get
        Then status 404
