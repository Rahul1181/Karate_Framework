Feature: This feature covers the testing of the https method

    Background:
        * url baseUrls.userService
        * headers commonHeaders
        * def randomString =
            """
            function(lenOfStr){
                var text ="";
                var pattern ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
                for(var i=0;i<lenOfStr;i++){
                    text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
                    }
                return text;
            }
            
            """
            * def randomEmail = randomString(10)
            * print randomEmail

    @method
    Scenario: This scenario covers the POST method
        * def userData = read("classpath:data/user.json")
        * userData.email = randomEmail + "@gmail.com"
        * print userData
        Given path "public","v2","users"
        And request userData
        When method post
        Then status 201
        And match $.id == "#present"
        And match $.name == "User58"
        And match $.email == userData.email

        

    

