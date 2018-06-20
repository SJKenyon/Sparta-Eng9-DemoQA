Feature: As a site user I should be able to view products
@all_products
  Scenario: I should be able to view all products

    Given I am on the homepage
    When I click on all products
    Then it should display all product categories

  Scenario: I should be able to view products by catagory

    Given I am on the homepage
    When I click on a product catagory
    Then it should show me items relating to that catagory

  Scenario: I should be able to view a single item

    Given I am on the homepage
    When I click on an item
    Then it should show me that specific items page

  Scenario: I should be able to view all products in a list as standard

    Given I am on the homepage
    When I click the all produts link
    Then I should see all the products in a list

  Scenario: I should be able to view all products in a grid

    Given I am viewing all the products
    When I click to view the products in a grid
    Then it should show the products in a grid format

  Scenario: I should be able to view larger images of the products

    Given I am on a specific product page
    When I click on the photo
    Then it should bring up a larger photo

  Scenario: I should be able to add a product to my basket

    Given I am viewing a product
    When I click add to cart
    Then it should add that specific item to my basket

  Scenario: I should be able to be redirected to the homepage when I click the logo

    Given I am not on the homepage
    When I click the demoqa logo
    Then I should be redirected to the homepage

  Scenario:

    Given
    When
    Then
