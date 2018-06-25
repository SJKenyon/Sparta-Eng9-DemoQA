Feature: As a member I should be able to log in

  @login_feature
  Scenario: I am able to get to the log in form

    Given I am on the homepage
    When I click my account
    And I click log in
    Then it should take me to the log in page

  @login_feature
  Scenario: I am able to log in with valid details

    Given I am on the log in page
    And I input the correct email
    And I input the correct password
    When I click to log in with my details
    Then it should redirect me to my profile

  @login_invalid_password
  Scenario: I should not be able to log in with an incorrect password

    Given I am on the log in page
    And I input the correct email
    And I input the incorrect password
    When I click to log in with my details
    Then it should give me the correct error message


  @login_invalid_email
  Scenario: I should not be able to log in with an invalid email

    Given I am on the log in page
    When I input an invalid email address
    And I input a valid password
    Then I should receive the right error message

  @login_invalid_username
  Scenario: I should not be able to log in with an invalid username

    Given I am on the log in page
    When I input an invalid usernmae
    And I input a valid password
    Then I should receive the username error message

  @logout
  Scenario: I should be able to log out

  Given I am logged in
  When I click to log out
  Then it should redirect me to the home page
