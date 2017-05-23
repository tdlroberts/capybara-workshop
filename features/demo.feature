Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Apimation home page
        When I submit signup details
        Then I see Appimation home page

    Scenario: Successful Login
        Given I am on Apimation home page
        When I login
        Then I see project page