Feature: Login function
    As a user,
    I want to login to my account,
    So that I can verify login status.

    Background: Open browser
        Given go to the login page

    @valid
    Scenario: Login valid
        When fill in username: 'tomsmith' & password: 'SuperSecretPassword!' and press login
        Then 'You logged into a secure area!' should appear

    @invalid
    Scenario Outline: Login invalid
        When fill in username: '<user>' & password: '<password>' and press login
        Then '<message>' should appear

        Examples:
            | user     | password | message                   |
            | taikhoan | matkhau  | Your username is invalid! |
            | tosmith  | abc      | Your username is invalid! |
            | tomsmith | 1        | Your password is invalid! |
