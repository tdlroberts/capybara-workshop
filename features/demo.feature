Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Apimation home page
        When I submit signup details
        Then I see Appimation home page

    Scenario: Enter SignUp details without email
        Given I am on Apimation home page
        When I enter signup details without email

    Scenario: Enter SignUp details without passwords
        Given I am on Apimation home page
        When I enter signup details without passwords

    Scenario: Enter SignUp details with too long email
        Given I am on Apimation home page
        When I enter signup details with too long email

    Scenario: Enter SignUp details with too long project name
        Given I am on Apimation home page
        When I enter signup details with too long project name

    Scenario: Successful Login
        Given I am on Apimation home page
        When I login
        Then I see project page

    Scenario: Failed login empty fields
        Given I am on Apimation home page
        When I submit empty login fields
    
    Scenario: Failed login invalid username and password
        Given I am on Apimation home page
        When I submit invalid login fields