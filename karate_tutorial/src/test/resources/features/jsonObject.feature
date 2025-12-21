Feature: This feature covers Complex JSON data extration

    @jsonFiles
    Scenario: Find the details of the json object

        * def menuJsonObject =
            """
            {
                "menu": {
                    "id": 2050,
                    "special": "Gunter Newha",
                    "popup": {
                        "menuitem": [
                            {
                                "status": "New",
                                "onclick": "CreateNewDoc()"
                            },
                            {
                                "status": "Open",
                                "onclick": "OpenDoc()"
                            },
                            {
                                "status": "Close",
                                "onclick": "CloseDoc()"
                            }
                        ]
                    }
                }
            }
            """
        * karate.log("What is in the specials menu: " + menuJsonObject.menu.special)
        * print "What is the status of the resturant: " + karate.pretty(menuJsonObject.menu.popup.menuitem[1].status)