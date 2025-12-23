Feature: This scenario covers the POST methoda call and then update the user data

    Background:
        * url baseUrls.userService
        * headers commonHeaders
        * def randomString =
            """
            function(lenOfStr){
            var storeText ="";
            var pattern ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            for(var i=0; i<lenOfStr;i++){
            storeText += pattern.charAt(Math.floor(Math.random() * pattern.length()));
            }
            return storeText;
            }
            """
        * def randomEmail = randomString(10)

    @methodPut
    Scenario: This scenario covers creating new random users

        #POST method is performed
        * def userData = read("classpath:data/user.json")
        * set userData.email = randomEmail + "@gmail.com"
        * print userData
        Given path "public","v2","users"
        And request userData
        When method post
        Then status 201
        And match $.id == "#present"

        # Fetch the user ID fromt the post call response
        * def userId = $.id
        * print userId

        # PUT call method
        * def newUserData =
            """
            {
                "status": "active",
                "name": "Malkin Manoj"
            }
            """
        Given url baseUrls.userService
        And headers commonHeaders
        And path "public","v2","users",userId
        And request newUserData
        When method put
        Then status 200
        And match $.email == userData.email




