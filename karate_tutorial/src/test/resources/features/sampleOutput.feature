Feature: We are covering up the basics of karate framework

    @basics
    Scenario: This scenario covers print statement

        * print 'Welcome to karate tutorial project'
        * karate.log("This checks the log output")

    @basics
    Scenario: This scenario covers decleration and print output statements

        * def costOfBanana = 5
        * print "Cost of 1 dozen of Banana: " + (costOfBanana * 12)

    @jsonFiles
    Scenario: This scenario covers jsonObjects decleration

        * def jsonObject =
            """
            [
            {
            "id" : 1001,
            "firstname": "Raghav",
            "lastname" : "Juyal",
            "age" : 32,
            "city" : "Uttrakhand",
            "profession" : "Dancer"
            }
            {
            "id" : 1002,
            "firstname": "Katrina",
            "lastname" : "Kaif",
            "age" : 35,
            "city" : "Delhi",
            "profession" : "Actor"
            }
            ]
            """
        * print 'Shows the details of the 0th element of the Json array: ' + karate.pretty(jsonObject[0])
