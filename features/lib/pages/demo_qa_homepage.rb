require 'capybara/dsl'

class Homepage

  include Capybara::DSL

  def initialize
    @homepage_url = 'http://store.demoqa.com/'
    @all_products_link = 'All Product'
    @products_category_link = 'Product Category'
    @accessories_category_link = 'Accessories'
    @carousel_link = '#slides'
    @homepage_products = 'group'
    @homepage_products_array = []
    @checkout_button = 'Checkout'
  end

  def check_url
    driver.current_url
  end

  def visit_homepage
    visit(@homepage_url)
  end

  def click_all_products_link
    click_link(@all_products_link)
  end

  def click_category
    find_link(@products_category_link).hover
    click_link(@accessories_category_link)
  end

  def click_individual_item
    find(@carousel_link).click
  end

  def click_random_homepage_item
    all(@homepage_products).each { |product|
      @homepage_products_array.push(product)
    }
  end

  def click_checkout_button
    find_link(@checkout_button).click
  end

  def visit_checkout
    click_link("Checkout")
  end

end #end of class
