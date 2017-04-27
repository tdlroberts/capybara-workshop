Feature: Login Feature

    Scenario: User logs in
        Given I am on Appimation home page
        When I open Login form
        And I enter tdlunlockd@gmail.com in Login Email
        And I enter Parole123 in Login Password
        And I click on "Login" button
        Then I wait for page to load
        And I validate Login