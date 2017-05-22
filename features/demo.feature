Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I submit signup details: email tdlunlockd@gmail.com, password Parole123 and project name Capybara Automation
        Then I see Apimation home page

    Scenario: Login
        Given I am on Appimation home page
        When I login with email tdlunlockd@gmail.com and password Parole123
        Then I validate project page with email tdlunlockd@gmail.com and project name Capybara Automation