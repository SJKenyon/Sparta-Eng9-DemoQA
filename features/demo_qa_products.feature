Feature: As a site user I should be able to view products

  @all_products
  Scenario: I should be able to view all products
    Given I am on the homepage
    When I hover on all products
    Then it should display all product categories

  @product_categories
  Scenario: I should be able to view products by catagory
    Given I am on the homepage
    When I click on a product category
    Then it should show me items relating to that category

  @single_item
  Scenario: I should be able to view a single item
    Given I am on the homepage
    When I click on an item
    Then it should show me that specific items page

  @product_list
  Scenario: I should be able to view all products in a list as standard
    Given I am on the homepage
    When I click the all products link
    Then I should see all the products in a list

  @product_grid
  Scenario: I should be able to view all products in a grid
    Given I am viewing all the products
    When I click to view the products in a grid
    Then it should show the products in a grid format

  @expand_image
  Scenario: I should be able to view expanded images of the products
    Given I am on a specific product page
    When I click on the photo
    And I click on the arrow to browse more photos
    Then it should bring up an expanded photo

  @logo
  Scenario: I should be able to be redirected to the homepage when I click the logo
    Given I am not on the homepage
    When I click the demoqa logo
    Then I should be redirected to the homepage
