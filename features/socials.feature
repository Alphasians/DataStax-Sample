Feature: Linktree alternative

    Scenario: Check root path
        Given I make a GET request to "http://localhost:3000"
        When I receive a response
        Then response should have a status 200
        And response should have a body "{\"name\":\"hello world!\"}"

    Scenario: Get socials
        Given I make a GET request to "http://localhost:3000/socials"
        When I receive a response
        Then response should have a status 200
        And response in item 0 should have object
            """
            {
                "name": "<YourName>",
                "social": "<Twitter>",
                "link": "<Sociallink>"
            }
            """
        And response in item 1 should have object
            """
            {
                "name": "<YourName>",
                "social": "<GitHub>",
                "link": "<Sociallink>"
            }
            """