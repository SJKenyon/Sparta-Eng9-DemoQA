Feature: As a site user I should be able to register

  @new_account
  Scenario: I am able to register for a new account

    Given I am on the account page
    When I click register
    Then I should be taken to the register page

  @valid_register
  Scenario: I should be able to input my details to a form to register

    Given I am on the register page
    And I input a valid username
    And I input a valid email
    When I click to register the account
    Then it should show the correct registration message

  @confirm_account
  Scenario: I am able to confirm my account

    Given I have got email confirmation
    When I click the verify link
    And I create a valid password
    Then it should let me log in
