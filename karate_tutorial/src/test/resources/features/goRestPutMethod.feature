Feature: This feature covers updating the user data using PUT method

    Background:
        * url baseUrls.userService
        * headers commonHeaders

    @method
    Scenario: This scenario covers updating the status of user using PUT method
        * def newUserData =
            """
            {
                "status": "inactive",
                "name": "MarkSore"
            }
            """
        Given path "public","v2","users", "8306996"
        And request newUserData
        When method put
        Then status 200
        And match $.id == 8306996
        And match $.status == "inactive"
        And match $.name == "MarkSore"