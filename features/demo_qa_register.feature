Feature: As a site user I should be able to register

  @new_account
  Scenario: I am able to register for a new account
    Given I am on the account page
    When I click register
    Then I should be taken to the register page

  @valid_register
  @high_risk
  Scenario: I should be able to input my details to a form to register
    Given I am on the register page
    And I input a valid username
    And I input a valid email
    When I click to register the account
    Then it should show the correct registration message

  @invalid_register
  Scenario: I should not be able to register if I input an invalid email address

    Given I am on the register page
    And I input an invalid username
    And I input a valid email
    When I click to register the account
    Then it should show the correct registration message
