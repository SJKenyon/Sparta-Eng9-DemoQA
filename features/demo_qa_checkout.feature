Feature: As a site user I want to use the checkout

  @view_checkout_error
  Scenario: I go to view my checkout when there is nothing in my basket

    Given I am on the homepage
    When I click checkout
    And I am redirected to the checkout page
    Then I should see the correct error message

  @view_checkout
  Scenario: I want to view my checkout now that there are items in my basket

  Given that I am on an individual product page
  And I click on add to cart
  When I click on the checkout button
  Then I should see the subtotal of my basket on the checkout page

  @buy_product
  Scenario: I want to purchase the products that are in my basket

    Given that I am on the checkout page
    And there is an item in my basket
    When I click the continue button
    And I fill in the form correctly
    Then it should give me the correct success message

  @oneitem
  Scenario: As a user if there is one item in my basket, it should show only one item

    Given I have added one item to my basket
    When I view my basket
    Then there should only be one item to view

  @threeitem
  Scenario: As a user if there is three items in my basket, it should show those items

    Given I have added three seperate items to my basket
    When I view my basket
    Then there should only be three items to view

  @error_shipping_region
  Scenario: If I fail to input a shipping region, I should receive the correct error message

    Given that I am on the checkout form page
    When I neglect to input a shipping region
    Then I should receive the correct error message

  @error_buy_product
  Scenario: I try to buy a product but have input invalid form data

    Given that I am on the checkout form page
    When I input invalid details in the form
    Then I should receive the right error message

  Scenario:

    Given
    When
    Then
