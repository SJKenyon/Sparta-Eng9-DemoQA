Feature: As a member I should be able to log in

  Scenario: I am able to get to the log in form

    Given I am on the homepage
    When I click my account
    And I click log in
    Then it should take me to the log in page

  Scenario: I am able to log in with valid details

    Given I am on the log in page
    And I input the correct email
    And I input the correct password
    When I click log in
    Then it should redirect me to my profile

  Scenario:

    Given
    When
    Then

  Scenario:

    Given
    When
    Then

  Scenario:

    Given
    When
    Then

  Scenario:

    Given
    When
    Then
