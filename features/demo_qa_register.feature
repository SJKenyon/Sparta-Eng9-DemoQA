Feature: As a site user I should be able to register

  Scenario: I am able to register for a new account

    Given I am on the account page
    When I click register
    Then I should be taken to the register page

  Scenario: I should be able to input my details to a form to register

    Given I am on the register page
    And I input a valid username
    And I input a valid email
    When I click register
    Then it should show the correct registration message

  Scenario: I am able to confirm my account

    Given I have got email confirmation
    When I click the verify link
    And I create a valid password
    Then it should let me log in

  Scenario:

    Given
    When
    Then

  Scenario: I should be able to log in with a correct password

    Given I am on the log in page
    And I input the correct email
    And I input the correct password
    When I click log in
    Then it should redirect me to my profile

  Scenario: I should not be able to log in with an incorrect password

    Given I am on the log in page
    And I input the correct email
    And I input the incorrect password
    When I click log in
    Then it should give me the correct error message
