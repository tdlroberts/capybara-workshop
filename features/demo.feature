Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Apimation home page
        When I submit signup details: email tdlunlockd@gmail.com, password Parole123 and project name Capybara Automation

    Scenario: Login
        Given I am on Apimation home page
        When I login with email tdlunlockd@gmail.com and password Parole123
        Then I validate login page with email tdlunlockd@gmail.com and project name Capybara Automation
