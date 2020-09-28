Feature: Login function
    As a user,
    I want to login to my account,
    So that I can access secure area.

    Scenario Outline: Login
        Given Go to the login page
        When Fill in username: '<user>'
        And  Enter password: '<pw>'
        And Press Login
        Then '<msg>' should appear

        Examples:  
            | user     | pw                   | msg                            |
            | tomsmith | SuperSecretPassword! | You logged into a secure area! |
            | tosmith  | abc                  | Your username is invalid!      |

