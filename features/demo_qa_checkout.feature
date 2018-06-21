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
  And I click on the checkout button
  Then I should see the subtotal of my basket on the checkout page

@buy_product
  Scenario: I want to purchase the products that are in my basket

    Given that I am on the checkout page
    And there are items in my basket
    When I click the continue button
    And I fill in the form correctly
    Then I should be able to effectuate my purchase

@error_buy_product
  Scenario: I try to buy a product but have input invalid form data

    Given that I am on the checkout form page
    And I input invalid details in the form
    Then I should receive the correct error message

  Scenario:

    Given
    When
    Then
