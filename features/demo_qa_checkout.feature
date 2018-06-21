Feature: As a site user I want to use the checkout

  @viewcheckout
  Scenario: I want to view my checkout

    Given I am on the homepage
    When I click checkout
    Then it should redirect me to the checkout page

  Scenario: As a first time user, I am able to purchase an item

    Given I have an item in my basket
    When I
    Then it should give me the correct success message

  Scenario: As a member, I am able to purchase an item

    Given I have an item in my basket
    When I click checkout
    Then it should give me the correct success message

  @oneitem
  Scenario: As a user if there is one item in my basket, it should show only one item

    Given I have added one item to my basket
    When I view my basket
    Then there should only be one item to view


  @threeitem
  Scenario: As a user if there is three items in my basket, it should show those items

    Given I have added three items to my basket
    When I view my basket
    Then there should only be three items to view

  Scenario:

    Given
    When
    Then

  Scenario:

    Given
    When
    Then
