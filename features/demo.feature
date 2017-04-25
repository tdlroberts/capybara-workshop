Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I click Try Now
        And I enter demo@somethng.com in SignUp email
        And I enter parole112 in SignUp passwords
        And I enter demoProject in SignUp project name
        Then I cancel SignUp